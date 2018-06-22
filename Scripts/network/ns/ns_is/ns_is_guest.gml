// local game
if (!ns_is_online_mode()) {
    return false
}

// online game
if (ns_is_connected() and global.__is_host == false) {
    return true
}

return false
