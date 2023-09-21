<template>
    <template v-if="error.length !== 0">
        <Banner :message="error" />
    </template>
    <template v-else>
        <Search @search="(query) => (search = query)" />
        <div class="px-5 mt-4">
            <template v-if="!loaded">Loading..</template>
            <template
                v-else-if="filteredMonsters.length === 0 && error.length === 0"
            >
                No monsters found.
            </template>
            <div
                v-else
                class="flex flex-row flex-wrap justify-center gap-x-2 gap-y-1"
            >
                <Tile
                    class="flex-none h-36 w-28"
                    v-for="monster in filteredMonsters"
                    :dex-id="monster.dexId"
                    :name="monster.name"
                    :illustration-path="monster.illustrationPath"
                    :key="monster.dexId"
                />
            </div>
        </div>
    </template>
</template>

<script setup>
import { computed, ref } from 'vue';
import axiosClient from '../../axios';
import Tile from '../AppTile.vue';
import Search from '../AppSearch.vue';
import Banner from '../AppBanner.vue';

let loaded;
const monsters = ref([]);
const search = ref('');
const error = ref('');

const filteredMonsters = computed(() => {
    if (search.value.length === 0) {
        return monsters.value;
    }

    return monsters.value.filter(
        (monster) => monster.name.toLowerCase().includes(search.value.toLowerCase()),
    );
});

const fetchMonsters = async () => {
    monsters.value = Object.values((await axiosClient.get('/monster')).data);
};

try {
    await fetchMonsters();
} catch (e) {
    error.value = 'There was a problem loading the page. Please try again.';
} finally {
    loaded = true;
    document.title = `${import.meta.env.VITE_APP_TITLE} | Monsters`;
}
</script>
