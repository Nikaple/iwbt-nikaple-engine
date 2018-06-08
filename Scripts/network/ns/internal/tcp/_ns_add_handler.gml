// _ns_add_handler(map, scriptId, handlerPrefix)
var handlerMap, scriptId, scriptName, handlerPrefix, handlerName, handlerLength, eventName;
handlerMap = argument0
scriptId = argument1
scriptName = script_get_name(scriptId)
scriptNameLength = string_length(scriptName)
handlerPrefix = argument2
handlerPrefixLength = string_length(handlerPrefix)

if (string_copy(scriptName, 1, handlerPrefixLength) == handlerPrefix) {
    eventName = string_copy(
        scriptName,
        handlerPrefixLength + 1,
        scriptNameLength - handlerPrefixLength
    )
    ds_map_add(handlerMap, eventName, scriptId)
}
