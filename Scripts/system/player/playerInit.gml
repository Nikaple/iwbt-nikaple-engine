// Initializing player status
// global variables:
//
//  global.frozen       set to true to make player uncontrollable
//  global.frozen2      set to true to make player unmovable
//  global.reverse      0: normal kid ; 1: reverse kid
//

// whether can infinite jump or not
infJump = false
// first jump speed
jump[1] = 8.5
// second jump speed
jump[2] = 7
// you may use jump[3] to customize third/fourth jump speed

// maximum jump times
maxJumps = set_default(maxJumps, 2)
// horizontal speed
maxSpeed = set_default(maxSpeed, 3)
// gravity
grav = set_default(grav, 0.4)
// maximum speed when falling
maxAirSpeed = 9
// maximum speed when in water
maxWaterSpeed = 2
// shoot interval (frames)
shootInterval = set_default(shootInterval, -1)
// self explanatory
shouldDieWhenOutsideRoom = true
shouldWrapWhenOutsideRoom = false
// kid's sprite
playerSprite(
    sprPlayerIdle,
    sprPlayerRunning,
    sprPlayerFall,
    sprPlayerJump,
    sprPlayerSliding
)

