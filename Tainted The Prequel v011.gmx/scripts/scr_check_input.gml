///scr_check_input();

var j;

for (j = 0; j <= 4; j++) {
    if (device_mouse_check_button_released(j, mb_left)) {
        click[j] = true;
        click_x[j] = device_mouse_x_to_gui(j);
        click_y[j] = device_mouse_y_to_gui(j);
    } else click[j] = false;    
    //if device_mouse_check_button_pressed j bracket
} //for j bracket

//restart key
key_r = keyboard_check_released(ord("R")); 

//back key
key_b = keyboard_check_released(vk_backspace);

