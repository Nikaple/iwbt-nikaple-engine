var data, reason;
data = argument0;

reason = json_pick(data, 'reason')

// reset globals
global.__player_id = ''
global.__player_name = ''
global.__player_index = 0
global.__current_lobby_id = 0
global.__current_game_id = 0
global.__game_started = false

debug('Logout reason: ' + reason)

switch (reason) {
    case 'user_intent':
        show_message(i18n_get('logout_user_intent'))
        break;
    case 'another_device':
        show_message(i18n_get('logout_another_device'))
        break;
}

destroy_if_exists(player)
destroy_if_exists(bow)
gameReset()
