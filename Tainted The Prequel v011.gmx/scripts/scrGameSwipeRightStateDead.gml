///scrGameSwipeRightState();Dead
//Set up order
right[0] = global.tile[2];
right[1] = global.tile[6];
right[2] = global.tile[10];
right[3] = global.tile[14];
right[4] = global.tile[1];
right[5] = global.tile[5];
right[6] = global.tile[9];
right[7] = global.tile[13];
right[8] = global.tile[0];
right[9] = global.tile[4];
right[10] = global.tile[8];
right[11] = global.tile[12];

var i;
for (i = 0; i < array_length_1d(right); i++) {
    if (right[i] != -1) {
        if (right[i].isActive && !right[i].moveInit) {
            right[i].state = "move";
        } //if active close bracket
    } //if not -1 close bracket
    tilesMoveLeft--;
} //for cycle left close bracket

