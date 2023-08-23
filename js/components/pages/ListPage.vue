<template>
    <div class="px-5 mt-4">
        <template v-if="!loaded">Loading..</template>
        <template v-else-if="monsters.length === 0">
            No monsters found.
        </template>
        <div
            v-else
            class="flex flex-row flex-wrap justify-center gap-x-2 gap-y-1"
        >
            <Tile
                class="flex-none h-36 w-28"
                v-for="monster in monsters"
                :dex-id="monster.dexId"
                :name="monster.name"
                :illustration-path="monster.illustrationPath"
            />
        </div>
    </div>
</template>

<script>
import axiosClient from '../../axios.js';
import Tile from '../Tile.vue';

export default {
    components: { Tile },
    async created() {
        try {
            this.monsters = (await axiosClient.get('/monster')).data;
        } catch (e) {
            // TODO have an error banner or something
        } finally {
            this.loaded = true;
        }
    },
    data() {
        return {
            loaded: false,
            monsters: [],
        };
    },
};
</script>
