//check whether player is outside of the room

if (x < 0) {
    return true
}
if (x > room_width) {
    return true
}
if (y < 0) {
    return true
}
if (y > room_height) {
    return true
}
return false

