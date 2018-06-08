if (room != rTitle) exit;

var data;
data = argument0;

global.__player_id = json_pick(data, 'id')
global.__player_name = json_pick(data, 'name')

debug(global.__player_name + ' registered! ID: ' + global.__player_id)
i18n_show_message('register_success')
