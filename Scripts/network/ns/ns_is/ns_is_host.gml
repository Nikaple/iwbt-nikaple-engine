// local game
if (!ns_is_online_mode()) {
    return true
}

// online game
if (ns_is_connected() and global.__is_host == true) {
    return true
}

return false
