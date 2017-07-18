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
/*
//Iterate through the global.tile and save
    //create a ds_map
    var GtileMap = ds_map_create();
    
    //Add values
    ds_map_add(GtileMap, "0", global.tile[0]);
    ds_map_add(GtileMap, "1", global.tile[1]);
    ds_map_add(GtileMap, "2", global.tile[2]);
    ds_map_add(GtileMap, "3", global.tile[3]);
    ds_map_add(GtileMap, "4", global.tile[4]);
    ds_map_add(GtileMap, "5", global.tile[5]);
    ds_map_add(GtileMap, "6", global.tile[6]);
    ds_map_add(GtileMap, "7", global.tile[7]);
    ds_map_add(GtileMap, "8", global.tile[8]);
    ds_map_add(GtileMap, "9", global.tile[9]);
    ds_map_add(GtileMap, "10", global.tile[10]);
    ds_map_add(GtileMap, "11", global.tile[11]);
    ds_map_add(GtileMap, "12", global.tile[12]);
    ds_map_add(GtileMap, "13", global.tile[13]);
    ds_map_add(GtileMap, "14", global.tile[14]);
    ds_map_add(GtileMap, "15", global.tile[15]);
    
    //Encode to Json
    var JSONstring = json_encode(GtileMap);
    
    //Write to file
    file_text_write_string(saveFile, JSONstring);
    
    //Write the seperator
    file_text_write_string(saveFile, "|");

//Iterate through the global.tilesFilled and save
    //create a ds_map
    var GtilesFilledMap = ds_map_create();
    
    //Add values
    ds_map_add(GtilesFilledMap, "0", global.tilesFilled[0]);
    ds_map_add(GtilesFilledMap, "1", global.tilesFilled[1]);
    ds_map_add(GtilesFilledMap, "2", global.tilesFilled[2]);
    ds_map_add(GtilesFilledMap, "3", global.tilesFilled[3]);
    ds_map_add(GtilesFilledMap, "4", global.tilesFilled[4]);
    ds_map_add(GtilesFilledMap, "5", global.tilesFilled[5]);
    ds_map_add(GtilesFilledMap, "6", global.tilesFilled[6]);
    ds_map_add(GtilesFilledMap, "7", global.tilesFilled[7]);
    ds_map_add(GtilesFilledMap, "8", global.tilesFilled[8]);
    ds_map_add(GtilesFilledMap, "9", global.tilesFilled[9]);
    ds_map_add(GtilesFilledMap, "10", global.tilesFilled[10]);
    ds_map_add(GtilesFilledMap, "11", global.tilesFilled[11]);
    ds_map_add(GtilesFilledMap, "12", global.tilesFilled[12]);
    ds_map_add(GtilesFilledMap, "13", global.tilesFilled[13]);
    ds_map_add(GtilesFilledMap, "14", global.tilesFilled[14]);
    ds_map_add(GtilesFilledMap, "15", global.tilesFilled[15]);
    
    //Encode to Json
    var JSONstring = json_encode(GtilesFilledMap);
    
    //Write to file
    file_text_write_string(saveFile, JSONstring);
    
    //Write the seperator
    file_text_write_string(saveFile, "|");
*/    
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
