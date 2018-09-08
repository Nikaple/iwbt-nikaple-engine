var from, msg, scope, data, fakePlayer, bubble;
data = argument0

from = json_pick(data, 'from')
msg = json_pick(data, 'msg')
scope = json_pick(data, 'scope')

if (scope == 'user' && room != rLobby) exit;
if (scope == 'lobby' && room != rRoom) exit;

if (from != ns_get_player_name()) {
    with (objChatLog) {
        for (i = length - 1; i >= 0; i -= 1) {
            text[i + 1] = text[i]
        }
        length = min(maxLength, length + 1)
        text[0] = from + ': ' + msg
        if (!active) {
            // show message on title if chat panel is not active
            tarTitleText = text[0]
            tarTitleWidth = i18n_string_width(tarTitleText, true) 
            tarTitleTextAlpha = 0
            alarm[1] = 150
            alarm[2] = 5
        }
    }
    if (isInGameRoom() || room == rSelectStage) {
        // create message bubble
        with (objOnlinePlayers) {
            fakePlayer = variable_local_get(from)
        }
        if (instance_exists(fakePlayer) && !fakePlayer.dead) {
            bubble = instance_create(
                view_xview[view_current] - view_wview[view_current] / 2,
                view_yview[view_current] - view_hview[view_current] / 2,
                objChatBubble
            )
            bubble.parent = fakePlayer
            bubble.text = msg
        }
    }
}
