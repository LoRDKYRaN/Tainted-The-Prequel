///scrAddScore(tile value);
var TiVal = argument0;

switch TiVal {
    case 1: objGame.playerScore += 2; break;
    case 2: objGame.playerScore += 4; break;
    case 3: objGame.playerScore += 8; break;
    case 4: objGame.playerScore += 16; break;
    case 5: objGame.playerScore += 32; break;
    case 6: objGame.playerScore += 64; break;
    case 7: objGame.playerScore += 128; break;
    case 9: objGame.playerScore += 256; break;
    case 10: objGame.playerScore += 512; break;
    case 11: objGame.playerScore += 1024; break;
    case 12: objGame.playerScore += 2048; break;
    case 13: objGame.playerScore += 4096; break;
    case 14: objGame.playerScore += 8192; break;
} //switch tile value close bracket
