if is_real(argument0) then return -1;
switch external_call(global.dll_SS_IsSoundPlaying,argument0) begin
  case "1":   return 1;
  case "0":    return 1;
  case "-1": return 0;
end;
