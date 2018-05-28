/// _cmd_extract_key(key)

var len, key, keyLen;
key = argument0
len = string_length(key)
keyLen = string_length(CMD_KEY)

if (string_copy(key, 1, keyLen) == CMD_KEY) {
    return string_copy(key, keyLen + 1, len - keyLen)
} else {
    return ''
}

