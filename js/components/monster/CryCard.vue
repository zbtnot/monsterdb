<template>
    <div class="w-auto md:mx-5 rounded bg-slate-600 p-2">
        <div class="text-2xl">Cry</div>
        <div class="w-auto flex justify-center">
            <audio controls>
                <source :src="cryPath" type="audio/flac" />
            </audio>
        </div>
    </div>
</template>

<script setup>
defineProps({
    cryPath: String,
});
</script>
