///scrTileBehaviour(currentTile, adj1Tile, adj2Tile, adj3Tile);
var currTile = argument0;
var adj1Tile = argument1;
var adj2Tile = argument2;
var adj3Tile = argument3;

//Check for negatives
if (adj2Tile == -1) var adj2Off = true; else var adj2Off = false;
if (adj3Tile == -1) var adj3Off = true; else var adj3Off = false;

//check if tiles filled
if (global.tilesFilled[currTile] == false) var currTileFree = true; else var currTileFree = false; 
if (global.tilesFilled[adj1Tile] == false) var adj1TileFree = true; else var adj1TileFree = false;

//Check if tiles filled for possible negatives
if (!adj2Off) {
    if (global.tilesFilled[adj2Tile] == false) {
        var adj2TileFree = true; 
    } else var adj2TileFree = false;
} else var adj2TileFree = false;

if (!adj3Off) {
    if (global.tilesFilled[adj3Tile] == false) {
        var adj3TileFree = true; 
    } else var adj3TileFree = false;
} else var adj3TileFree = false;

//check tile values
if (!currTileFree) {
    var currValue = global.tile[currTile].value; 
    var currMerged = global.tile[currTile].merged;
} else {
    var currValue = -1; 
    var currMerged = -1;
}

if (!adj1TileFree) {
    var adj1Value = global.tile[adj1Tile].value; 
    var adj1Merged = global.tile[adj1Tile].merged;
} else {
    var adj1Value = -1; 
    var adj1Merged = -1;
}

//Check if tile values for possible negatives
if (!adj2Off) {
    if (!adj2TileFree) {
        var adj2Value = global.tile[adj2Tile].value; 
        var adj2Merged = global.tile[adj2Tile].merged; 
    } else var adj2Value = -1; 
} else var adj2Value = -1; 

if (!adj3Off) {
    if (!adj3TileFree) {
        var adj3Value = global.tile[adj3Tile].value; 
        var adj3Merged = global.tile[adj3Tile].merged; 
    } else var adj3Value = -1;
} else var adj3Value = -1;

//check if can merge adj1
if (currValue == adj1Value) {
    if (!currMerged && !adj1Merged) var adj1CanMerge = true;
    else var adj1CanMerge = false;
} else var adj1CanMerge = false;

//Check if can merge for possible negatives
if (!adj2TileFree) {
    if (currValue == adj2Value) {
        if (!currMerged && !adj2Merged) var adj2CanMerge = true; 
        else var adj2CanMerge = false;
    } else var adj2CanMerge = false;
} else var adj2CanMerge = false;

if (!adj3TileFree) {
    if (currValue == adj3Value) {
        if (!currMerged && !adj3Merged) var adj3CanMerge = true; 
        else var adj3CanMerge = false;
    } else var adj3CanMerge = false;
} else var adj3CanMerge = false;

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
else if (adj1TileFree && adj2TileFree && adj3TileFree) var adj3Move = true;  
else if (adj1TileFree && adj2TileFree && !adj3TileFree && !adj3CanMerge) var adj2Move = true;  
else if (adj1TileFree && adj2TileFree && !adj3TileFree && adj3CanMerge) var adj3Merge = true;  
else if (adj1TileFree && !adj2TileFree && !adj2CanMerge) var adj1Move = true;  
else if (adj1TileFree && !adj2TileFree && adj2CanMerge) var adj2Merge = true;  
else if (!adj1TileFree && !adj1CanMerge) var currStay = true;  
else if (!adj1TileFree && adj1CanMerge) var adj1Merge = true;  

//Execute the behaviour
if (adj3Move) {
    scrTileMove(currTile, adj3Tile);
} else if (adj2Move) {
    scrTileMove(currTile, adj2Tile);
} else if (adj3Merge) {
    scrTileMerge(currTile, adj3Tile);
} else if (adj1Move) {
    scrTileMove(currTile, adj1Tile);
} else if (adj2Merge) {
    scrTileMerge(currTile, adj2Tile);
} else if (adj1Merge) {
    scrTileMerge(currTile, adj1Tile);
} else if (currStay) {
}

//Reset all variables
currTileFree = -1;
currValue = -1;
currMerged = -1;
adj1TileFree = -1;
adj1Value = -1;
adj1CanMerge = -1;
adj1Merged = -1;
adj2Off = -1;
adj2TileFree = -1;
adj2Value = -1;
adj2CanMerge = -1;
adj2Merged = -1;
adj3Off = -1;
adj3TileFree = -1;
adj3Value = -1;
adj3CanMerge = -1;
adj3Merged = -1;



