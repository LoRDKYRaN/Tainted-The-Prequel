///scrTileBehaviourAlt(currentTile, adj1Tile, adj2Tile, adj3Tile);
var currTile = argument0;
var adj1Tile = argument1;
var adj2Tile = argument2;
var adj3Tile = argument3;

//Setup current tile
if (global.tilesFilled[currTile] == false) exit; 
else {
    var currTileFree = false;
    var currValue = global.tile[currTile].value;
    var currMerged = global.tile[currTile].merged;
} //if currTile filled close bracket

//Setup adj1Tile
if (global.tilesFilled[adj1Tile] == false) {
    var adj1TileFree = true;
} else {
    var adj1TileFree = false;
    var adj1Value = global.tile[adj1Tile].value;
    var adj1Merged = global.tile[adj1Tile].merged;
        if ((currValue == adj1Value) && !currMerged && !adj1Merged)  {
            var adj1CanMerge = true; 
        } else var adj1CanMerge = false;
} //if currTile filled close bracket

//Setup adj2Tile
if (adj2Tile != -1) {
    var adj2Set = true;
    if (global.tilesFilled[adj2Tile] == false) {
        var adj2TileFree = true;
    } else {
        var adj2TileFree = false;
        var adj2Value = global.tile[adj2Tile].value;
        var adj2Merged = global.tile[adj2Tile].merged;
            if ((currValue == adj2Value)  && !currMerged && !adj2Merged) {
                var adj2CanMerge = true; 
            } else var adj2CanMerge = false;
    } //if currTile filled close bracket
} else var adj2Set = false;

//Setup adj3Tile
if (adj3Tile != -1) {
    var adj3Set = true;
    if (global.tilesFilled[adj3Tile] == false) {
        var adj3TileFree = true;
    } else {
        var adj3TileFree = false;
        var adj3Value = global.tile[adj3Tile].value;
        var adj3Merged = global.tile[adj3Tile].merged;
            if ((currValue == adj3Value) && !currMerged && !adj3Merged) {
                var adj3CanMerge = true; 
            } else var adj3CanMerge = false;
    } //if currTile filled close bracket
} else var adj3Set = false;
    
//Check which tile behaviour to run
//Reset all 
var adj3Move = false;
var adj2Move = false;
var adj3Merge = false;
var adj1Move = false;
var adj2Merge = false;
var currStay = false;
var adj1Merge = false;

//Check which to activate
if (currTileFree) exit;
else if (adj1TileFree) {
        if (adj2Set) {
            if (adj2TileFree) {
                if (adj3Set) {
                    if (adj3TileFree) {
                       scrTileMove(currTile, adj3Tile); 
                       exit; 
                    } //if adj3TileFree close bracket
                    else {
                        if (adj3CanMerge) {
                            scrTileMerge(currTile, adj3Tile);
                            exit;
                        } //if adj3CanMerge close bracket
                        else {
                            scrTileMove(currTile, adj2Tile);
                            exit;
                        } //if !adj3CanMerge close bracket
                    } //if !adj3TileFree close bracket
                } //if adj3Set close bracket 
                scrTileMove(currTile, adj2Tile);
                exit;
            } //if adj2TileFree close bracket
            else {
                if (adj2CanMerge) {
                    scrTileMerge(currTile, adj2Tile);
                    exit;
                } //if adj2CanMerge close bracket
                else {
                    scrTileMove(currTile, adj1Tile);
                    exit;
                } //if !adj2CanMerge close bracket
            } //if !adj2TileFree close bracket
        } //if adj2Set close bracket
        scrTileMove(currTile, adj1Tile);
        exit;
} //if adj1TileFree close bracket
else {
    if (adj1CanMerge) {
        scrTileMerge(currTile, adj1Tile);
        exit;
} //if adj1CanMerge close bracket
else exit;
} //if !adj1TileFree close bracket



