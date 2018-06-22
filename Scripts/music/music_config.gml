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
        music_loop(global.BGM_Title)
        break
    case rHub:
    case rOnlineHub:
    case rTraps:
    case rGimmick:
        music_loop(global.BGM_Rock)
        break
    //add your code here
    
    default:
        music_play(global.BGM_Null)
}

