var str, argCount, i;
str = string(argument0)
argCount = argument1

for (i = 0; i < argCount; i += 1) {
    if (str == argument[i + 2]) {
        return true
    }
}
return false

