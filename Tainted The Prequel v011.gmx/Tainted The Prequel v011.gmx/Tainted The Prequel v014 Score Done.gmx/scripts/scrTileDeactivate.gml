///scrTileDeactivate(oldTile, currTileId);
var deacTile = argument0;
var currTileId = argument1;

//Update parameters - global
global.tile[deacTile] = -1;
global.tilesFilled[deacTile] = false;

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
