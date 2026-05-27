import { defineConfig } from 'astro/config';

export default defineConfig({
  site: 'https://thewhychain.apps.mlh.one',
  build: {
    format: 'directory',
  },
  server: {
    port: 4321,
    host: true,
  },
});
