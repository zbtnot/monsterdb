<template>
    <input
        type="text"
        class="w-full bg-gray-800 p-2 font-sans text-slate-300 focus:outline-none"
        placeholder="Search for a monster.."
        autofocus
        @input="$emit('search', $event.target.value)"
    />
</template>

<script>
export default {
    name: 'Search',
};
</script>
