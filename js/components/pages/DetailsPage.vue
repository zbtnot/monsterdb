<template>
    <template v-if="!loaded">Loading..</template>
    <template v-else>
        <Banner v-if="error.length !== 0" :message="error" />
        <div v-else class="flex flex-wrap mt-4 px-5">
            <div class="w-full md:w-1/3 mb-5">
                <StatsCard :monster="monster" />
            </div>
            <div class="w-full md:w-2/3">
                <MoveList :moves="monster.moves" />
            </div>
        </div>
    </template>
</template>

<script>
import axiosClient from '../../axios.js';
import Banner from '../Banner.vue';
import StatsCard from '../monster/StatsCard.vue';
import MoveList from '../monster/MoveList.vue';

export default {
    components: { MoveList, StatsCard, Banner },
    async created() {
        try {
            this.monster = (
                await axiosClient.get(`/monster/${this.$route.params.id}`)
            ).data;
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
            error: '',
            monster: null,
        };
    },
};
</script>
