var fromName, data, dir, _x, _y;
fromName = argument0
data = argument1

dir = json_pick(data, 'dir')
_x = json_pick(data, 'x')
_y = json_pick(data, 'y')

inst = instance_create(_x, _y, objFakeBullet)
inst.hspeed = dir * 16
inst.shooter = fromName
