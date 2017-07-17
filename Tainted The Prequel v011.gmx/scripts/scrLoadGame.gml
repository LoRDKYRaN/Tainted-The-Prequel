///scrLoadGame();
if (!file_exists("Save.sav")) exit;

//Load save file
var loadFile = file_text_open_read("Save.sav");

if (file_text_eof(loadFile)) exit;
else var masterData = file_text_read_string(loadFile);

//get JSON Data in array
var saveArray = scrStringSplitter(masterData, "|");
var saveCount = array_length_1d(saveArray);

if (saveCount <=0) exit;

//Destroy tiles
if (instance_exists(objTile)) {
    with objTile instance_destroy();
}
//iterate through the array
//Start with the tiles
var i;
for (i = 0; i <16; i++) {
    var tileJSON = saveArray[i];
    
    //deserialise into map
    var tileMap = json_decode(tileJSON);
    var _isActive = ds_map_find_value(tileMap, "isActive");
    var _x = ds_map_find_value(tileMap, "x");
    var _y = ds_map_find_value(tileMap, "y");
    var _value = ds_map_find_value(tileMap, "value");
    var _image_index = ds_map_find_value(tileMap, "image_index");
    var _tileSelected = ds_map_find_value(tileMap, "tileSelected");
    
    objGame.tileInst[i] = instance_create(room_width + 200, 0, objTile);
    with (objGame.tileInst[i]) {
        isActive = _isActive;
        x = _x;
        y = _y;
        value = _value;
        image_index = _image_index;
        tileSelected = _tileSelected;
    } //with objTile close bracket
} //for i close bracket

//Reassign the global variables
//Reset all
var i;
for (i = 0; i <16; i++) {
    global.tile[i] = -1;
    global.tilesFilled[i] = false; 
} //if i close bracket

//Assign correct values
var i;
for (i = 0; i <16; i++) {
    var tileSel = objGame.tileInst[i].tileSelected;
    
    if (tileSel != -1) {
        global.tile[tileSel] = objGame.tileInst[i];
        global.tilesFilled[tileSel] = true; 
    } //if tilesel not -1 close bracket
} //if i close bracket

//Populate undo object
//iterate through the array
var i, j=0;
for (i = 16; i <32; i++) {
    var undoJSON = saveArray[i];
    
    //deserialise into map
    var undoMap = json_decode(undoJSON);
    var _isActive = ds_map_find_value(undoMap, "isActive");
    var _x = ds_map_find_value(undoMap, "xpos");
    var _y = ds_map_find_value(undoMap, "ypos");
    var _value = ds_map_find_value(undoMap, "value");
    var _image_index = ds_map_find_value(undoMap, "imageIndex");
    var _tileSelected = ds_map_find_value(undoMap, "tileSelected");
    
    //Reassign
    objUndoData.isActive[j] = _isActive;
    objUndoData.xpos[j] = _x;
    objUndoData.ypos[j] = _y;
    objUndoData.value[j] = _value;
    objUndoData.imageIndex[j] = _image_index;
    objUndoData.tileSelected[j] = _tileSelected;

    j++;
} //for i close bracket

//Reassign objUndo globals
//Reset all
var i;
for (i = 0; i <16; i++) {
    objUndoData.Gtile[i] = -1;
    objUndoData.GtilesFilled[i] = false; 
} //if i close bracket

//Assign correct values
var i;
for (i = 0; i <16; i++) {
    var tileSel = objUndoData.tileSelected[i];
    
    if (tileSel != -1) {
        objUndoData.Gtile[tileSel] = objGame.tileInst[i];
        objUndoData.GtilesFilled[tileSel] = true; 
    } //if tilesel not -1 close bracket
} //if i close bracket

//objGame freeTiles
var gameJSON = saveArray[32];
var gameMap = json_decode(gameJSON);
var _freeTiles = ds_map_find_value(gameMap, "freeTiles");
objGame.freeTiles = _freeTiles;

//close file
file_text_close(loadFile);

//destroy maps
ds_map_destroy(tileMap);
ds_map_destroy(undoMap);
ds_map_destroy(gameMap);

//Set gameloaded
objGame.gameLoaded = true;
objGame.tileInit = true;







