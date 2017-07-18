///scrStateGame(state);
var state = argument0;

switch state {
    case "tileInit": scrGameTileInitState(); break;
    case "swipeRight": scrGameSwipeRightState(); break;
    case "swipeUp": scrGameSwipeUpState(); break;
    case "swipeLeft": scrGameSwipeLeftState(); break;
    case "swipeDown": scrGameSwipeDownState(); break;
    case "undo": scrGameUndoState(); break;
    case "lost": ; scrGameLostState(); break;
    case "idle": break;
} //switch state close bracket
