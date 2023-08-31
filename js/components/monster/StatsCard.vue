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
                        <th class="w-1/2">Dex ID</th>
                        <td class="w-1/2">
                            #{{ String(monster.dexId).padStart(3, '0') }}
                        </td>
                    </tr>
                    <tr class="hover:bg-slate-700">
                        <th class="w-1/2">
                            {{ `Type${monster.types.length > 1 ? 's' : ''}` }}
                        </th>
                        <td class="w-1/2">
                            <TypeBadge
                                v-for="type in monster.types"
                                :type="type"
                                class="mr-2"
                            />
                        </td>
                    </tr>
                    <!-- todo add base stats -->
                </tbody>
            </table>
        </div>
    </div>
</template>

<script>
import TypeBadge from './TypeBadge.vue';

export default {
    name: 'StatsCard',
    components: { TypeBadge },
    props: ['monster'],
};
</script>
