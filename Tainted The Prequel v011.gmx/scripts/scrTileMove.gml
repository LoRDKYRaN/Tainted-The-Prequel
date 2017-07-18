///scrTileMove(currTile, adjXTile);
var currTile = argument0;
var adjXTile = argument1;
var currTileId = global.tile[currTile];

//Assign the new parameters
currTileId.tileSelected = adjXTile;
global.tile[adjXTile] = currTileId.id;
global.tilesFilled[adjXTile] = true;
currTileId.x = objGame.tileX[adjXTile];
currTileId.y = objGame.tileY[adjXTile];

//Clear old parameters
//Update parameters
global.tile[currTile] = -1;
global.tilesFilled[currTile] = false;

//set something moved
objGame.moveExe = true;
