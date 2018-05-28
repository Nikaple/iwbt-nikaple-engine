/// fadeIn(time)
//
// gradually fade in current object(set image_alpha to 0 first)
//
//      time    the time to fade in, default is 10
//
//
{
    if (image_alpha <= 1) {
        if (argument0 != 0) {
            image_alpha += 1 / argument0
        } else {
            image_alpha += 0.1
        }
    } else {
        image_alpha = 1
    }
}

