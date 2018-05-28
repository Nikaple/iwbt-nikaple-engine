//wall jump left

if (onIvy) {
    vspeed = yflag * 2
    spr = SLIDING
    if (onIvyL) {
        image_xscale = 1
        shouldLeaveIvy = (rightPressed && !global.reverse) || (leftPressed && global.reverse)
    } else {
        image_xscale = -1
        shouldLeaveIvy = (leftPressed && !global.reverse) || (rightPressed && global.reverse)
    }
    if (shouldLeaveIvy) {
        if (jumpKey) {
            spr = JUMPING
            vspeed = -yflag * 9
            hspeed = 15 * image_xscale
            audio_playsound(sndWallJump)
            alarm[0] = 1
        } else {
            hspeed = maxSpeed * h
            spr = FALLING
        }
    }
}
