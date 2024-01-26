<template>
    <template v-if="!loaded">
        <LoadingIndicator />
    </template>
    <template v-else>
        <Banner v-if="error.length !== 0" :message="error" />
        <div v-else class="flex flex-wrap mt-4 px-5">
            <div class="w-full md:w-1/3">
                <StatsCard :monster="monster" :next="nextMonster" :previous="previousMonster" class="mb-5" />
                <EvolutionCard
                    :evolutions="monster.evolutions"
                    :monster="monster"
                    class="mb-5"
                />
                <SpriteCard :sprite-path="monster.spritePath" class="mb-5" />
                <CryCard :cry-path="monster.cryPath" class="mb-5" />
            </div>
            <div class="w-full md:w-2/3">
                <MoveListCard :moves="monster.moves" class="mb-5" />
                <LocationCard :locations="monster.locations" class="mb-5" />
            </div>
        </div>
    </template>
</template>

<script setup>
import { onMounted, ref } from 'vue';
import { useRoute } from 'vue-router';
import axiosClient from '../../axios';
import Banner from '../AppBanner.vue';
import StatsCard from '../monster/StatsCard.vue';
import MoveListCard from '../monster/MoveListCard.vue';
import EvolutionCard from '../monster/EvolutionCard.vue';
import SpriteCard from '../monster/SpriteCard.vue';
import CryCard from '../monster/CryCard.vue';
import LocationCard from '../monster/LocationCard.vue';
import LoadingIndicator from '../LoadingIndicator.vue';

const route = useRoute();
const loaded = ref(false);
const error = ref('');
const monster = ref({});
const nextMonster = ref(undefined);
const previousMonster = ref(undefined);

onMounted(async () => {
    try {
        const monsterData = (await axiosClient.get(`/monster/${route.params.id}`)).data;
        monster.value = monsterData.monster;
        nextMonster.value = monsterData.next;
        previousMonster.value = monsterData.previous;
    } catch (e) {
        error.value = 'There was a problem loading the page. Please try again.';
    } finally {
        loaded.value = true;
        document.title = `${import.meta.env.VITE_APP_TITLE} | ${
            monster.value.name
        }`;
    }
});
</script>
