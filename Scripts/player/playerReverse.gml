//reverse gravity
{
    //set variables
    global.reverse = !global.reverse
    yflag = -yflag
    //y coordinate adjust
    player.y += yflag * 4
    //restore second jump
    curJumps = 1
    vspeed = 0
    image_speed = 0.5
}

