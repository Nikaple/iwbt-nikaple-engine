nearPlatform = place_meeting(x, y + yflag * 4, platform)
onBlock =
    place_meeting(x, y + yflag, objBlock) ||
    place_meeting(x, y + yflag, activeBlock)
onConveyor = place_meeting(x, y + yflag, blockConveyor)
onIvyL = place_meeting(x - 1, y, objWalljumpL) && !onBlock && !onPlatform
onIvyR = place_meeting(x + 1, y, objWalljumpR) && !onBlock && !onPlatform
onIvy = onIvyL || onIvyR
colWater = collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, objWaterParent, 0, 1)
inWater = !!colWater
 
// moving
if (!onIvy) {
    // on conveyor
    if (onConveyor) {
        conveyorSpeed = instance_place(x, y + yflag, blockConveyor).h
    } else {
        conveyorSpeed = 0
    }
    if (h != 0) {
        // running
        image_xscale = h
        hspeed = maxSpeed * h + conveyorSpeed
        hsp = hspeed
        isRunning = true
        spr = RUNNING
    } else {
        // idling
        hspeed = conveyorSpeed
        spr = IDLING
    }
}

//jumping sprites
if (!onIvy && !onPlatform && !onBlock) {
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
    if (colWater.spd != 0) {
        maxVspeed = colWater.spd
    } else {
        maxVspeed = maxWaterSpeed
    }
} else {
    maxVspeed = maxAirSpeed
}

// vertical speed limitations
if (vspeed * yflag > maxVspeed) {
    vspeed = sign(vspeed) * maxVspeed
}



