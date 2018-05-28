///splitObject(number,speed,object,direction,sprite)
//
// create a circular object explosion
//
//      number      the total number of objects
//      speed       the shooting speed
//      object      the object to shoot
//      direction   set to -1 when random
//                  set to 1 when homing to player
//                  (other numbers)
//                  set the direction of the first object that created by this script
//      sprite      the sprite of the shooting object

var inst, i, dir
if ((argument3 = 1)) {
    dir = point_direction(x, y, player.x, player.y)
} else if ((argument3 = -1)) {
    dir = random(360)
} else {
    dir = argument3
}
for (i = 1; i <= argument0; i += 1) {
    inst = instance_create(x, y, argument2)
    inst.speed = argument1
    inst.direction = dir + 360 / argument0 * i
    if (argument4 != 0) {
        inst.sprite_index = argument4
    }
}

