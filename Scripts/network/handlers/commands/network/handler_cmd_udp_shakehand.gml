if (room != rTitle) exit;

var times;
// the times that shakehand packet has sent
times = argument0

with (objUdpShakehand) {
    succeed = true
    finishTime = date_current_time()
    alarm[0] = 0
    ping = round((finishTime - startTime[times]) * 86400000)
    debug('udp connection established! ping:', ping, 'ms')
}

room_goto(rLobby)
