///initializing music at the beginning of the game
//initialize supersound system
SS_Init()
//indicates that no music will be playing in the room
//DO NOT DELETE THIS ONE
/*globalvar BGM_Null;
BGM_Null = music_load('Null')
//current music, set it to BGM_Null for default value
globalvar curMusic;
curMusic = BGM_Null
//the death sound, the volume of which is adjusted by the global sound volume
globalvar BGM_Death;
BGM_Death = music_load('Death')

globalvar BGM_Title;
BGM_Title = music_load('Title')

globalvar BGM_Rock;
BGM_Rock = music_load('Rock')

globalvar BGM_BOSS1;
BGM_BOSS1 = music_load('BOSS1')

globalvar BGM_BOSS2;
BGM_BOSS2 = music_load('BOSS2')
*/
//add your code here

if (directory_exists(global.music_directory)) {
    file = file_find_first(global.music_directory + '\\*.ogg', fa_directory)
    do {
        name = string_delete(file, string_length(file) - 3, 4)
        code = 'globalvar BGM_' + name + '; BGM_' + name + ' = music_load("' + name + '")'
        execute_string(code)
        file = file_find_next()
    } until (file == '')
    file_find_close()
}

globalvar curMusic;
curMusic = BGM_Null
