// scrSealRoom(noTop, noLeft, noBottom, noRight)

var noTop, noLeft, noBottom, noRight, h, v, a;
noTop = argument0
noLeft = argument1
noBottom = argument2
noRight = argument3

h = room_width / 32
v = room_height / 32

if (!noTop) {
    a = instance_create(-32, -32, objBlock)
    a.image_xscale = h + 2
}
if (!noBottom) {
    a = instance_create(-32, room_height, objBlock)
    a.image_xscale = h + 2
}
if (!noLeft) {
    a = instance_create(-32, -32, objBlock)
    a.image_yscale = v + 2
}
if (!noRight) {
    a = instance_create(room_width, -32, objBlock)
    a.image_yscale = v + 2
}

