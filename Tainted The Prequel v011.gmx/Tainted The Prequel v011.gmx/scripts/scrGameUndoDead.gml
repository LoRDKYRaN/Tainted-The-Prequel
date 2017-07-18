///scrGameUndo();/
//Undo Spawned tile
/*var spawnedTileSelected = spawnedTile.tileSelected;

//Update Tile Parameters
spawnedTile.isActive = false;
spawnedTile.tileSelected = -1;
spawnedTile.x = room_width +200;
spawnedTile.y = 0;
spawnedTile.value = 0;
spawnedTile.image_index = 0;
spawnedTile.state = "idle";

//Update Global Parameters
global.tile[spawnedTileSelected] = -1;
global.tilesFilled[spawnedTileSelected] = false;

//Undo movement
switch statePrevious {
    case "swipeRight":
        scrTileUndo(12);
        scrTileUndo(8);
        scrTileUndo(4);
        scrTileUndo(0);
        scrTileUndo(13);
        scrTileUndo(9);
        scrTileUndo(5);
        scrTileUndo(1);
        scrTileUndo(14);
        scrTileUndo(10);
        scrTileUndo(6);
        scrTileUndo(2);
    break;
    case "swipeLeft":
        scrTileUndo(15);
        scrTileUndo(11);
        scrTileUndo(7);
        scrTileUndo(3);
        scrTileUndo(14);
        scrTileUndo(10);
        scrTileUndo(6);
        scrTileUndo(2);
        scrTileUndo(13);
        scrTileUndo(9);
        scrTileUndo(5);
        scrTileUndo(1);
    break;
    case "swipeUp":
        scrTileUndo(15);
        scrTileUndo(14);
        scrTileUndo(13);
        scrTileUndo(12);
        scrTileUndo(11);
        scrTileUndo(10);
        scrTileUndo(9);
        scrTileUndo(8);
        scrTileUndo(7);
        scrTileUndo(6);
        scrTileUndo(5);
        scrTileUndo(4);
    break;
    case "swipeDown":
        scrTileUndo(3);
        scrTileUndo(2);
        scrTileUndo(1);
        scrTileUndo(0);
        scrTileUndo(7);
        scrTileUndo(6);
        scrTileUndo(5);
        scrTileUndo(4);
        scrTileUndo(11);
        scrTileUndo(10);
        scrTileUndo(9);
        scrTileUndo(8);
    break;
} //switch statePrevious close bracket

state = "idle";
