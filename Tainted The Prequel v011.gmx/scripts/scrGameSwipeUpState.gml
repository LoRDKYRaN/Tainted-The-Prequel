///scrGameSwipeUpState();
//control tile movements

//Store for undo
scrGameUndoStore();

//First tile - 4
scrTileBehaviour(4,0,-1,-1);

//2nd tile - 5
scrTileBehaviour(5,1,-1,-1);

//3rd tile - 6
scrTileBehaviour(6,2,-1,-1);

//4th tile - 7
scrTileBehaviour(7,3,-1,-1);

//5th tile - 8
scrTileBehaviour(8,4,0,-1);

//6th tile - 9
scrTileBehaviour(9,5,1,-1);
 
//7th tile - 10
scrTileBehaviour(10,6,2,-1);
  
//8th tile - 11
scrTileBehaviour(11,7,3,-1);
 
//9th tile - 12
scrTileBehaviour(12,8,4,0);

//10th tile - 13
scrTileBehaviour(13,9,5,1);

//11th tile - 14
scrTileBehaviour(14,10,6,2);

//12th tile - 15
scrTileBehaviour(15,11,7,3);

//Spawn new tiles
scrGameSpawnTile();
if (playerLost) exit; 

//Reset tile behaviour parameters
scrTileBehaviourReset();

//Save game
scrSaveGame();
state = "idle";
