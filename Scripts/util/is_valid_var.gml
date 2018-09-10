var str, char, isValid;
str = argument0
isValid = true
for (i = 0; i < string_length(str); i += 1) {
    char = ord(string_copy(str, i + 1, 1))
    if ((char >= 48 && char <= 57) || (char >= 65 && char <= 90) || (char >= 97 && char <= 122) || char == 95) {
        // char is 0-9 or A-Z or a-z or _, valid
    } else {
        // invalid
        isValid = false
        break
    }
}

return isValid

