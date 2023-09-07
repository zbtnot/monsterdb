import { defineConfig } from 'vite';
import vue from '@vitejs/plugin-vue';
import eslint from 'vite-plugin-eslint';

// https://vitejs.dev/config/
export default defineConfig({
    build: {
        manifest: false,
        modulePreload: {
            polyfill: false,
        },
        rollupOptions: {
            input: ['js/main.js'],
            output: {
                entryFileNames: '[name].min.js',
                assetFileNames: '[name].min.[ext]',
            },
        },
        minify: true,
        sourcemap: true,
        copyPublicDir: false,
        cssCodeSplit: false,
        outDir: 'public/dist',
        assetsDir: '.',
    },
    plugins: [vue(), eslint()],
});
