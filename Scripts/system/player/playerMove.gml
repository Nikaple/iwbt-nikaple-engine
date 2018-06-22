nearPlatform = place_meeting(x, y + yflag * 4, platform)
onBlock =
    place_meeting(x, y + yflag, objBlock) ||
    place_meeting(x, y + yflag, activeBlock)
onConveyor = place_meeting(x, y + yflag, blockConveyor)
onIvyL = place_meeting(x - 1, y, WalljumpL) && !onBlock && !onPlatform
onIvyR = place_meeting(x + 1, y, WalljumpR) && !onBlock && !onPlatform
onIvy = onIvyL || onIvyR
inWater = place_meeting(x, y, objWaterParent)

if (!onIvy) {
    if (onConveyor) {
        conveyorSpeed = instance_place(x, y + yflag, blockConveyor).h
    } else {
        conveyorSpeed = 0
    }
    if (h != 0) {
        image_xscale = h
        hspeed = maxSpeed * h + conveyorSpeed
        hsp = hspeed
        isRunning = true
        spr = RUNNING
    } else {
        hspeed = conveyorSpeed
        spr = IDLING
    }
}

//jumping sprites
if (!onIvy && abs(vspeed) > grav * 2 && !onPlatform) {
    if (vspeed * yflag < 0) {
        spr = JUMPING
    } else {
        spr = FALLING
    }
}

// restore 1st jump
if (onBlock || onPlatform) {
    curJumps = 1
}

// set max vertical speed
if (inWater) {
    maxVspeed = maxWaterSpeed
} else {
    maxVspeed = maxAirSpeed
}

// vertical speed limitations
if (vspeed * yflag > maxVspeed) {
    vspeed = sign(vspeed) * maxVspeed
}



