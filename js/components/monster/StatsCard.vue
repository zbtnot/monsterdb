<template>
    <div class="w-fit md:mx-5 rounded bg-slate-600 p-2">
        <div class="m-2 text-center text-2xl font-bold">
            <img class="w-1/2 mx-auto" :src="`${monster.illustrationPath}`" alt="a pokemon" />
            {{ monster.name }}
        </div>
        <div class="m-2">
            <table class="w-full">
                <tbody class="divide-y-2 divide-dotted text-left">
                    <tr class="hover:bg-slate-700">
                        <th class="w-1/2 py-2">Dex ID</th>
                        <td class="w-1/2 py-2">
                            #{{ String(monster.dexId).padStart(3, '0') }}
                        </td>
                    </tr>
                    <tr class="hover:bg-slate-700">
                        <th class="w-1/2 py-2">
                            {{ `Type${monster.types.length > 1 ? 's' : ''}` }}
                        </th>
                        <td class="w-1/2 py-2">
                            <TypeBadge
                                v-for="type in monster.types"
                                :type="type"
                                class="mr-2"
                                :key="type"
                            />
                        </td>
                    </tr>
                    <tr class="hover:bg-slate-700">
                        <th class="w-1/2 py-2">
                            Height
                        </th>
                        <td class="w-1/2 py-2">
                            {{ `${Math.trunc(monster.height / 12)}' ${monster.height % 12}"` }}
                        </td>
                    </tr>
                    <tr class="hover:bg-slate-700">
                        <th class="w-1/2 py-2">
                            Weight
                        </th>
                        <td class="w-1/2 py-2">
                            {{ monster.weight }} LB
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
</template>

<script setup>
import TypeBadge from '../TypeBadge.vue';

defineProps({
    monster: Object,
});
</script>
