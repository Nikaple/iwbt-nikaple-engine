// towardsPlayer(target) target = 'host', 'guest', 'random'

var target, fakeDead, dirPlayer, dirFakePlayer, rnd;
target = set_default(argument0, 'host')

dirPlayer = point_direction(x, y, player.x, player.y)
dirFakePlayer = point_direction(x, y, objFakePlayer.x, objFakePlayer.y)

fakeDead = !instance_exists(objFakePlayer) || objFakePlayer.dead

if (!instance_exists(player)) {
    return dirFakePlayer
}

if (fakeDead) {
    return dirPlayer
}

if (target == 'host') {
    if (ns_is_host()) {
        return dirPlayer
    } else {
        return dirFakePlayer
    }
} else if (target == 'guest') {
    if (ns_is_guest()) {
        return dirPlayer
    } else {
        return dirFakePlayer
    }
} else {
    rnd = irandom(1)
    if (rnd == ns_is_host()) {
        return dirPlayer
    } else {
        return dirFakePlayer
    }
}
