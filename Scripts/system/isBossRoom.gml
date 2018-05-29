// isBossRoom();
//
//  return true when the room is boss room
//  this will affect 'gamePause' and 'musicFunctions'
//

if (
    room == rAvoidance ||
    room == rBossSample ||
    room == rBossSampleBuffed ||
    room == rOnlineBossSample
) {
    return true
}
return false

