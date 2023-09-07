<template>
    <router-link
        :to="`/monster/${dexId}`"
        class="m-2 rounded border-2 border-slate-400 bg-slate-600 hover:cursor-pointer hover:bg-slate-700"
    >
        <div :class="{ hidden: !loaded }">
            <img
                :src="illustrationPath"
                class="mt-2"
                alt="an illustration of a pokemon"
                @load="imgLoaded"
            />
            <div class="bg-slate-800 text-center">
                {{ name }}
            </div>
        </div>
    </router-link>
</template>

<script setup>
import { ref } from 'vue';

defineProps({
    name: String,
    dexId: Number,
    illustrationPath: String,
});

const loaded = ref(false);
const imgLoaded = () => {
    loaded.value = true;
};
</script>
