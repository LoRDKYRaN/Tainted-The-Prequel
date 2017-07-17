///scrStateTile(state);
var state = argument0;

switch state {
    case "activate": script_execute(scrTileActivateState); break;
    case "idle": break;
    case "move": script_execute(scrTileInitMove(tileSelected)); break;



} //switch state close bracket
