<template>
    <template v-if="error.length !== 0">
        <Banner :message="error" />
    </template>
    <template v-else>
        <div v-if="!loaded">Loading..</div>
        <div v-else class="flex flex-wrap mt-4 px-5">
            <div class="w-full md:w-1/3">
                <StatsCard :move="move" class="mb-5" />
            </div>
            <div class="w-full md:w-2/3">
                <MonsterListCard :monsters="move.monsters" class="mb-5" />
            </div>
        </div>
    </template>
</template>

<script setup>
import { onMounted, ref } from 'vue';
import { useRoute } from 'vue-router';
import axiosClient from '../../axios';
import Banner from '../AppBanner.vue';
import StatsCard from '../move/StatsCard.vue';
import MonsterListCard from '../move/MonsterListCard.vue';

const route = useRoute();
const loaded = ref(false);
const error = ref('');
const move = ref({});

onMounted(async () => {
    try {
        move.value = (await axiosClient.get(`/move/${route.params.id}`)).data;
    } catch (e) {
        error.value = 'There was a problem loading the page. Please try again.';
    } finally {
        loaded.value = true;
        document.title = `${import.meta.env.VITE_APP_TITLE} | ${move.value.name}`;
    }
});
</script>
