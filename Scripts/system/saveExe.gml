var fname, f, list, i, pos, roomTo, xx, yy, xs;
// save file name
fname = get_save_file(global.savenum)
//open save data to read
f = file_text_open_read(fname)
if (!f) exit
//create the save data list
list = ds_list_create()
pos = 0
//read game data
ds_list_read(list, dataDecrypt(file_text_read_string(f)))
//assigning variables
global.death = ds_list_find_value(list, pos)
pos += 1
global.timestep = ds_list_find_value(list, pos)
pos += 1
if (global.__save_room == -1) {
    roomTo = ds_list_find_value(list, pos)
} else {
    roomTo = global.__save_room
}
pos += 1
room_goto(roomTo)
global.reverse = ds_list_find_value(list, pos)
pos += 1
if (global.__save_x == -1) {
    xx = ds_list_find_value(list, pos)
} else {
    xx = global.__save_x
}
pos += 1
if (global.__save_y == -1) {
    yy = ds_list_find_value(list, pos)
} else {
    yy = global.__save_y
}
pos += 1
if (global.__save_xs == 0) {
    xs = ds_list_find_value(list, pos)
} else {
    xs = global.__save_xs
}
pos += 1
global.difficulty = ds_list_find_value(list, pos)
pos += 1
global.clear = ds_list_find_value(list, pos)
pos += 1
for (i = 1; i <= global.boss_number; i += 1) {
    global.boss[i] = ds_list_find_value(list, pos)
    pos += 1
}
for (i = 1; i <= global.item_number; i += 1) {
    global.item[i] = ds_list_find_value(list, pos)
    pos += 1
}
//for more saving data, add your code here

//destroy the save list
ds_list_destroy(list)
//close save file
file_text_close(f)

player.x = xx
player.y = yy
player.image_xscale = xs
player.alarm[11] = 2

