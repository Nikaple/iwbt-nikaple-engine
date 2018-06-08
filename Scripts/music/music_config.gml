// play music in each room
if (isBossRoom()) {
    music_play(BGM_Null)
    exit
}
switch (room) {
    case rTitle:
    case rMenu:
    case rOptions:
    case rLobby:
    case rRoom:
    case rSelectStage:
        //indicates that BGM_Title should be played in the rooms above
        music_loop(BGM_Title)
        break
    case rHub:
    case rOnlineHub:
    case rTraps:
    case rSlopes:
        music_loop(BGM_1)
        break
    //add your code here
    
    default:
        music_play(BGM_Null)
}

