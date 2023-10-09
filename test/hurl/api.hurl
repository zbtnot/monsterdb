GET {{host}}/api/monster
[QueryStringParams]
count: 1
HTTP 200
[Asserts]
header "Content-Type" == "application/json"
jsonpath "$.1.dexId" isInteger
jsonpath "$.1.illustrationPath" isString
jsonpath "$.1.name" isString
jsonpath "$.1.height" exists
jsonpath "$.1.weight" exists
jsonpath "$.1.description" isString

GET {{host}}/api/monster/1
HTTP 200
[Asserts]
header "Content-Type" == "application/json"
jsonpath "$.monster.types" exists
jsonpath "$.monster.illustrationPath" isString
jsonpath "$.monster.spritePath" isString
jsonpath "$.monster.cryPath" isString
jsonpath "$.monster.moves" exists
jsonpath "$.monster.evolutions" exists
jsonpath "$.monster.locations" exists
jsonpath "$.monster.dexId" isInteger
jsonpath "$.monster.name" isString
jsonpath "$.monster.height" exists
jsonpath "$.monster.weight" exists
jsonpath "$.monster.description" isString

GET {{host}}/api/move
[QueryStringParams]
count: 1
HTTP 200
[Asserts]
header "Content-Type" == "application/json"
jsonpath "$" count == 1
jsonpath "$[0].id" isInteger
jsonpath "$[0].name" isString
jsonpath "$[0].pp" isInteger
jsonpath "$[0].power" isInteger
jsonpath "$[0].accuracy" isInteger
jsonpath "$[0].type" isString
jsonpath "$[0].requisite" exists

GET {{host}}/api/move/1
HTTP 200
[Asserts]
header "Content-Type" == "application/json"
jsonpath "$.animations[0].path" isString
jsonpath "$.animations[0].mimeType" isString
jsonpath "$.monsters" exists
jsonpath "$.id" isInteger
jsonpath "$.name" isString
jsonpath "$.pp" isInteger
jsonpath "$.power" isInteger
jsonpath "$.accuracy" isInteger
jsonpath "$.type" isString
jsonpath "$.requisite" exists

GET {{host}}/api/location
[QueryStringParams]
count: 1
HTTP 200
[Asserts]
header "Content-Type" == "application/json"
jsonpath "$[0].name" isString
jsonpath "$[0].x" isInteger
jsonpath "$[0].y" isInteger
jsonpath "$[0].width" isInteger
jsonpath "$[0].height" isInteger

