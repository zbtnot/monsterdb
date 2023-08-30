<template>
    <div class="inline text-xs">
        <span :class="`rounded p-1 ${typeColor}`">{{ type }}</span>
    </div>
</template>

<script>
export default {
    name: 'TypeBadge',
    props: ['type'],
    data() {
        let typeColor = '';
        switch (this.type) {
            case 'Normal':
                typeColor = 'bg-gray-400';
                break;
            case 'Fighting':
                typeColor = 'bg-red-900';
                break;
            case 'Flying':
                typeColor = 'bg-indigo-400';
                break;
            case 'Poison':
                typeColor = 'bg-violet-500';
                break;
            case 'Ground':
                typeColor = 'bg-amber-700';
                break;
            case 'Rock':
                typeColor = 'bg-orange-950';
                break;
            case 'Bug':
                typeColor = 'bg-green-400';
                break;
            case 'Fire':
                typeColor = 'bg-red-700';
                break;
            case 'Water':
                typeColor = 'bg-sky-400';
                break;
            case 'Grass':
                typeColor = 'bg-green-700';
                break;
            case 'Electric':
                typeColor = 'bg-yellow-500';
                break;
            case 'Psychic':
                typeColor = 'bg-purple-700';
                break;
            case 'Ice':
                typeColor = 'bg-cyan-700';
                break;
            case 'Dragon':
                typeColor = 'bg-indigo-900';
                break;
        }

        return {
            typeColor,
        };
    },
};
</script>
