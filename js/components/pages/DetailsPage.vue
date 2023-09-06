<template>
    <template v-if="!loaded">Loading..</template>
    <template v-else>
        <Banner v-if="error.length !== 0" :message="error" />
        <div v-else class="flex flex-wrap mt-4 px-5">
            <div class="w-full md:w-1/3">
                <StatsCard :monster="monster" class="mb-5" />
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
            </div>
        </div>
    </template>
</template>

<script>
import axiosClient from '../../axios.js';
import Banner from '../Banner.vue';
import StatsCard from '../monster/StatsCard.vue';
import MoveListCard from '../monster/MoveListCard.vue';
import EvolutionCard from '../monster/EvolutionCard.vue';
import SpriteCard from '../monster/SpriteCard.vue';
import CryCard from '../monster/CryCard.vue';

export default {
    components: {
        CryCard,
        SpriteCard,
        EvolutionCard,
        MoveListCard,
        StatsCard,
        Banner,
    },
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
            monster: {
                dexId: 0,
                moves: [],
                evolutions: [],
                spritePath: '',
                cryPath: '',
            },
        };
    },
};
</script>
