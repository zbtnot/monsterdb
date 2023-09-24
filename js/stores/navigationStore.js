import { defineStore } from 'pinia';
import { ref } from 'vue';

const useNavigationStore = defineStore('navigation', () => {
    const showList = ref(false);

    return { showList };
});

export default useNavigationStore;
