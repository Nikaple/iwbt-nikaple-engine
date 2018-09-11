///flashObject(flash_time,flash_count)
//
//  flash the object, the variable 'flash' is equal to 1 when flashing
//
//      flash_time      the frames during one flash
//      flash_count     the flashing times
//
///  total invincible time = flash_time*flash_count

var i;
flash = 1
for (i = 0; i <= 100; i += 1) {
    if ((global.flash_object[i] = 0)) {
        global.flash_object[i] = id
        global.flash_time[i] = argument0
        global.flash_count[i] = argument1
        global.flash_temptime[i] = global.flash_time[i]
        exit
    }
}

