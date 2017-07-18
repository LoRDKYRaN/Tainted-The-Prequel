///scrTileMerge(mergeTile);
var currTile = argument0;
var adjXTile = argument1;
var currTileId = global.tile[currTile];

//Update values
global.tile[adjXTile].value++;
global.tile[adjXTile].image_index++;
global.tile[adjXTile].merged = true;

//Update parameters - global
global.tile[currTile] = -1;
global.tilesFilled[currTile] = false;

//add to score
scrAddScore(global.tile[adjXTile].value);

//Update parameters - tile
currTileId.isActive = false;
currTileId.x = room_width + 200;
currTileId.y = 0;
currTileId.value = 0;
currTileId.image_index = 0;
currTileId.canMove = false;
currTileId.canMerge = false;
currTileId.activate = false;
currTileId.tileSelected = -1;
currTileId.image_speed = 0;
currTileId.state = "idle";

//Update free tiles
objGame.freeTiles++;

//set something moved
objGame.moveExe = true;
