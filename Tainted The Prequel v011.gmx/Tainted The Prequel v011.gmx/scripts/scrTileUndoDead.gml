///scrTileUndo(currTile);
var currTile = argument0;
var currTileId = global.tile[currTile];


//Check for -1 before starting
if (currTileId != -1) {
    var currTileAction = currTileId.action;
    
    switch currTileAction {
        case "move": 
            //Tile Parameters
            currTileId.tileSelected = currTileId.tileSelectedPrevious;
            currTileId.x = currTileId.xPrevious;
            currTileId.y = currTileId.yPrevious;
            
            //Global Parameters
            //Clear Current
            global.tile[currTile] = -1;
            global.tilesFilled[currTile] = false;
            
            //Reset Previous
            global.tile[currTileId.tileSelected] = currTileId;
            global.tilesFilled[currTileId.tileSelected] = true;
        break;
        case "merge": 
            //Update Merge Tiles Parameters
            currTileId.adjXTilePrevious.value--;
            currTileId.adjXTilePrevious.image_index--;
            
            //Tile Parameters
            currTileId.isActive = true;
            currTileId.x = currTileId.xPrevious;
            currTileId.y = currTileId.yPrevious;
            currTileId.value = currTileId.valuePrevious;
            currTileId.image_index = currTileId.image_indexPrevious;
            currTileId.canMove = false;
            currTileId.canMerge = false;
            currTileId.activate = false;
            currTileId.tileSelected = currTileId.tileSelectedPrevious;
            currTileId.image_speed = 0;
            currTileId.state = "idle";
            
            //Update Global
            global.tile[currTileId.tileSelectedPrevious] = currTileId;
            global.tilesFilled[currTileId.tileSelectedPrevious] = true;
        break;
        default: break;
    } //switch currTileAction close bracket
}
