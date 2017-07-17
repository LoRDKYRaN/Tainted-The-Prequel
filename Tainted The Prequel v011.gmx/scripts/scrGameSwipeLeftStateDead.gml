///scrGameSwipeLeftState();
//Set up order
left[0] = global.tile[1];
left[1] = global.tile[5];
left[2] = global.tile[9];
left[3] = global.tile[13];
left[4] = global.tile[2];
left[5] = global.tile[6];
left[6] = global.tile[10];
left[7] = global.tile[14];
left[8] = global.tile[3];
left[9] = global.tile[7];
left[10] = global.tile[11];
left[11] = global.tile[15];

var i;
for (i = 0; i < array_length_1d(left); i++) {
    if (left[i] != -1) {
        if (left[i].isActive && !left[i].moveInit) {
            left[i].state = "move";
        } //if active close bracket
    } //if not -1 close bracket
    tilesMoveLeft--;
} //for cycle left close bracket
