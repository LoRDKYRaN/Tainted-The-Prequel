//If none
//Create tiles
var m;
genTiles = 2;

for (m = 0; m < genTiles; m++) {
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
            
            //add to score
            scrAddScore(value);
    } //with obj tile close bracket
    freeTiles--;
} //for genTiles activate close bracket

//Reset State
tileInit = true;
state = "idle";
