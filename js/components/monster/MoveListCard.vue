<template>
    <div class="rounded bg-slate-600 p-2">
        <div class="text-2xl">Moves</div>
        <div class="overflow-x-scroll md:overflow-x-visible">
            <table class="w-full">
                <thead class="text-left sticky top-0 bg-slate-700">
                    <tr>
                        <th
                            v-for="(column, id) in columns"
                            class="pr-6 md:pr-0"
                            :key="id"
                        >
                            <button
                                v-if="column.sort !== false"
                                class="w-full flex flex-col md:flex-row"
                                @click="sortMoves(column.sort)"
                            >
                                <span>
                                    <abbr
                                        v-if="column.abbr.length > 0"
                                        :title="column.abbr"
                                    >
                                        {{ column.name }}
                                    </abbr>
                                    <template v-else>
                                        {{ column.name }}
                                    </template>
                                </span>
                                <span
                                    class="md:flex md:w-full md:justify-end md:pr-2"
                                >
                                    <ChevronUpDownIcon
                                        v-if="sortedBy !== column.sort"
                                        class="h-4 w-4 mt-1.5 inline-block"
                                    />
                                    <ChevronUpIcon
                                        v-else-if="sortAsc"
                                        class="h-3 w-3 mt-1.5 inline-block"
                                    />
                                    <ChevronDownIcon
                                        v-else
                                        class="h-3 w-3 mt-1.5 inline-block"
                                    />
                                </span>
                            </button>
                            <template v-else>
                                {{ column.name }}
                            </template>
                        </th>
                    </tr>
                </thead>
                <tbody class="divide-y-2 divide-dotted">
                    <tr
                        class="hover:bg-slate-700"
                        v-for="(move, id) in movesList"
                        :key="move.name + id"
                    >
                        <td class="pr-6 py-2">
                            <router-link :to="`/move/${move.id}`">
                                {{ move.name }}
                                <ArrowTopRightOnSquareIcon class="h-4 w-4 mb-1 inline-block" />
                            </router-link>
                        </td>
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
                        <td class="pr-6 py-2" v-if="!hideRequisite">
                            {{ move.requisite.type }} ({{
                                move.requisite.contents
                            }})
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
</template>

<script setup>
import { ref, onMounted } from 'vue';
import {
    ChevronUpDownIcon,
    ChevronUpIcon,
    ChevronDownIcon,
    ArrowTopRightOnSquareIcon,
} from '@heroicons/vue/24/solid';
import TypeBadge from '../TypeBadge.vue';

const props = defineProps({
    moves: Array,
    hideRequisite: { type: Boolean, default: false },
});

const movesList = ref([]);
const sortedBy = ref(null);
const sortAsc = ref(true);

onMounted(() => {
    movesList.value = [...props.moves];
});

const columns = [
    { name: 'Name', abbr: '', sort: 'name' },
    { name: 'Type', abbr: '', sort: 'type' },
    { name: 'Power', abbr: '', sort: 'power' },
    { name: 'PP', abbr: 'Power Points', sort: 'pp' },
    { name: 'Accuracy', abbr: '', sort: 'accuracy' },
];
if (!props.hideRequisite) {
    const requisiteColumn = { name: 'Learned By', abbr: '', sort: false };
    columns.push(requisiteColumn);
}

const sortMoves = (name) => {
    if (sortedBy.value !== name) {
        sortAsc.value = true;
    } else {
        sortAsc.value = !sortAsc.value;
    }
    sortedBy.value = name;

    const sort = (a, b) => {
        const aValue = a[sortedBy.value];
        const bValue = b[sortedBy.value];

        if (sortAsc.value) {
            return aValue > bValue ? 1 : -1;
        }

        return aValue < bValue ? 1 : -1;
    };

    movesList.value.sort(sort);
};
</script>
