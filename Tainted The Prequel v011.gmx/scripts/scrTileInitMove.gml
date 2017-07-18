///scrTileInitMove(tileSelected);
/*
var tileNumber = argument0;
var dir = objGame.state;

//Switch based on direction then tile number
switch dir {
    case "swipeRight": 
        switch tileNumber {
            case 2: scrTileMove(2,3,-1,-1); break;
            case 6: scrTileMove(6,7,-1,-1); break;    
            case 10: scrTileMove(10,11,-1,-1); break;
            case 14: scrTileMove(14,15,-1,-1); break;
            case 1: scrTileMove(1,2,3,-1); break;
            case 5: scrTileMove(5,6,7,-1); break;
            case 9: scrTileMove(9,10,11,-1); break;
            case 13: scrTileMove(13,14,15,-1); break;
            case 0: scrTileMove(0,1,2,3); break;
            case 4: scrTileMove(4,5,6,7); break;
            case 8: scrTileMove(8,9,10,11); break;
            case 12: scrTileMove(12,13,14,15); break;
        } //switch tileNumber close bracket
    break; //case swipeRight break
    case "swipeUp": 
        switch tileNumber {
            case 4: scrTileMove(4,0,-1,-1); break;
            case 5: scrTileMove(5,1,-1,-1); break;    
            case 6: scrTileMove(6,2,-1,-1); break;
            case 7: scrTileMove(7,3,-1,-1); break;
            case 8: scrTileMove(8,4,0,-1); break;
            case 9: scrTileMove(9,5,1,-1); break;
            case 10: scrTileMove(10,6,2,-1); break;
            case 11: scrTileMove(11,7,3,-1); break;
            case 12: scrTileMove(12,8,4,0); break;
            case 13: scrTileMove(13,9,5,1); break;
            case 14: scrTileMove(14,10,6,2); break;
            case 15: scrTileMove(15,11,7,3); break;
        } //switch tileNumber close bracket
    break; //case swipeUp break    
    case "swipeLeft": 
        switch tileNumber {
            case 1: scrTileMove(1,0,-1,-1); break;
            case 5: scrTileMove(5,4,-1,-1); break;    
            case 9: scrTileMove(9,8,-1,-1); break;
            case 13: scrTileMove(13,12,-1,-1); break;
            case 2: scrTileMove(2,1,0,-1); break;
            case 6: scrTileMove(6,5,4,-1); break;
            case 10: scrTileMove(10,9,8,-1); break;
            case 14: scrTileMove(14,13,12,-1); break;
            case 3: scrTileMove(3,2,1,0); break;
            case 7: scrTileMove(7,6,5,4); break;
            case 11: scrTileMove(11,10,9,8); break;
            case 15: scrTileMove(15,14,13,12); break;
        } //switch tileNumber close bracket
    break; //case swipeLeft break    
    case "swipeDown": 
        switch tileNumber {
            case 8: scrTileMove(8,12,-1,-1); break;
            case 9: scrTileMove(9,13,-1,-1); break;    
            case 10: scrTileMove(10,14,-1,-1); break;
            case 11: scrTileMove(11,15,-1,-1); break;
            case 4: scrTileMove(4,8,12,-1); break;
            case 5: scrTileMove(5,9,13,-1); break;
            case 6: scrTileMove(6,10,14,-1); break;
            case 7: scrTileMove(7,11,15,-1); break;
            case 0: scrTileMove(0,4,8,12); break;
            case 1: scrTileMove(1,5,9,13); break;
            case 2: scrTileMove(2,6,10,14); break;
            case 3: scrTileMove(3,7,11,15); break;
        } //switch tileNumber close bracket
    break; //case swipeRight break   
} //switch dir close bracket

