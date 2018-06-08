//wall jump

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
            music_play(sndWallJump)
            eventSync = true
            alarm[0] = 1
        } else {
            hspeed = maxSpeed * image_xscale
            spr = FALLING
        }
    }
}
