///scrGameSpawnTile();

//check if move made this turn
var moved = objGame.moveExe;

if (moved) {
//Check for active tiles
//Select random tile
do {
    var i = irandom(15); 
} until (objGame.tileInst[i].isActive == false);

with (objGame.tileInst[i]) {
    ///scrTileActivateState();
    //Activate
        isActive = true;
        
        //Select random tile
        do {
            var i = irandom(15); 
        } until (global.tilesFilled[i] = false);
    
        tileSelected = i;
        global.tile[i] = id;
        global.tilesFilled[i] = true;
        
        //Update parameters
        x = objGame.tileX[i];
        y = objGame.tileY[i];
        
        //Set value
        var j = choose(1,2);
        value = j;
        image_index = value;
        
        state = "idle";
} //with tile close bracket
freeTiles--;
}
//CHeck if lost
scrGameLoseCheck();


