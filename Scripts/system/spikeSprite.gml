// spikeSprite(normal_sprite, mini_sprite, image_speed)
//
//  Set the sprite of spikes using in different rooms
//
//  normal_sprite     sprite for normal spikes, 32*32, the origin should be in the center of the sprite
//  mini_sprite       (optional)sprite for mini spikes, 16*16, the origin should be in the center of the sprite
//  image_speed       (optional)setting the image_speed if your spike have multiple subimages
{
    var spr, sprMini, sprSpeed;
    spr = argument0
    sprMini = argument1
    sprSpeed = argument2
    switch (object_index) {
        case spikeUp:
            sprite_index = spr
            image_speed = sprSpeed
            x += 16
            y += 16
            break
        case spikeDown:
            sprite_index = spr
            image_angle = 180
            x += 15
            y += 15
            image_speed = sprSpeed
            break
        case spikeLeft:
            sprite_index = spr
            image_angle = 90
            x += 16
            y += 15
            image_speed = sprSpeed
            break
        case spikeRight:
            sprite_index = spr
            image_angle = 270
            x += 15
            y += 16
            image_speed = sprSpeed
            break
        case minispikeUp:
            if (sprMini) {
                sprite_index = sprMini
            } else {
                sprite_index = spr
                image_xscale = 0.5
                image_yscale = 0.5
            }
            image_speed = sprSpeed
            x += 8
            y += 8
            break
        case minispikeDown:
            if (sprMini) {
                sprite_index = sprMini
            } else {
                sprite_index = spr
                image_xscale = 0.5
                image_yscale = 0.5
            }
            image_angle = 180
            x += 7
            y += 7
            image_speed = sprSpeed
            break
        case minispikeLeft:
            if (sprMini) {
                sprite_index = sprMini
            } else {
                sprite_index = spr
                image_xscale = 0.5
                image_yscale = 0.5
            }
            image_angle = 90
            x += 8
            y += 7
            image_speed = sprSpeed
            break
        case minispikeRight:
            if (sprMini) {
                sprite_index = sprMini
            } else {
                sprite_index = spr
                image_xscale = 0.5
                image_yscale = 0.5
            }
            image_angle = 270
            x += 7
            y += 8
            image_speed = sprSpeed
            break
    }
}

