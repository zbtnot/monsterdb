<template>
    <main>
        <header>
            <nav
                class="mx-auto border-b border-slate-900 bg-gray-700 font-serif font-bold"
            >
                <RouterLink class="m-2 text-2xl" to="/">
                    {{ appTitle }}
                </RouterLink>
                <button
                    class="float-right mr-4 md:hidden"
                    @click="showList = !showList"
                >
                    <Bars3Icon class="h-4 w-4 inline-block" />
                </button>
                <div
                    class="grid transition-[grid-template-rows] duration-200 ease-out md:inline-block"
                    :class="{
                        'grid-rows-[1fr]': showList,
                        'grid-rows-[0fr]': !showList,
                    }"
                >
                    <ul class="overflow-hidden md:overflow-visible md:flex">
                        <li>
                            <RouterLink
                                class="m-2 text-xl font-sans inline-block w-full"
                                to="/"
                            >
                                Monsters
                            </RouterLink>
                        </li>
                        <li>
                            <RouterLink
                                class="m-2 text-xl font-sans inline-block w-full"
                                to="/move/"
                            >
                                Moves
                            </RouterLink>
                        </li>
                    </ul>
                </div>
            </nav>
        </header>
        <slot />
    </main>
</template>

<script setup>
import { storeToRefs } from 'pinia';
import { Bars3Icon } from '@heroicons/vue/24/solid';
import useNavigationStore from '../stores/navigationStore';

const appTitle = import.meta.env.VITE_APP_TITLE;

const navigationStore = useNavigationStore();
const { showList } = storeToRefs(navigationStore);
</script>
