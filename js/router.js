import { createRouter, createWebHistory } from 'vue-router';
import ListPage from './components/pages/ListPage.vue';
import DetailsPage from './components/pages/DetailsPage.vue';

const router = createRouter({
    history: createWebHistory(import.meta.env.BASE_URL),
    routes: [
        {
            path: '/',
            name: 'listPage',
            component: ListPage,
        },
        {
            path: '/monster/:id',
            name: 'detailsPage',
            component: DetailsPage,
        },
    ],
});
export default router;
