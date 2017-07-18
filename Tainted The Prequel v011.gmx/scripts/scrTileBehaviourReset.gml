///scrTileBehaviourReset();
//Reset parameters
//Reset merged tiles
var i;
for (i = 0; i < 16; i++) {
    if (global.tile[i] != -1) {
        global.tile[i].merged = false;
    }
} //for i close bracket

//set something moved
objGame.moveExe = false;
objGame.playerLost = false;
