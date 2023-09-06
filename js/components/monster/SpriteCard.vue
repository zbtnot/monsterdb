<template>
    <div class="w-auto md:mx-5 rounded bg-slate-600 p-2">
        <div class="text-2xl">Sprite</div>
        <div class="w-auto flex justify-center">
            <img class="rounded" :src="spritePath" alt="a sprite of a pokemon" />
        </div>
    </div>
</template>

<style scoped>
    img {
        width: 120px;
        height: 120px;
        image-rendering: pixelated;
    }
</style>

<script setup>
    const props = defineProps({
        spritePath: String
    });
</script>
