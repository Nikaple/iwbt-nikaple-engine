if is_real(argument0) then return "-1";
return real(external_call(global.dll_SS_GetSoundVol, argument0))+10000;
