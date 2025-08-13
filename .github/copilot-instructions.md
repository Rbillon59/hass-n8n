# hass-n8n - Home Assistant Addon for n8n

This is a Home Assistant addon that packages n8n (workflow automation tool) as a Docker container with nginx reverse proxy for secure access through Home Assistant's ingress system.

Always reference these instructions first and fallback to search or bash commands only when you encounter unexpected information that does not match the info here.

## Working Effectively

### Prerequisites and Dependencies
- Docker must be installed and running
- Node.js and npm are required for running tests
- Internet access is required for Docker image downloads and package installations

### Bootstrap and Build Process
- Build the Docker image:
  ```bash
  docker build --build-arg NGINX_ALLOWED_IP=all --target hass-n8n-end-to-end-test -t hass-n8n-test .
  ```
  - **NEVER CANCEL**: Build takes 3-5 minutes for dependencies download. NEVER CANCEL. Set timeout to 10+ minutes.
  - May fail in restricted network environments due to Alpine package repository access

### Test Setup and Execution
- Install test dependencies:
  ```bash
  cd tests
  npm install
  npx playwright install
  ```
  - **NEVER CANCEL**: Playwright browser installation takes 2-3 minutes. Set timeout to 10+ minutes.
  - May fail in restricted environments due to browser download restrictions

- Run tests manually (recommended approach):
  ```bash
  cd tests
  ./start-addon.sh  # In one terminal
  npm test          # In another terminal after container is ready
  ```
  - **NEVER CANCEL**: Container startup takes up to 2 minutes. Test suite takes 1-2 minutes.

- Run tests with automated container management:
  ```bash
  cd tests
  ./run-tests.sh              # Headless mode
  ./run-tests.sh --ui         # With Playwright UI
  ./run-tests.sh --debug      # Debug mode
  ./run-tests.sh --headed     # Visible browser
  ```

### CI/CD Validation
- The CI pipeline (`.github/workflows/pull-request-change.yaml`) runs:
  ```bash
  cd tests
  npm i
  npx playwright install
  npm run test:e2e
  ```
- Always test your changes using the same commands before submitting PRs

## Validation Scenarios

### Manual Testing Requirements
After making code changes, ALWAYS run through these validation scenarios:

1. **Container Build and Startup**:
   - Build completes without errors
   - Container starts within 2 minutes
   - All services (nginx, n8n) start successfully

2. **Network Health Validation**:
   - Main application loads on localhost:5000 (test mode)
   - No critical network failures (500+ HTTP errors)
   - All required ports respond (5000, 5678, 5690, 8081)

3. **Core Functionality Testing**:
   - n8n web interface loads completely
   - No JavaScript console errors
   - Authentication system works if configured
   - Basic workflow creation/editing functions

4. **Integration Testing**:
   - Webhook endpoints respond on port 8081
   - Home Assistant ingress simulation works
   - Environment variable configuration loads properly

### Required Test Scenarios
- **ALWAYS** run network health tests after any configuration changes
- **ALWAYS** test container lifecycle (start/stop/restart) after infrastructure changes
- **ALWAYS** verify ingress configuration after nginx.conf modifications
- **ALWAYS** test environment variable parsing after n8n-exports.sh changes

## Build Timing and Expectations

### Expected Durations
- **Docker Build**: 3-5 minutes (first time), 1-2 minutes (cached)
- **Test Dependencies**: 1-2 minutes for npm install, 2-3 minutes for Playwright
- **Container Startup**: 30-120 seconds depending on system
- **Test Execution**: 1-2 minutes for full suite
- **Total Validation**: 5-10 minutes for complete cycle

### Timeout Recommendations
- Docker build commands: Set timeout to 600+ seconds (10+ minutes)
- Playwright install: Set timeout to 600+ seconds (10+ minutes)  
- Container startup: Set timeout to 180+ seconds (3+ minutes)
- Test execution: Set timeout to 300+ seconds (5+ minutes)

## Repository Structure

### Key Configuration Files
- `config.json` - Home Assistant addon configuration
- `Dockerfile` - Multi-stage Docker build (base → test → final)
- `supervisord.conf` - Process management for nginx and n8n
- `nginx.conf` - Reverse proxy configuration with ingress simulation
- `n8n-exports.sh` - Environment variable setup and n8n configuration

### Build Scripts and Entry Points
- `n8n-entrypoint.sh` - n8n startup script
- `nginx-entrypoint.sh` - nginx configuration and startup
- `tests/start-addon.sh` - Test container build and startup
- `tests/playwright.config.ts` - Test configuration

### Test Structure
- `tests/e2e/` - End-to-end test scenarios
- `tests/supervisor/` - Mock Home Assistant supervisor data
- `tests/nginx.tests.conf` - Test-specific nginx configuration

## Port Configuration

### Application Ports
- **5678**: n8n main application (internal)
- **5690**: Home Assistant ingress port (production)
- **5000**: Test ingress port (testing only)
- **8081**: Webhook and API traffic (exposed)

### Network Access Patterns
- Production: HA Ingress → nginx:5690 → n8n:5678
- Testing: Browser → nginx:5000 → n8n:5678
- Webhooks: External → nginx:8081 → n8n:5678

## Environment Variables

### Critical Environment Variables
- `NGINX_ALLOWED_IP`: Controls nginx access (use "all" for testing)
- `N8N_PATH`: URL path prefix for n8n
- `WEBHOOK_URL`: External webhook URL for triggers
- `EXTERNAL_URL`: External URL for OAuth redirects

### Configuration Loading
- Environment variables defined in `env_vars_list` in config.json
- Processed by `n8n-exports.sh` script
- External npm packages installed if `NODE_FUNCTION_ALLOW_EXTERNAL` is set

## Troubleshooting Common Issues

### Build Failures
- **Alpine package errors**: Usually network/firewall restrictions
- **Docker build timeouts**: Increase timeout, check Docker daemon
- **Permission errors**: Ensure scripts have execute permissions

### Test Failures  
- **Container not ready**: Wait longer, check `docker ps` and `curl localhost:5000`
- **Browser dependency errors**: Install system dependencies or use alternative browser
- **Port conflicts**: Stop conflicting services, use different ports

### Runtime Issues
- **n8n not accessible**: Check nginx configuration and ingress setup
- **Webhook failures**: Verify port 8081 accessibility and WEBHOOK_URL setting
- **OAuth issues**: Confirm EXTERNAL_URL is correctly configured

## Development Workflow

### Making Changes
1. **ALWAYS** build and test locally before committing
2. **ALWAYS** run full validation scenarios for your change area
3. **NEVER** skip container startup verification
4. **ALWAYS** test both production and test configurations when modifying nginx

### Code Areas and Validation
- **Dockerfile changes**: Build and test container functionality
- **nginx.conf changes**: Test both ingress ports (5000, 5690) and webhook port (8081)
- **n8n-exports.sh changes**: Verify environment variable parsing and n8n startup
- **supervisord.conf changes**: Test process management and service startup
- **test scripts**: Run full test suite and verify CI compatibility

### Git Workflow
- Feature branches are tested via GitHub Actions
- Pull requests trigger automatic testing
- Releases use multi-architecture Docker builds (amd64, aarch64)

## Common Tasks Reference

### Repository Root Contents
```
.github/              # GitHub Actions workflows and configurations
tests/               # Playwright end-to-end tests
config.json          # Home Assistant addon configuration  
Dockerfile           # Multi-stage Docker build definition
supervisord.conf     # Process supervisor configuration
nginx.conf           # Reverse proxy configuration
n8n-exports.sh       # Environment setup script
n8n-entrypoint.sh    # n8n startup script
nginx-entrypoint.sh  # nginx startup script
```

### Test Package.json Scripts
```json
{
  "test": "npx playwright test",
  "test:e2e": "playwright test", 
  "test:e2e:ui": "playwright test --ui",
  "test:e2e:debug": "playwright test --debug",
  "test:headed": "playwright test --headed",
  "test:with-docker": "./run-tests.sh",
  "start-addon": "./start-addon.sh"
}
```

### Docker Build Targets
- `base`: Core n8n setup with dependencies
- `hass-n8n-end-to-end-test`: Test configuration with test nginx config
- `final`: Production image for Home Assistant

This addon enables n8n workflow automation within Home Assistant with secure ingress access and proper webhook handling for external integrations.