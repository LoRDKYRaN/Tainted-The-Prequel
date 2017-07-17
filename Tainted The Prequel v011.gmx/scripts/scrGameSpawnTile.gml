///scrGameSpawnTile();

//check if move made this turn
var moved = objGame.moveExe;

if (moved) {
//Check for active tiles
//Select random tile
do {
    var i = irandom(15); 
} until (objGame.tileInst[i].isActive == false);

objGame.tileInst[i].state = "activate";
freeTiles--;
} else exit;
