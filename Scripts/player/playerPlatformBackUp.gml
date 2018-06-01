// playerPlatform
// This script is written by dalao: -NIHIL-
// http://tieba.baidu.com/home/main?un=towanoICIT

var tempv, tempvpf;
if(yflag == 1)
{
    if(onPlatform && !keyboard_check_pressed(global.jumpbutton))
        tempvpf = pf.vspeed;
    else
        tempvpf = 0;
        
    pf = collision_line(bbox_left + 2, bbox_top, bbox_left + hspeed + 2, bbox_bottom + vspeed + gravity + abs(tempvpf) + 1, platform, 1, 1);
    if(pf == noone)
        pf = collision_line(bbox_right - 1, bbox_top, bbox_right + hspeed - 1, bbox_bottom + vspeed + gravity + abs(tempvpf) + 1, platform, 1, 1);
    
    if(pf == noone)
    {
        if(onPlatform == 1 && !keyboard_check_pressed(global.jumpbutton) && tempvpf > 0)
            vspeed = tempvpf;

        onPlatform = false;
        return 0;
    }
    else if(bbox_bottom + vspeed > pf.bbox_top + 9)
    {
        if(onPlatform == 1 && !keyboard_check_pressed(global.jumpbutton) && tempvpf > 0)
            vspeed = tempvpf;
        
        x += pf.hspeed;            
        onPlatform = false;
        return 0;
    }
    else
    {   
        onPlatform = 1;
        curJumps = 1;
        
        vspeed = 0;
        gravity = 0;
        y -= bbox_bottom - pf.bbox_top;
        y -= 1;
        
        //var cb;
        cb = instance_place(x + pf.hspeed, y + pf.vspeed, objBlock);
        if(cb == noone || cb == pf)
        {
            x += pf.hspeed;
            y += pf.vspeed;
        }
        else if (pf.hspeed != 0)
        {
            move_contact_object(pf.direction, pf.speed, objBlock);
        }
    }
}
else
{
    if(onPlatform && !keyboard_check_pressed(global.jumpbutton))
        tempvpf = pf.vspeed;
    else
        tempvpf = 0;
    
    pf = collision_line(bbox_right, bbox_bottom, bbox_right + hspeed - 1, bbox_top + vspeed + gravity - abs(tempvpf), platform, 1, 1);
    if(pf == noone)
        pf = collision_line(bbox_left, bbox_bottom, bbox_left + hspeed, bbox_top + vspeed + gravity - abs(tempvpf), platform, 1, 1);
    
    if(pf == noone)
    {
        if(onPlatform == 1 && !keyboard_check_pressed(global.jumpbutton) && tempvpf < 0)
            vspeed = tempvpf;
            
        onPlatform = false;
        return 0;
    }
    else if(bbox_top < pf.bbox_bottom - 9)
    {
        if(onPlatform == 1 && !keyboard_check_pressed(global.jumpbutton) && tempvpf < 0)
            vspeed = tempvpf;
            
        x += pf.hspeed;
        onPlatform = false;
        return 0;
    }
    else
    {   
        onPlatform = 1;
        curJumps = 1;
        
        vspeed = 0;
        gravity = 0;
        y +=  pf.bbox_bottom - bbox_top;
        
        //var cb;
        cb = instance_place(x + pf.hspeed, y + pf.vspeed, objBlock);
        if(cb == noone || cb == pf)
        {
            x += pf.hspeed;
            y += pf.vspeed;
        }
        else
        {
            move_contact_object(pf.direction, pf.speed, objBlock);
        }
    }
}
