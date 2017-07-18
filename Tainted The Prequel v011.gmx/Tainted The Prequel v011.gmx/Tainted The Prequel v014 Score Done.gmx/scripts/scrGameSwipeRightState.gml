///scrGameSwipeRightState();
//control tile movements

//Store for undo
scrGameUndoStore();

//First tile - 2
scrTileBehaviour(2,3,-1,-1);

//2nd tile - 6
scrTileBehaviour(6,7,-1,-1);
 
//3rd tile - 10
scrTileBehaviour(10,11,-1,-1);

//4th tile - 14
scrTileBehaviour(14,15,-1,-1);
 
//5th tile - 1
scrTileBehaviour(1,2,3,-1);

//6th tile - 5
scrTileBehaviour(5,6,7,-1);
 
//7th tile - 9
scrTileBehaviour(9,10,11,-1);

//8th tile - 13
scrTileBehaviour(13,14,15,-1);

//9th tile - 0
scrTileBehaviour(0,1,2,3);

//10th tile - 4
scrTileBehaviour(4,5,6,7);

//11th tile - 8
scrTileBehaviour(8,9,10,11);

//12th tile - 12
scrTileBehaviour(12,13,14,15);

//Spawn new tiles
scrGameSpawnTile();
if (playerLost) exit; 

//Reset tile behaviour parameters
scrTileBehaviourReset();

//Save game
scrSaveGame();
state = "idle";
