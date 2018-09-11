///screenFlash(time)
//
//  flash the screen in the amount of time
//
//      time        the time that screen flashes white, 10 in default
//

var inst;
inst = instance_create(view_xview[0], view_yview[0], objScreenFlash)
if (argument0) {
    inst.time = argument0
} else {
    inst.time = 10
}

