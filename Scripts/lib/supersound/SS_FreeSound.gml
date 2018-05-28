if is_real(argument0) then return "0"
external_call(global.dll_SS_StopSound,argument0);
return external_call(global.dll_SS_FreeSound,argument0);
