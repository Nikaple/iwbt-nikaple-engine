//enable the use of views
if (!view_enabled) {
    view_enabled = true
    view_visible[0] = true
    if (instance_exists(playerStart)) {
        view_xview[0] = floor(playerStart.x / 800) * 800
        view_yview[0] = floor(playerStart.y / 608) * 608
    }
    if (instance_exists(player)) {
        view_xview[0] = floor(player.x / 800) * 800
        view_yview[0] = floor(player.y / 608) * 608
    }
    view_wview[0] = 800
    view_hview[0] = 608
    view_wport[0] = 800
    view_hport[0] = 608
}
