<template>
    <div class="rounded bg-slate-600 p-2">
        <div class="text-2xl">Moves</div>
        <div class="overflow-x-scroll md:overflow-x-visible">
            <table class="w-full">
                <thead class="text-left sticky top-0 bg-slate-700">
                    <tr>
                        <th class="pr-6 md:pr-0">Name</th>
                        <th class="pr-6 md:pr-0">Type</th>
                        <th class="pr-6 md:pr-0">Power</th>
                        <th class="pr-6 md:pr-0">
                            <abbr title="Power Points">PP</abbr>
                        </th>
                        <th class="pr-6 md:pr-0">Accuracy</th>
                        <th class="pr-6 md:pr-0">Learned By</th>
                    </tr>
                </thead>
                <tbody class="divide-y-2 divide-dotted">
                    <tr class="hover:bg-slate-700" v-for="(move, id) in moves" :key="id">
                        <td class="pr-6 py-2">{{ move.name }}</td>
                        <td class="pr-6 py-2">
                            <TypeBadge :type="move.type" />
                        </td>
                        <td class="pr-6 py-2">
                            {{ move.power ? move.power : '-' }}
                        </td>
                        <td class="pr-6 py-2">{{ move.pp }}</td>
                        <td class="pr-6 py-2">
                            {{ move.accuracy ? `${move.accuracy}%` : '-' }}
                        </td>
                        <td class="pr-6 py-2">
                            {{ move.moveRequisite.requisiteType }} ({{
                                move.moveRequisite.description
                            }})
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
</template>

<script>
import TypeBadge from './TypeBadge.vue';

export default {
    name: 'MoveListCard',
    components: { TypeBadge },
    props: ['moves'],
};
</script>
