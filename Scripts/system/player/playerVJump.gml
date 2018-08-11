//playerVJump

if (yflag * vspeed < 0 && !firstFrame) {
    vspeed *= 0.45
    eventSync = true
    canVJump = false
}
