module.exports = {
    "env": {
        "browser": true,
        "es2021": true
    },
    "extends": [
        "airbnb-base",
        "plugin:vue/vue3-essential"
    ],
    "overrides": [
        {
            "env": {
                "node": true
            },
            "files": [
                ".eslintrc.{js,cjs}",
            ],
            "parserOptions": {
                "sourceType": "script"
            }
        }
    ],
    "parserOptions": {
        "ecmaVersion": "latest",
        "sourceType": "module"
    },
    "plugins": [
        "vue"
    ],
    "rules": {
        indent: ['error', 4],
        'max-len': ['error', 120],
        'operator-linebreak': ['error', 'after'],
        'no-plusplus': ['error', {'allowForLoopAfterthoughts': true}],
        'object-curly-newline': ['error', {ObjectPattern: {multiline: true}}]
    }
}
