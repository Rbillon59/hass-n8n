import { test, expect } from '@playwright/test';
import { readFileSync } from 'fs';
import { join } from 'path';

// Regressed twice (b0ba6d5, a7556fe) before the CORS breakage was understood.
const nginxConf = readFileSync(join(__dirname, '..', '..', 'nginx.conf'), 'utf8');

function serverBlock(listenPort: number): string {
  const start = nginxConf.indexOf(`listen ${listenPort};`);
  expect(start, `no server block listening on ${listenPort}`).toBeGreaterThan(-1);

  const next = nginxConf.slice(start).search(/\n\s{4}server \{/);
  return next === -1 ? nginxConf.slice(start) : nginxConf.slice(start, start + next);
}

test.describe('nginx Origin handling', () => {
  test('webhook port forwards the browser Origin verbatim', () => {
    const block = serverBlock(8081);

    expect(block).toContain('proxy_set_header Origin $http_origin;');
    expect(block).not.toMatch(/proxy_set_header Origin \$scheme:\/\/\$(host|http_host);/);
  });

  test('ingress port derives Origin and X-Forwarded-Host from the same variable', () => {
    const block = serverBlock(5690);

    const origin = block.match(/proxy_set_header Origin \$scheme:\/\/(\$\w+);/)?.[1];
    const forwardedHost = block.match(/proxy_set_header X-Forwarded-Host (\$\w+);/)?.[1];

    expect(origin).toBeDefined();
    expect(forwardedHost).toBe(origin);
  });
});
