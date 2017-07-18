///scrSaveGame();

//Check if save file exists
if file_exists("Save.sav") file_delete("Save.sav");

//Create save file
var saveFile = file_text_open_write("Save.sav");

//Iterate through the tile instances and save
var i;
for (i = 0; i <16; i++) {
    var currTile = objGame.tileInst[i];
    
    //create a ds_map
    var currTileMap = ds_map_create();
    
    //Add values
    ds_map_add(currTileMap, "isActive", currTile.isActive);
    ds_map_add(currTileMap, "x", currTile.x);
    ds_map_add(currTileMap, "y", currTile.y);
    ds_map_add(currTileMap, "value", currTile.value);
    ds_map_add(currTileMap, "image_index", currTile.image_index);
    ds_map_add(currTileMap, "tileSelected", currTile.tileSelected);
    
    //Encode to Json
    var JSONstring = json_encode(currTileMap);
    
    //Write to file
    file_text_write_string(saveFile, JSONstring);
    
    //Write the seperator
    file_text_write_string(saveFile, "|");
    
} //for i close bracket

//Iterate through the objUndo and save
var i;
for (i = 0; i <16; i++) {
    
    //create a ds_map
    var undoMap = ds_map_create();
    
    //Add values
    ds_map_add(undoMap, "isActive", objUndoData.isActive[i]);    
    ds_map_add(undoMap, "xpos", objUndoData.xpos[i]);    
    ds_map_add(undoMap, "ypos", objUndoData.ypos[i]);    
    ds_map_add(undoMap, "value", objUndoData.value[i]);    
    ds_map_add(undoMap, "imageIndex", objUndoData.imageIndex[i]);    
    ds_map_add(undoMap, "tileSelected", objUndoData.tileSelected[i]);    
    /*ds_map_add(undoMap, "Gtile", objUndoData.Gtile[i]);    
    ds_map_add(undoMap, "GtilesFilled", objUndoData.GtilesFilled[i]);    
*/    
    //Encode to Json
    var JSONstring = json_encode(undoMap);
    
    //Write to file
    file_text_write_string(saveFile, JSONstring);
    
    //Write the seperator
    file_text_write_string(saveFile, "|");
    
} //for i close bracket
    
//Iterate through the objGame and save
    //create a ds_map
    var gameMap = ds_map_create();
    
    //Add values
    ds_map_add(gameMap, "freeTiles", objGame.freeTiles);
    ds_map_add(gameMap, "playerScore", objGame.playerScore);
    
    //Encode to Json
    var JSONstring = json_encode(gameMap);
    
    //Write to file
    file_text_write_string(saveFile, JSONstring);
    
    //Write the seperator
    file_text_write_string(saveFile, "|");

//Close file
file_text_close(saveFile);
    
//Destroy map
ds_map_destroy(currTileMap);
ds_map_destroy(undoMap);
ds_map_destroy(gameMap);
