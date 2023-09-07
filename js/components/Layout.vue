<template>
    <main>
        <header>
            <nav
                class="mx-auto border-b border-slate-900 bg-gray-700 font-serif font-bold"
            >
                <RouterLink class="m-2 text-2xl" to="/">Monster DB</RouterLink>
            </nav>
        </header>
        <slot />
    </main>
</template>

<script>
export default {
    name: 'Monster-Layout',
    components: {},
};
</script>
