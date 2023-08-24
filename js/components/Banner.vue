<template>
    <div class="bg-red-400 p-2">{{ message }}</div>
</template>

<script>
export default {
    name: 'Banner',
    props: ['message'],
}
</script>
