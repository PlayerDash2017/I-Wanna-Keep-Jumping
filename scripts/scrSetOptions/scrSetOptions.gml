global.game_name = "I Wanna Keep Jumping"; //The name displayed on the window
//global.difficulties = ["Medium", "Hard", "Very Hard", "Impossible", "Load Game"];
global.difficulties = ["Bow", "No Bow", "Load Game"]; //Every difficulty name your game will have, "Load" should always be the last one
global.total_saves = 3; //The number of total save files to use
global.start_room = rIntroRoom; //The room to start in
global.auto_save_items = false; //If the items should be saved when picked up

global.death_music = false; //Sets if the game over music should play
global.time_when_dead = false; //Keeping track of the time even when player is dead
global.total_pause_delay = seconds_to_frames(1); //The frames you need to wait before being able to pause
global.outside_kills = true; //If the room border should kill you
global.use_bow = true; //Bow appears when playing on the first difficulty