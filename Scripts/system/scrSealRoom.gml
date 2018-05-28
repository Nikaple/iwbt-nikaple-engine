var h, v, a;
h = room_width / 32
v = room_height / 32

a = instance_create(-32, -32, objBlock)
a.image_xscale = h + 2
a = instance_create(-32, room_height, objBlock)
a.image_xscale = h + 2
a = instance_create(-32, -32, objBlock)
a.image_yscale = v + 2
a = instance_create(room_width, -32, objBlock)
a.image_yscale = v + 2

