// spikeSprite(normal_sprite, mini_sprite, image_speed)
//
//  Set the sprite of spikes using in different rooms
//
//  normal_sprite     sprite for normal spikes, 32*32, the origin should be in the center of the sprite
//  mini_sprite       (optional)sprite for mini spikes, 16*16, the origin should be in the center of the sprite
//  image_speed       (optional)setting the image_speed if your spike have multiple subimages

if (sprited) exit;

sprited = true

var spr, sprMini, sprSpeed;
spr = argument0
sprMini = argument1
sprSpeed = argument2
switch (object_index) {
    case spikeUp:
        drawSpr = spr
        image_speed = sprSpeed
        break
    case spikeDown:
        drawSpr = spr
        image_speed = sprSpeed
        break
    case spikeLeft:
        drawSpr = spr
        image_speed = sprSpeed
        break
    case spikeRight:
        drawSpr = spr
        image_speed = sprSpeed
        break
    case miniSpikeUp:
        if (sprMini) {
            drawSpr = sprMini
        } else {
            drawSpr = spr
            image_xscale = 0.5
            image_yscale = 0.5
        }
        image_speed = sprSpeed
        break
    case miniSpikeDown:
        if (sprMini) {
            drawSpr = sprMini
        } else {
            drawSpr = spr
            image_xscale = 0.5
            image_yscale = 0.5
        }
        image_speed = sprSpeed
        break
    case miniSpikeLeft:
        if (sprMini) {
            drawSpr = sprMini
        } else {
            drawSpr = spr
            image_xscale = 0.5
            image_yscale = 0.5
        }
        image_speed = sprSpeed
        break
    case miniSpikeRight:
        if (sprMini) {
            drawSpr = sprMini
        } else {
            drawSpr = spr
            image_xscale = 0.5
            image_yscale = 0.5
        }
        image_speed = sprSpeed
        break
    default:
        break
}


