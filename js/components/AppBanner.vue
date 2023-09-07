<template>
    <div class="bg-red-400 p-2">{{ message }}</div>
</template>

<script setup>
defineProps({
    message: String,
});
</script>
