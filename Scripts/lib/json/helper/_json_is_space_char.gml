var ascii;
ascii = ord(argument0)

switch(ascii) {
    case 9:
    case 10:
    case 13:
    case 32:
        return true;
    default:
        return false;
}
