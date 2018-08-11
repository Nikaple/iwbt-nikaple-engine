// Enable the use of views
if (!view_enabled) {
    view_enabled = true
    view_visible[0] = true
    if (instance_exists(objPlayerStart)) {
        with (objPlayerStart) {
            if (num == global.__player_start_num) {
                view_xview[0] = floor(x / global.game_room_width) * global.game_room_width
                view_yview[0] = floor(y / global.game_room_height) * global.game_room_height
            }
        }
    }
    if (instance_exists(player)) {
        view_xview[0] = floor(player.x / global.game_room_width) * global.game_room_width
        view_yview[0] = floor(player.y / global.game_room_height) * global.game_room_height
    }
    view_wview[0] = global.game_room_width
    view_hview[0] = global.game_room_height
    view_wport[0] = global.game_room_width
    view_hport[0] = global.game_room_height
}
