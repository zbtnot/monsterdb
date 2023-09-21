<template>
    <template v-if="error.length !== 0">
        <Banner :message="error" />
    </template>
    <template v-else>
        <div v-if="!loaded">Loading..</div>
        <div v-else class="flex flex-wrap mt-4 px-5">
            <MoveListCard class="w-full mb-5" :moves="moves" hide-requisite />
        </div>
    </template>
</template>

<script setup>
import { onMounted, ref } from 'vue';
import axiosClient from '../../axios';
import MoveListCard from '../monster/MoveListCard.vue';
import Banner from '../AppBanner.vue';

const loaded = ref(false);
const error = ref('');
const moves = ref([]);

const fetchMoves = async () => {
    moves.value = Object.values((await axiosClient.get('/move')).data);
};

onMounted(async () => {
    try {
        loaded.value = false;
        await fetchMoves();
    } catch (e) {
        error.value = 'There was a problem loading the page. Please try again.';
    } finally {
        loaded.value = true;
        document.title = `${import.meta.env.VITE_APP_TITLE} | Moves`;
    }
});
</script>
