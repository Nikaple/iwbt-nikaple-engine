///initializing music at the beginning of the game
//initialize supersound system
SS_Init();
//indicates that no music will be playing in the room
//DO NOT DELETE THIS ONE
globalvar BGM_Null;
BGM_Null=SS_LoadSound(global.music_directory+"null.ogg",0);
//current music, set it to BGM_Null for default value
globalvar curMusic; 
curMusic = BGM_Null;
//the death sound, the volume of which is adjusted by the global sound volume
globalvar SE_Death;
SE_Death=music_load("death.ogg");

globalvar BGM_Title;
BGM_Title=music_load("001.ogg");

globalvar BGM_1;
BGM_1=music_load("002.ogg");

globalvar BGM_BOSS1;
BGM_BOSS1=music_load("101.ogg");

globalvar BGM_BOSS2;
BGM_BOSS2=music_load("102.ogg");

//add your code here
