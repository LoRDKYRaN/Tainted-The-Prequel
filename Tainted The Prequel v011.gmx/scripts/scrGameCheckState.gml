///scrGameCheckState();
//Init state
if (objGame.tileInit == false) {
    state = "tileInit";
    exit;
} //if tileinit close bracket

//Check input
scrCheckInput();

/*
//Check lose conditions
if (freeTiles == 0) {
    scrGameLoseCheck();
    
    if (canMerge) {
        canMerge = false;
    } else state = "lose";
} //if free tiles 0 close bracket

