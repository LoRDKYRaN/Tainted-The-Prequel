///scrGameSwipeLeftState();
//control tile movements

//Store for undo
scrGameUndoStore();

//First tile - 1
scrTileBehaviour(1,0,-1,-1);

//2nd tile - 5
scrTileBehaviour(5,4,-1,-1);

//3rd tile - 9
scrTileBehaviour(9,8,-1,-1);
 
//4th tile - 13
scrTileBehaviour(13,12,-1,-1);

//5th tile - 2
scrTileBehaviour(2,1,0,-1);

//6th tile - 6
scrTileBehaviour(6,5,4,-1);

//7th tile - 10
scrTileBehaviour(10,9,8,-1);

//8th tile - 14
scrTileBehaviour(14,13,12,-1);

//9th tile - 3
scrTileBehaviour(3,2,1,0);

//10th tile - 7
scrTileBehaviour(7,6,5,4);

//11th tile - 11
scrTileBehaviour(11,10,9,8);

//12th tile - 15
scrTileBehaviour(15,14,13,12);

//Spawn new tiles
scrGameSpawnTile();
if (playerLost) exit; 

//Reset tile behaviour parameters
scrTileBehaviourReset();

//Save game
scrSaveGame();
state = "idle";
