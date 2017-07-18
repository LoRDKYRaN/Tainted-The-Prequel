///scrGameSwipeDownState();
//Set down order
down[0] = global.tile[8];
down[1] = global.tile[9];
down[2] = global.tile[10];
down[3] = global.tile[11];
down[4] = global.tile[4];
down[5] = global.tile[5];
down[6] = global.tile[6];
down[7] = global.tile[7];
down[8] = global.tile[0];
down[9] = global.tile[1];
down[10] = global.tile[2];
down[11] = global.tile[3];

var i;
for (i = 0; i < array_length_1d(down); i++) {
    if (down[i] != -1) {
        if (down[i].isActive && !down[i].moveInit) {
            down[i].state = "move";
        } //if active close bracket
    } //if not -1 close bracket
    tilesMoveLeft--;
} //for cycle left close bracket

