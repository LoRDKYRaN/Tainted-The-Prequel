///scrGameLostState();
//Restart the game
//Delete save file
if (file_exists("Save.sav")) file_delete("Save.sav");

//Destroy all tiles
with (objTile) instance_destroy();

//Reset parameters
objGame.freeTiles = 16;
objGame.lastActive = -1;
objGame.state = "idle";
objGame.gameLoaded = false;
objGame.lose = false;
objGame.moveExe = false;

//reCreate tile pool
var i = 0;
for (i = 0; i < freeTiles; i++) {
    objGame.tileInst[i] = instance_create(room_width + 200, 0, objTile);
    global.tile[i] = -1; //set global tile to -1;
} //for tile pool close bracket

//Set tiles unfilled
var j = 15;
repeat(j) {
    global.tilesFilled[j] = false;
    j--;
}

//Init tiles
scrGameTileInitState();
