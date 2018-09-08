var key;
key = argument0

if (__key_checked[key]) exit;

global.key_now[key] = keyboard_check_direct(key)

if (global.key_now[key] && !global.key_pre[key]) {
    global.key_pressed[key] = true
} else {
    global.key_pressed[key] = false
}
if (!global.key_now[key] && global.key_pre[key]) {
    global.key_released[key] = true
} else {
    global.key_released[key] = false
}

global.key_pre[key] = global.key_now[key]
__key_checked[key] = true
