//checks if the gm window has the focus
//returns - 1 = yes
//        - 0 = no
if (global.enable_dll_focus) {
    var go;
    go = external_call(global.dllgmfocus_getfocus)
    if ((go = window_handle())) {
        return 1
    } else {
        return 0
    }
} else if (global.enable_simulate_focus) {
    return keyboard_check(global.focus_key_code)
} else {
    return true
}

