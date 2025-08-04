# Playwright E2E Tests for hass-n8n

This directory contains end-to-end tests for the hass-n8n Docker container using Playwright.

## Setup

The tests are already configured with all necessary dependencies:

- `@playwright/test` - Playwright testing framework
- `@types/node` - TypeScript type definitions for Node.js

## Test Files

- `e2e/simple-network-health.spec.ts` - Basic network health checks (recommended for manual container management)
- `e2e/network-health.spec.ts` - Advanced network monitoring tests
- `e2e/docker-integration.spec.ts` - Full Docker lifecycle management tests

## Running Tests

### Option 1: Manual Container Management (Recommended)

1. **Build and start the Docker container manually:**
   ```bash
   # From the project root
   docker build -t hass-n8n-test .
   docker run --rm -d --name hass-n8n-test -p 5000:5000 -p 5678:5678 -p 5690:5690 -p 8081:8081 hass-n8n-test
   ```

2. **Run the tests in a separate terminal:**
   ```bash
   cd tests
   npm test
   # or
   npx playwright test
   ```

### Option 2: Automated Container Management

Use the provided script that handles Docker container lifecycle:

```bash
cd tests
./run-tests.sh              # Run tests in headless mode
./run-tests.sh --ui         # Run with Playwright UI
./run-tests.sh --debug      # Run in debug mode
./run-tests.sh --headed     # Run with browser head (visible)
```

## Test Scripts

Available npm scripts:

```bash
npm run test:e2e           # Run all tests
npm run test:e2e:ui        # Run with Playwright UI
npm run test:e2e:debug     # Run in debug mode
```

## What the Tests Check

1. **Main Page Loading**: Verifies localhost:5000 loads successfully
2. **Network Requests**: Monitors all network requests for failures
3. **Port Accessibility**: Tests all exposed ports (5000, 5678, 5690, 8081)
4. **Console Errors**: Checks for JavaScript console errors
5. **Response Times**: Ensures reasonable loading performance

## Test Configuration

The tests are configured to:
- Use Chromium browser by default
- Wait for network idle before assertions
- Capture traces on retry for debugging
- Test against `localhost:5000` (main application port)
- Allow 2 minutes timeout for Docker container startup

## Troubleshooting

### Container Not Ready
If tests fail with connection errors, ensure:
1. Docker container is running: `docker ps`
2. Port 5000 is accessible: `curl http://localhost:5000`
3. No port conflicts with other services

### Browser Dependencies
If you get browser dependency errors:
```bash
sudo apt-get install libnspr4 libnss3 libatk1.0-0 libatk-bridge2.0-0 libcups2 libxkbcommon0 libatspi2.0-0 libxcomposite1 libxdamage1 libxfixes3 libxrandr2 libgbm1 libcairo2 libpango-1.0-0
```

### Test Results
Test results and traces are saved to:
- `test-results/` - Test artifacts and screenshots
- `playwright-report/` - HTML test reports

View the HTML report:
```bash
npx playwright show-report
```
