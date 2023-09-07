<template>
    <router-link
        :to="`/monster/${dexId}`"
        class="m-2 rounded border-2 border-slate-400 bg-slate-600 hover:cursor-pointer hover:bg-slate-700"
        :class="{ 'animate-pulse': !loaded }"
    >
        <div :class="{ hidden: !loaded }">
            <img
                v-if="loaded"
                :src="illustration"
                class="mt-2"
                alt="an illustration of a pokemon"
            />
            <div class="bg-slate-800 text-center">
                {{ name }}
            </div>
        </div>
    </router-link>
</template>

<script setup>
import { onMounted, ref } from 'vue';
import axios from 'axios';

let props = defineProps({
    name: String,
    dexId: Number,
    illustrationPath: String,
});

let loaded = ref(false);
let illustration = ref('');

onMounted(async () => {
    const illustrationRaw = await axios.get(props.illustrationPath, {
        responseType: 'arraybuffer',
    });
    const illustrationBytes = new Uint8Array(illustrationRaw.data);
    const base64reducer = (data, byte) => data + String.fromCharCode(byte);
    illustration.value = 'data:image/png;base64, ' + btoa(illustrationBytes.reduce(base64reducer, ''));
    loaded.value = true;
});
</script>
