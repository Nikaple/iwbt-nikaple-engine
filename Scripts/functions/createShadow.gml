///createShadow(alpha_speed,scale_speed);
//
//  creates a shadow of current object, often used in alarm or step events
//
//      alpha_speed     the value image_alpha decreases per step
//      scale_speed     the value image_xscale and image_yscale decreases per step
//
//
{
    var inst;
    inst = instance_create(x, y, objShadow)
    inst.sprite_index = sprite_index
    inst.image_xscale = image_xscale
    inst.image_yscale = image_yscale
    inst.image_index = image_index
    inst.image_speed = image_speed
    inst.image_angle = image_angle
    inst.image_blend = image_blend
    inst.depth = depth + 1
    inst.alpha_speed = argument0
    inst.scale_speed = argument1
}

