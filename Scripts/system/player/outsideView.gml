//check whether player is outside of the view

if (x < view_xview[0]) {
    return true
}
if (x > view_xview[0] + view_wview[0]) {
    return true
}
if (y < view_yview[0]) {
    return true
}
if (y > view_yview[0] + view_hview[0]) {
    return true
}
return false

