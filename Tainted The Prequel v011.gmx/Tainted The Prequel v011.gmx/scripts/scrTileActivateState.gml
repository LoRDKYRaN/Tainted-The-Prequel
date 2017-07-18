///scrTileActivateState();

//Activate
    isActive = true;
    
    //Select random tile
    do {
        var i = irandom(15); 
    } until (global.tilesFilled[i] = false);

    tileSelected = i;
    global.tile[i] = id;
    global.tilesFilled[i] = true;
    
    //Update parameters
    x = objGame.tileX[i];
    y = objGame.tileY[i];
    
    //Set value
    var j = choose(1,2);
    value = j;
    image_index = value;
    
    state = "idle";
