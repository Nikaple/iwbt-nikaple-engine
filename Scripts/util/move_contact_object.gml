// This script is written by dalao: -NIHIL-
// http://tieba.baidu.com/home/main?un=towanoICIT

var _dir, _maxspd, _obj, _sublength, _dx, _dy;

_dir = argument0
_maxspd = argument1
_obj = argument2

if (
    !place_meeting(
        x + lengthdir_x(_maxspd, _dir),
        y + lengthdir_y(_maxspd, _dir),
        _obj
    )
) {
    speed = _maxspd
    direction = _dir
    // x += lengthdir_x(_maxspd, _dir)
    // y += lengthdir_y(_maxspd, _dir)
    return false
} else {
    x = round(x)
    y = round(y)
    for (_sublength = 0.1; _sublength < _maxspd; _sublength += 0.1) {
        if (
            place_meeting(
                x + lengthdir_x(_sublength, _dir),
                y + lengthdir_y(_sublength, _dir),
                _obj
            )
        ) {
            break
        }
    }
    _dx = lengthdir_x(_sublength, _dir)
    _dy = lengthdir_y(_sublength, _dir)

    x += _dx - sign(_dx) * 0.1
    y += _dy - sign(_dy) * 0.1

    return true
}

