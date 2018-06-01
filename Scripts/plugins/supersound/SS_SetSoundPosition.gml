if is_real(argument0) then return 0;
if is_string(argument1) then return 0;
return real(external_call(global.dll_SS_SetSoundPosition,argument0,string(argument1)))+1;
