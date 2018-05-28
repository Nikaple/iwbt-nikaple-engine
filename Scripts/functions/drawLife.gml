/// drawLife(x1,y1,x2,y2,curVal,maxVal,col1,col2,outline)
//
//  Draws a lifebar in a region with the given colors
//
//      x1,y1       1st corner of the rectangle, real
//      x2,y2       2nd corner of the rectangle, real
//      curVal      current value(current hp), real
//      maxVal      maximum value(maximum hp), real
//      col1        color when curVal=maxVal, real
//      col2        color when curVal=0, real
//      outline     true to draw the outline, bool
//
{
    var percentage, x1, y1, x2, y2, curVal, maxVal, col1, col2, outline;
    x1 = argument0
    y1 = argument1
    x2 = argument2
    y2 = argument3
    curVal = argument4
    maxVal = argument5
    col1 = argument6
    col2 = argument7
    outline = argument8
    percentage = argument4 / argument5
    draw_set_alpha(percentage)
    draw_rectangle_single_color(x1, y1, x1 + (x2 - x1) * percentage, y2, col1, 0)
    draw_set_alpha(1 - percentage)
    draw_rectangle_single_color(x1, y1, x1 + (x2 - x1) * percentage, y2, col2, 0)
    draw_set_alpha(1)
    if (outline) {
        draw_set_color(c_black)
        draw_rectangle(x1, y1, x2, y2, 1)
    }
}


