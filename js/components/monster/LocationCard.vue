<template>
    <div class="rounded bg-slate-600 p-2">
        <div class="text-2xl">Locations</div>
        <span v-if="locations.length === 0">
            There are no known locations for this monster.
        </span>
        <div v-else class="relative" @mousemove="coordinator">
            <img
                alt="an image of the map"
                class="w-full h-auto"
                src="/assets/map.png"
                ref="map"
            />
            <span
                class="absolute text-xl left-0 top-0 inline-block w-full bg-white text-black pl-2 opacity-80"
            >
                {{ selectedLocation }}
            </span>
            <div
                class="absolute bg-red-500 opacity-80 animate-pulse"
                v-for="(location, id) in locations"
                :key="id"
                :style="getMonsterLocationStyleString(location)"
            ></div>
        </div>
    </div>
</template>

<style scoped>
img {
    image-rendering: pixelated;
}
</style>

<script setup>
import { onMounted, onUnmounted, ref } from 'vue';
import LocationMap from '../../LocationMap';
import axiosClient from '../../axios';

defineProps({
    locations: {
        type: Array,
        required: true,
    },
});

const selectedLocation = ref('');
const map = ref(null);
const coordinateScale = ref({ x: 1, y: 1 });
let locationMap = new LocationMap({});

/**
 * @param {HTMLImageElement} image
 * @return {{width: number, height: number}}
 */
const calculatePixelScale = (image) => {
    const { width, height, naturalWidth, naturalHeight } = image;

    return {
        width: width / naturalWidth,
        height: height / naturalHeight,
    };
};

/**
 * @param {{x: number, y: number, width: number, height: number}} location
 * @return {String}
 */
const getMonsterLocationStyleString = (location) => `
    left: ${location.x * coordinateScale.value.x}px;
    top: ${location.y * coordinateScale.value.y}px;
    width: ${location.width * coordinateScale.value.x}px;
    height: ${location.height * coordinateScale.value.y}px;
`;

const mapObserver = new ResizeObserver(() => {
    if (!map.value) {
        return;
    }

    const { width, height } = calculatePixelScale(map.value);
    coordinateScale.value.x = width;
    coordinateScale.value.y = height;
});
onMounted(async () => {
    const locations = (await axiosClient.get('/location')).data;
    locationMap = LocationMap.fromLocations(locations);

    if (map.value) {
        mapObserver.observe(map.value);
    }
});

onUnmounted(() => {
    mapObserver.disconnect();
});

/**
 * Handles if the user hovers over a point on the map
 * @param {MouseEvent} event
 */
const coordinator = (event) => {
    const { clientX, clientY } = event;
    const { left, top } = map.value.getBoundingClientRect();

    // the position of the mouse relative to the map image
    const x = clientX - left;
    const y = clientY - top;

    // the position of the mouse relative to the native resolution of the image
    const pixelScale = calculatePixelScale(map.value);
    const normalizedPoint = {
        x: Math.floor(x / pixelScale.width),
        y: Math.floor(y / pixelScale.height),
    };

    const location = locationMap.find(normalizedPoint.x, normalizedPoint.y);
    if (location) {
        selectedLocation.value = location.name;
    } else {
        selectedLocation.value = '';
    }
};
</script>
