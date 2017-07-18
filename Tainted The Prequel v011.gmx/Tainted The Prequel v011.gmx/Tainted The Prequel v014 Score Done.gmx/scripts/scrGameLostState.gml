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
objGame.playerLost = false;
objGame.canMerge = false;
objGame.playerScore = 0;

//reCreate tile pool
var i = 0;
for (i = 0; i < freeTiles; i++) {
    objGame.tileInst[i] = instance_create(room_width + 200, 0, objTile);
    global.tile[i] = -1; //set global tile to -1;
    global.tilesFilled[i] = false;
} //for tile pool close bracket


//Init tiles
scrGameTileInitState();
