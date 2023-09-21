<template>
    <div class="w-full rounded bg-slate-600 p-2">
        <div class="text-2xl">Learned By</div>
        <div class="flex flex-row flex-wrap justify-center gap-x-2 gap-y-1">
            <Tile
                class="flex-none h-36 w-28"
                v-for="monster in monsters"
                :dex-id="monster.dexId"
                :name="monster.name"
                :illustration-path="monster.illustrationPath"
                :key="monster.dexId"
            />
            <span v-if="monsters.length === 0">This move is not learned by any monster.</span>
        </div>
    </div>
</template>

<script setup>
import Tile from '../AppTile.vue';

defineProps({
    monsters: Array,
});
</script>
