var fromName, data, isAllPlayersReset;
fromName = argument0
data = argument1

isAllPlayersReset = json_pick(data, 'fin')

if (isAllPlayersReset) {
    with (world) {
        resetWait = false
        alarm[0] = 2
    }
}

