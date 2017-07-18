///scrGameSwipeUpState();
//Set up order
up[0] = global.tile[4];
up[1] = global.tile[5];
up[2] = global.tile[6];
up[3] = global.tile[7];
up[4] = global.tile[8];
up[5] = global.tile[9];
up[6] = global.tile[10];
up[7] = global.tile[11];
up[8] = global.tile[12];
up[9] = global.tile[13];
up[10] = global.tile[14];
up[11] = global.tile[15];

var i;
for (i = 0; i < array_length_1d(up); i++) {
    if (up[i] != -1) {
        if (up[i].isActive) {
            if (!up[i].moveInit) {
                up[i].state = "move";
            } //if moveInit is false close bracket
        } //if active close bracket
    } //if not -1 close bracket
    tilesMoveLeft--;
} //for cycle left close bracket





