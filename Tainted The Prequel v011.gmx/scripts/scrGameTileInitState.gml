//If none
//Create tiles
var i;
genTiles = 2;

for (i = 0; i < genTiles; i++) {
    var j = lastActive + 1;
    objGame.tileInst[j].state = "activate";
    lastActive = j;
    freeTiles--;
} //for genTiles activate close bracket

//Reset State
tileInit = true;
state = "idle";
