<template>
    <div class="w-auto md:mx-5 rounded bg-slate-600 p-2">
        <div class="text-2xl">Evolution</div>
        <span v-if="evolutions.length === 0">
            This monster has no known evolutions.
        </span>

        <div v-if="hasMultipleEvolutionaryPaths">
            <div class="w-auto flex justify-center">
                <Tile
                    class="inline-block w-20"
                    :dex-id="monster.dexId"
                    :illustration-path="monster.illustrationPath"
                    :name="monster.name"
                />
            </div>
            <div class="bg-slate-700 w-auto flex justify-center">
                <ChevronDownIcon class="h-6 w-6" />
            </div>
        </div>
        <div
            :class="{
                'flex flex-wrap justify-center': hasMultipleEvolutionaryPaths,
            }"
            v-for="(evolutionList, parentId) in evolutions"
            :key="parentId"
        >
            <div
                class="grid grid-cols-1"
                v-for="(evolution, id) in evolutionList"
                :key="id"
            >
                <div class="w-auto flex justify-center">
                    <Tile
                        v-if="
                            parseInt(parentId) === parseInt(monster.dexId) &&
                            !hasMultipleEvolutionaryPaths
                        "
                        class="inline-block w-24"
                        :dex-id="monster.dexId"
                        :illustration-path="monster.illustrationPath"
                        :name="monster.name"
                    />
                </div>
                <div
                    class="bg-slate-700 w-auto flex justify-center"
                    v-if="!hasMultipleEvolutionaryPaths"
                >
                    <ChevronDownIcon class="h-6 w-6" />
                </div>
                <div class="w-auto flex justify-center">
                    <div class="mx-2 w-28 mb-2">
                        <div class="bg-slate-400 w-auto px-1 mb-2 text-center">
                            {{ resolveRequisiteLabel(evolution.requisite) }}
                        </div>
                        <Tile
                            class="block w-auto m-0"
                            :dex-id="evolution.monster.dexId"
                            :illustration-path="
                                evolution.monster.illustrationPath
                            "
                            :name="evolution.monster.name"
                        />
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>

<script setup>
import { computed } from 'vue';
import { ChevronDownIcon } from '@heroicons/vue/24/solid';
import Tile from '../AppTile.vue';

const props = defineProps({
    evolutions: Object,
    monster: Object,
});

const hasMultipleEvolutionaryPaths = computed(() => {
    const evolutions = Object.values(
        props.evolutions[props.monster.dexId] ?? [],
    );

    return evolutions !== undefined && evolutions.length > 1;
});

const resolveRequisiteLabel = (requisite) => {
    switch (requisite.type) {
    case 'Level Up': return `${requisite.type} (${requisite.contents})`;
    case 'Item':
        return requisite.contents.name;
    default:
        return requisite.type;
    }
};
</script>
