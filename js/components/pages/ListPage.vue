<template>
    <Search @search="(query) => (search = query)" />
    <template v-if="error.length !== 0">
        <Banner :message="error" />
    </template>
    <div class="px-5 mt-4">
        <template v-if="!loaded">Loading..</template>
        <template v-else-if="filteredMonsters.length === 0 && error.length === 0">
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
            />
        </div>
    </div>
</template>

<script>
import axiosClient from '../../axios.js';
import Tile from '../Tile.vue';
import Search from '../Search.vue';
import Banner from '../Banner.vue';

export default {
    components: { Banner, Search, Tile },
    async created() {
        try {
            await this.fetchMonsters();
        } catch (e) {
            this.error =
                'There was a problem loading the page. Please try again.';
        } finally {
            this.loaded = true;
        }
    },
    data() {
        return {
            loaded: false,
            monsters: [],
            search: '',
            error: '',
        };
    },
    computed: {
        filteredMonsters() {
            if (this.search.length === 0) {
                return this.monsters;
            }

            return this.monsters.filter((monster) =>
                monster.name.toLowerCase().includes(this.search.toLowerCase())
            );
        },
    },
    methods: {
        async fetchMonsters() {
            this.monsters = Object.values((await axiosClient.get('/monster')).data);
        },
    },
};
</script>
