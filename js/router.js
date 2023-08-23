import { createRouter, createWebHistory } from 'vue-router';
import ListPage from './components/pages/ListPage.vue';

const router = createRouter({
    history: createWebHistory(import.meta.env.BASE_URL),
    routes: [
        {
            path: '/',
            name: 'listPage',
            component: ListPage,
        },
    ],
});
export default router;
