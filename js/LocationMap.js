export default class LocationMap {
    constructor(locations) {
        this.locations = locations;
    }

    /**
     * @param locations Array<{height: int, width: int, x: int, y: int}>
     * @returns {LocationMap}
     */
    static fromLocations(locations) {
        const generatedLocations = LocationMap.generateLocations(locations);

        return new LocationMap(generatedLocations);
    }

    /**
     * Expands locations to include all possible coordinates from the location's width and height
     * @param locations Array<{height: int, width: int, x: int, y: int}>
     * @return {{}}
     */
    static generateLocations(locations) {
        const generatedLocations = {};
        locations.forEach((location) => {
            for (let x = 0; x < location.width; x++) {
                for (let y = 0; y < location.height; y++) {
                    if (generatedLocations[location.x + x] === undefined) {
                        generatedLocations[location.x + x] = {};
                    }

                    generatedLocations[location.x + x][location.y + y] = location;
                }
            }
        });

        return generatedLocations;
    }

    find(x, y) {
        if (
            this.locations[x] === undefined ||
            this.locations[x][y] === undefined
        ) {
            return undefined;
        }

        return this.locations[x][y];
    }
}
