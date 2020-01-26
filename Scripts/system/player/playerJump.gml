if (global.frozen) exit

var jumpSound

if (jumpPressed) {
    if (nearPlatform) {
        // if player jumps near platform, keep 1st jump
        curJumps = 1
    } else if (curJumps == 1 && !onBlock && !onPlatform) {
        // use 1st jump
        curJumps = 2
    }
    // set jump sound effect
    if ((curJumps = 1)) {
        jumpSound = sndJump
    } else {
        jumpSound = sndDJump
    }
    if (curJumps <= maxJumps) {
        music_play(jumpSound)
        vspeed = -yflag * set_default(jump[curJumps], jump[2])
        isJumping = true
        canVJump = true
        //next jump
        if (!keepSecondJump)
            curJumps += 1
    } else if (infJump || place_meeting(x, y + yflag, objWaterNo2ndJump)) {
        //infinite jump
        music_play(jumpSound)
        //this will set the jumping speed to the last jump
        vspeed = -yflag * set_default(jump[maxJumps], jump[2])
        isJumping = true
        canVJump = true
        curJumps = maxJumps + 1
    }
}

if (jumpReleased) {
    if (global.enable_jump_cancel) {
        playerVJump()
    }  else {
        if (canVJump) {
            playerVJump()
        }
    }
}