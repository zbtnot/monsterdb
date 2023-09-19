<template>
    <div class="w-auto md:mx-5 rounded bg-slate-600 p-2">
        <div class="m-2 text-center text-2xl font-bold">
            <video muted autoplay loop class="w-full">
                <source :src="move.animationPath" type="video/webm" />
            </video>
            {{ move.name }}
        </div>
        <div class="m-2">
            <table class="w-full">
                <tbody class="divide-y-2 divide-dotted text-left">
                    <tr class="hover:bg-slate-700">
                        <th class="w-1/2 py-2">Type</th>
                        <td class="w-1/2 py-2">
                            <TypeBadge :type="move.type" class="mr-2" />
                        </td>
                    </tr>
                    <tr class="hover:bg-slate-700">
                        <th class="w-1/2 py-2">Power</th>
                        <td class="w-1/2 py-2">{{ move.power }}</td>
                    </tr>
                    <tr class="hover:bg-slate-700">
                        <th class="w-1/2 py-2"><abbr title="Power Points">PP</abbr></th>
                        <td class="w-1/2 py-2">
                            {{ move.pp }}
                        </td>
                    </tr>
                    <tr class="hover:bg-slate-700">
                        <th class="w-1/2 py-2">Accuracy</th>
                        <td class="w-1/2 py-2">{{ move.accuracy }}</td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
</template>

<style scoped>
video {
    image-rendering: pixelated;
}
</style>

<script setup>
import TypeBadge from '../TypeBadge.vue';

defineProps({
    move: Object,
});
</script>
