<template>
    <div class="w-full md:w-fit md:mx-5 rounded bg-slate-600 p-2">
        <div class="m-2">
            <div class="text-center text-2xl font-bold">
                {{ monster.name }}
            </div>
            <div class="flex">
                <div class="text-left w-1/2">
                    <RouterLink
                        v-if="previous"
                        :to="`/monster/${previous.dexId}`"
                        class="bg-slate-700 rounded outline-1 p-2 text-xs"
                    >
                        <ChevronLeftIcon class="h-2 w-2 inline-block" />
                        {{ previous.name }}
                    </RouterLink>
                </div>
                <div class="text-right w-1/2">
                    <RouterLink
                        v-if="next"
                        :to="`/monster/${next.dexId}`"
                        class="bg-slate-700 rounded outline-1 p-2 text-xs"
                    >
                        {{ next.name }}
                        <ChevronRightIcon class="h-2 w-2 inline-block" />
                    </RouterLink>
                </div>
            </div>
        </div>
        <div>
            <img
                class="w-1/2 mx-auto"
                :src="`${monster.illustrationPath}`"
                alt="a pokemon"
            />
        </div>
        <div class="m-2">
            <table class="w-full">
                <tbody class="divide-y-2 divide-dotted text-left">
                    <tr class="hover:bg-slate-700">
                        <th class="w-1/3 py-2">Dex ID</th>
                        <td class="w-2/3 py-2">
                            #{{ String(monster.dexId).padStart(3, '0') }}
                        </td>
                    </tr>
                    <tr class="hover:bg-slate-700">
                        <th class="w-1/3 py-2">
                            {{ `Type${monster.types.length > 1 ? 's' : ''}` }}
                        </th>
                        <td class="w-2/3 py-2">
                            <TypeBadge
                                v-for="type in monster.types"
                                :type="type"
                                class="mr-2"
                                :key="type"
                            />
                        </td>
                    </tr>
                    <tr class="hover:bg-slate-700">
                        <th class="w-1/3 py-2">Height</th>
                        <td class="w-2/3 py-2">
                            {{
                                `${Math.trunc(monster.height / 12)}' ${
                                    monster.height % 12
                                }"`
                            }}
                        </td>
                    </tr>
                    <tr class="hover:bg-slate-700">
                        <th class="w-1/3 py-2">Weight</th>
                        <td class="w-2/3 py-2">{{ monster.weight }} LB</td>
                    </tr>
                    <tr class="hover:bg-slate-700">
                        <th class="w-1/3 py-2">Dex Entry</th>
                        <td class="w-2/3 py-2">
                            {{ monster.description }}
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
</template>

<script setup>
import { ChevronRightIcon, ChevronLeftIcon } from '@heroicons/vue/24/solid';
import TypeBadge from '../TypeBadge.vue';

defineProps({
    monster: Object,
    next: Object,
    previous: Object,
});
</script>
