import { createRouter, createWebHistory } from 'vue-router';
import MonsterListPage from './components/pages/MonsterListPage.vue';
import MonsterDetailsPage from './components/pages/MonsterDetailsPage.vue';
import MoveListPage from './components/pages/MoveListPage.vue';
import MoveDetailsPage from './components/pages/MoveDetailsPage.vue';

const router = createRouter({
    history: createWebHistory(import.meta.env.BASE_URL),
    routes: [
        {
            path: '/',
            name: 'listPage',
            component: MonsterListPage,
        },
        {
            path: '/monster/:id',
            name: 'detailsPage',
            component: MonsterDetailsPage,
        },
        {
            path: '/move',
            name: 'moveListPage',
            component: MoveListPage,
        },
        {
            path: '/move/:id',
            name: 'moveDetailsPage',
            component: MoveDetailsPage,
        },
    ],
});
export default router;
