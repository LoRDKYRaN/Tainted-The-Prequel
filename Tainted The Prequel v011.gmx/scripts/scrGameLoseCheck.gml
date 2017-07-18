///scrGameLoseCheck();
//check if tiles can merge

if (freeTiles == 0) {
    if (global.tile[0].value == global.tile[1].value) canMerge = true;
    if (global.tile[0].value == global.tile[4].value) canMerge = true;
    if (global.tile[1].value == global.tile[2].value) canMerge = true;
    if (global.tile[1].value == global.tile[5].value) canMerge = true;
    if (global.tile[2].value == global.tile[3].value) canMerge = true;
    if (global.tile[2].value == global.tile[6].value) canMerge = true;
    if (global.tile[3].value == global.tile[7].value) canMerge = true;
    if (global.tile[4].value == global.tile[5].value) canMerge = true;
    if (global.tile[4].value == global.tile[8].value) canMerge = true;
    if (global.tile[5].value == global.tile[6].value) canMerge = true;
    if (global.tile[5].value == global.tile[9].value) canMerge = true;
    if (global.tile[6].value == global.tile[7].value) canMerge = true;
    if (global.tile[6].value == global.tile[10].value) canMerge = true;
    if (global.tile[7].value == global.tile[11].value) canMerge = true;
    if (global.tile[8].value == global.tile[9].value) canMerge = true;
    if (global.tile[8].value == global.tile[12].value) canMerge = true;
    if (global.tile[9].value == global.tile[10].value) canMerge = true;
    if (global.tile[9].value == global.tile[13].value) canMerge = true;
    if (global.tile[10].value == global.tile[11].value) canMerge = true;
    if (global.tile[10].value == global.tile[14].value) canMerge = true;
    if (global.tile[11].value == global.tile[15].value) canMerge = true;
    if (global.tile[12].value == global.tile[13].value) canMerge = true;
    if (global.tile[13].value == global.tile[14].value) canMerge = true;
    if (global.tile[14].value == global.tile[15].value) canMerge = true;
    
    if (!canMerge) {
        lose = true;
        state = "lost";
    }
} // if freetiles 0 close bracket
