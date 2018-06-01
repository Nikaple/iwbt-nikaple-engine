if (global.frozen || onIvy || !jumpPressed) exit

var jumpSound

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
    audio_playsound(jumpSound)
    vspeed = -yflag * jump[curJumps]
    playerVJump()
    //next jump
    curJumps += 1
}
//infinite jump
else if (infJump || place_meeting(x, y + yflag, objWaterNo2ndJump)) {
    audio_playsound(jumpSound)
    //this will set the jumping speed to the last jump
    vspeed = -yflag * jump[maxJumps]
    playerVJump()
    curJumps = maxJumps + 1
}

