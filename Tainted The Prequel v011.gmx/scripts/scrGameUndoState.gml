///scrGameUndoState();
//Restore
var i;
for (i = 0; i <16; i++) {
//Individual Tiles
objGame.tileInst[i] = objUndoData.TileInst[i];
objGame.tileInst[i].isActive = objUndoData.isActive[i];
objGame.tileInst[i].x = objUndoData.xpos[i];
objGame.tileInst[i].y = objUndoData.ypos[i];
objGame.tileInst[i].value = objUndoData.value[i];
objGame.tileInst[i].image_index = objUndoData.imageIndex[i];
objGame.tileInst[i].tileSelected = objUndoData.tileSelected[i];

//Global Parameters
global.tile[i] = objUndoData.Gtile[i];
global.tilesFilled[i] = objUndoData.GtilesFilled[i];
} //for iterating i close bracket

//Save game
scrSaveGame();
state = "idle";
