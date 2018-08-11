var key;
key=argument0;
global.key_now[key]=keyboard_check_direct(key);
if (global.key_now[key] and !global.key_pre[key]) {
    global.key_pressed[key]=true;
} else {
    global.key_pressed[key]=false;
}
if (!global.key_now[key] and global.key_pre[key]) {
    global.key_released[key]=true;
} else {
    global.key_released[key]=false;
}

global.key_pre[key]=global.key_now[key];
