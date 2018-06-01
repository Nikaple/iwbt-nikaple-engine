if is_real(argument0) then return "0";
if is_string(argument1) then begin
  return external_call(global.dll_SS_SetSoundVol,
                       argument0,
                       string(real(argument1)-10000)
  );
end else begin
  return external_call(global.dll_SS_SetSoundVol,
                       argument0,
                       string(argument1-10000)
  );
end;
