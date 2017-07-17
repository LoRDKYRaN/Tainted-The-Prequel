///scrGameSwipeDownState();
//control tile movements

//Store for undo
scrGameUndoStore();

//First tile - 8
scrTileBehaviour(8,12,-1,-1);

//2nd tile - 9
scrTileBehaviour(9,13,-1,-1);

//3rd tile - 10
scrTileBehaviour(10,14,-1,-1);

//4th tile - 11
scrTileBehaviour(11,15,-1,-1);

//5th tile - 4
scrTileBehaviour(4,8,12,-1);
 
//6th tile - 5
scrTileBehaviour(5,9,13,-1);

//7th tile - 6
scrTileBehaviour(6,10,14,-1);

//8th tile - 7
scrTileBehaviour(7,11,15,-1);

//9th tile - 0
scrTileBehaviour(0,4,8,12);

//10th tile - 1
scrTileBehaviour(1,5,9,13);

//11th tile - 2
scrTileBehaviour(2,6,10,14);
 
//12th tile - 3
scrTileBehaviour(3,7,11,15);

//Spawn new tiles
scrGameSpawnTile();

//Reset tile behaviour parameters
scrTileBehaviourReset();

//Save game
scrSaveGame();
state = "idle";
