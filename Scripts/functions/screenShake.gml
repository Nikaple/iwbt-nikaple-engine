///screenShake(time,shakeX,shakeY)
//
//  shakes the screen for an amount of time
//
//      time        the time to shake
//      shakeX      the maximum shaking intensity in x axis(pixel)
//      shakeY      the maximum shaking intensity in y axis(pixel)
//

var inst;
inst = instance_create(view_xview[0], view_yview[0], objShake)
inst.alarm[0] = argument0
inst.shakeX = argument1
inst.shakeY = argument2
