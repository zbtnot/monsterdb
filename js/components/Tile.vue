<template>
    <div
        class="mb-2 ml-2 mr-2 mt-2 rounded border-2 border-slate-400 bg-slate-600 hover:cursor-pointer hover:bg-slate-700"
    >
        <img
            class="mt-2"
            :src="illustrationPath"
            alt="an illustration of a pokemon"
        />
        <div class="bg-slate-800 text-center">
            {{ name }}
        </div>
    </div>
</template>

<script>
export default {
    name: 'Tile',
    props: ['name', 'dexId', 'illustrationPath'],
};
</script>
