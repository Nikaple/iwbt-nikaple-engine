/// fadeOut(time)
//
// gradually fade out current object(set image_alpha to 1 first)
//
//      time    the time to fade out, default is 10
//
//

if (argument0 != 0) {
    image_alpha -= 1 / argument0
} else {
    image_alpha -= 0.1
}
if (image_alpha <= 0) {
    instance_destroy()
}

