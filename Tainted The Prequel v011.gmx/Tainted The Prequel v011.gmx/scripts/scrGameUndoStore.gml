///scrGameUndoStore();
var i;
for (i = 0; i <16; i++) {
//Individual Tiles
objUndoData.TileInst[i] = objGame.tileInst[i];
objUndoData.isActive[i] = objGame.tileInst[i].isActive;
objUndoData.xpos[i]= objGame.tileInst[i].x;
objUndoData.ypos[i]= objGame.tileInst[i].y;
objUndoData.value[i]= objGame.tileInst[i].value;
objUndoData.imageIndex[i]= objGame.tileInst[i].image_index;
objUndoData.tileSelected[i]= objGame.tileInst[i].tileSelected;

//Global Parameters
objUndoData.Gtile[i] = global.tile[i];
objUndoData.GtilesFilled[i] = global.tilesFilled[i];
} //for iterating i close bracket
