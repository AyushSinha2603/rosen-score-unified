import vue from '@vitejs/plugin-vue'
import tailwindcss from '@tailwindcss/vite'
import { defineConfig } from 'vitest/config'

// https://vitejs.dev/config/
export default defineConfig(async () => ({
  plugins: [tailwindcss(), vue()],
  test: {
    deps: {
      interopDefault: true,
    },
  },
}))
