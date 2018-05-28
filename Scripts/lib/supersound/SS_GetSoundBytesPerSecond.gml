if is_real(argument0) then return 0;
return real(external_call(global.dll_SS_GetSoundBytesPerSecond, argument0));
