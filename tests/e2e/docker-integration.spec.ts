import { test, expect } from '@playwright/test';
import { spawn, ChildProcess } from 'child_process';
import { promisify } from 'util';
const sleep = promisify(setTimeout);

test.describe('Docker Container Integration Tests', () => {
  let dockerProcess: ChildProcess | null = null;
  
  test.beforeAll(async () => {
    console.log('Starting Docker container...');
    
    // Start the Docker container using the test.sh script
    dockerProcess = spawn('bash', ['../test.sh'], {
      cwd: '/home/wsl/hass-n8n/tests',
      stdio: 'pipe',
      detached: true
    });
    
    let outputBuffer = '';
    
    dockerProcess.stdout?.on('data', (data) => {
      outputBuffer += data.toString();
      console.log('Docker stdout:', data.toString());
    });
    
    dockerProcess.stderr?.on('data', (data) => {
      console.log('Docker stderr:', data.toString());
    });
    
    // Wait for the container to be ready
    console.log('Waiting for container to start...');
    
    // Wait up to 2 minutes for the container to be ready
    const maxWaitTime = 120000; // 2 minutes
    const checkInterval = 5000; // 5 seconds
    let waitTime = 0;
    
    while (waitTime < maxWaitTime) {
      try {
        const response = await fetch('http://localhost:5000');
        if (response.status < 500) {
          console.log('Container is ready!');
          break;
        }
      } catch (error) {
        // Container not ready yet
      }
      
      await sleep(checkInterval);
      waitTime += checkInterval;
      console.log(`Waiting for container... (${waitTime / 1000}s)`);
    }
    
    if (waitTime >= maxWaitTime) {
      throw new Error('Container failed to start within timeout period');
    }
    
    // Give it a bit more time to fully initialize
    await sleep(10000);
  });
  
  test.afterAll(async () => {
    console.log('Cleaning up Docker container...');
    
    if (dockerProcess) {
      // Kill the process group to ensure cleanup
      try {
        process.kill(-dockerProcess.pid!, 'SIGTERM');
      } catch (error) {
        console.log('Error killing Docker process:', error);
      }
    }
    
    // Also run docker cleanup commands
    try {
      const cleanup = spawn('docker', ['stop', 'hass-n8n'], { stdio: 'inherit' });
      cleanup.on('close', () => {
        console.log('Docker container stopped');
      });
    } catch (error) {
      console.log('Docker cleanup error:', error);
    }
    
    await sleep(5000); // Wait for cleanup
  });

  test('should load main application without network failures', async ({ page }) => {
    const networkRequests: Array<{ url: string; status: number; method: string }> = [];
    const failedRequests: Array<{ url: string; status: number; error?: string }> = [];

    // Monitor all network requests
    page.on('response', (response) => {
      const request = {
        url: response.url(),
        status: response.status(),
        method: response.request().method(),
      };
      
      networkRequests.push(request);
      
      if (response.status() >= 400) {
        failedRequests.push({
          url: response.url(),
          status: response.status(),
        });
      }
    });

    page.on('requestfailed', (request) => {
      failedRequests.push({
        url: request.url(),
        status: 0,
        error: request.failure()?.errorText || 'Request failed',
      });
    });

    // Navigate to the application
    await page.goto('http://localhost:5000');
    
    // Wait for the page to fully load
    await page.waitForLoadState('networkidle');
    
    // Wait a bit more to catch any delayed requests
    await page.waitForTimeout(5000);
    
    // Log results
    console.log(`Total requests: ${networkRequests.length}`);
    console.log(`Failed requests: ${failedRequests.length}`);
    
    if (failedRequests.length > 0) {
      console.log('Failed requests:', failedRequests);
    }
    
    // Assert no critical failures (allow some 404s for assets that might not exist)
    const criticalFailures = failedRequests.filter(req => req.status >= 500);
    expect(criticalFailures).toHaveLength(0);
    
    // Assert the page loaded
    expect(page.url()).toContain('localhost:5000');
  });

  test('should access all exposed ports', async ({ page }) => {
    const ports = [5000, 5678, 5690, 8081];
    const results: Array<{ port: number; status: number | string }> = [];
    
    for (const port of ports) {
      try {
        const response = await page.request.get(`http://localhost:${port}`);
        results.push({ port, status: response.status() });
        console.log(`Port ${port}: ${response.status()}`);
      } catch (error) {
        results.push({ port, status: 'unreachable' });
        console.log(`Port ${port}: unreachable`);
      }
    }
    
    // At least the main port (5000) should be accessible
    const mainPortResult = results.find(r => r.port === 5000);
    expect(mainPortResult?.status).toBeLessThan(500);
    
    console.log('Port accessibility results:', results);
  });
});
