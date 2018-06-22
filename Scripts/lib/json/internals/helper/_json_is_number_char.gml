var char, ascii;
char = argument0
ascii = ord(char)
switch (char) {
    case '-':
    case '+':
    case 'e':
    case 'E':
    case '.':
        return true
    default:
        if (ascii >= 48 && ascii <= 57) {
            return true
        }
        return false
}

