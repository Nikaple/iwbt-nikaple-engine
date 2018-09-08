// playerPlatform
// This script is written by dalao: -NIHIL-
// http://tieba.baidu.com/home/main?un=towanoICIT

var tempv, tempvpf, cb;

if (yflag == 1) {
    if (onPlatform && !jumpPressed) {
        tempvpf = pf.vspeed
    } else {
        tempvpf = 0
    }

    pf = collision_line(
        bbox_left + 2, bbox_top,
        bbox_left + 2, bbox_bottom + vspeed + gravity + abs(tempvpf) + 1,
        platform, 1, 1
    )
    if (pf == noone)
        pf = collision_line(
            bbox_right - 1, bbox_top,
            bbox_right - 1, bbox_bottom + vspeed + gravity + abs(tempvpf) + 1,
            platform, 1, 1
        )

    if (pf == noone) {
        if (onPlatform == 1 && !jumpPressed && tempvpf > 0) vspeed = tempvpf

        onPlatform = false
        return 0
    } else if (bbox_bottom + vspeed > pf.bbox_top + 9) {
        if (onPlatform == 1 && !jumpPressed && tempvpf > 0) vspeed = tempvpf

        if (onPlatform && !place_meeting(x + pf.hspeed, y, objBlock)) {
            x += pf.hspeed
        }

        onPlatform = false
        return 0
    } else {
        onPlatform = 1
        curJumps = 1

        vspeed = 0
        gravity = 0
        y -= bbox_bottom - pf.bbox_top + pf.vspeed + 1

        cb = instance_place(x + pf.hspeed, y + pf.vspeed, objBlock)
        if (cb == noone || cb == pf) {
            x += pf.hspeed
            y += pf.vspeed
        } else if (pf.hspeed != 0) {
            move_contact_object(pf.direction, pf.speed, objBlock)
        }
    }
} else {
    if (onPlatform && !jumpPressed) tempvpf = pf.vspeed
    else tempvpf = 0

    pf = collision_line(
        bbox_right, bbox_bottom,
        bbox_right + hspeed - 1, bbox_top + vspeed + gravity - abs(tempvpf),
        platform, 1, 1
    )

    if (pf == noone)
        pf = collision_line(
            bbox_left + 2, bbox_bottom,
            bbox_left + 2 + hspeed, bbox_top + vspeed + gravity - abs(tempvpf),
            platform, 1, 1
        )

    if (pf == noone) {
        if (onPlatform == 1 && !jumpPressed && tempvpf < 0) vspeed = tempvpf

        onPlatform = false
        return 0
    } else if (bbox_top < pf.bbox_bottom - 9) {
        if (onPlatform == 1 && !jumpPressed && tempvpf < 0) vspeed = tempvpf

        if (onPlatform && !place_meeting(x + pf.hspeed, y, objBlock)) {
            x += pf.hspeed
        }
        onPlatform = false
        return 0
    } else {
        onPlatform = 1
        curJumps = 1

        vspeed = 0
        gravity = 0
        y += pf.bbox_bottom - bbox_top - pf.vspeed - 1

        cb = instance_place(x + pf.hspeed, y + pf.vspeed, objBlock)
        if (cb == noone || cb == pf) {
            x += pf.hspeed
            y += pf.vspeed
        } else {
            move_contact_object(pf.direction, pf.speed, objBlock)
        }
    }
}

