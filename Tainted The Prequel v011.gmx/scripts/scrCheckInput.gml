///scrCheckInput();

//Pressed
if (device_mouse_check_button_pressed(0, mb_left)) {
    if (device_mouse_y(0) > 300) {
        xStart = device_mouse_x(0);
        yStart = device_mouse_y(0);
    } //if within range close bracket
} //if pressed close bracket

//Released
if (device_mouse_check_button_released(0, mb_left)) {
    if (device_mouse_y(0) > 300) {
        xEnd = device_mouse_x(0);
        yEnd = device_mouse_y(0);
    
        //Check angle & distance
        swipeAngle = point_direction(xStart, yStart, xEnd, yEnd);
        swipeDistance = point_distance(xStart, yStart, xEnd, yEnd);
    
        //If long enough, direction of swipe
        if (swipeDistance > 10) {
            if ((swipeAngle > 315 && swipeAngle <= 359) || (swipeAngle >= 0 && swipeAngle <= 45)){
                swipeDirection = 0;
                state = "swipeRight";
            } else if (swipeAngle > 45 && swipeAngle <= 135) {
                swipeDirection = 1;
                state = "swipeUp";
            } else if (swipeAngle > 135 && swipeAngle <= 225) {
                swipeDirection = 2;
                state = "swipeLeft";
            } else if (swipeAngle > 225 && swipeAngle <= 315) {
                swipeDirection = 3;
                state = "swipeDown";
            } //if angles close bracket
        } //if long enough close bracket
    
        //if not long enough
        else {
            xEnd = xStart;
            yEnd = yStart;
        } //if not long enough close bracket
    } //if within range close bracket
    
    //Reset move controls
    xStart = -1;
    yStart = -1;
    xEnd = -1;
    yEnd = -1;
    swipeAngle = -1;
    swipeDistance = -1;
    swipeDirection = -1;
} //if released close bracket

//Check for undo button
if (keyboard_check_pressed(vk_backspace)) state = "undo";

//restart key
key_r = keyboard_check_released(ord("R")); 
if (key_r) {
    file_delete("Save.sav");
    //Create tile pool
var i = 0;
for (i = 0; i < freeTiles; i++) {
    global.tile[i] = -1; //set global tile to -1;
} //for tile pool close bracket

//Set tiles unfilled
var j = 15;
repeat(j) {
    global.tilesFilled[j] = false;
    j--;
}
    game_restart();
}
