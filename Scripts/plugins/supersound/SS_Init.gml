//Call this to start the system
var dll;
dll = working_directory+"\Data\Plugin\SuperSound.dll"
global.dll_SS_Init = external_define(dll, "SS_Init", dll_stdcall, ty_string, 0);
global.dll_SS_Unload = external_define(dll, "SS_Init", dll_stdcall, ty_string, 0);
global.dll_SS_LoadSound = external_define(dll, "SS_LoadSound", dll_stdcall, ty_string, 2, ty_string, ty_string);
global.dll_SS_PlaySound = external_define(dll, "SS_PlaySound", dll_stdcall, ty_string, 1, ty_string);
global.dll_SS_LoopSound = external_define(dll, "SS_LoopSound", dll_stdcall, ty_string, 1, ty_string);
global.dll_SS_StopSound = external_define(dll, "SS_StopSound", dll_stdcall, ty_string, 1, ty_string);
global.dll_SS_SetSoundFreq = external_define(dll, "SS_SetSoundFreq", dll_stdcall, ty_string, 2, ty_string, ty_string);
global.dll_SS_SetSoundPan = external_define(dll, "SS_SetSoundPan", dll_stdcall, ty_string, 2, ty_string, ty_string);
global.dll_SS_SetSoundVol = external_define(dll, "SS_SetSoundVol", dll_stdcall, ty_string, 2, ty_string, ty_string);
global.dll_SS_FreeSound = external_define(dll, "SS_FreeSound", dll_stdcall, ty_string, 1, ty_string);
global.dll_SS_IsSoundPlaying = external_define(dll, "SS_IsSoundPlaying", dll_stdcall, ty_string, 1, ty_string);
global.dll_SS_GetSoundPosition = external_define(dll, "SS_GetSoundPosition", dll_stdcall, ty_string, 1, ty_string);
global.dll_SS_SetSoundPosition = external_define(dll, "SS_SetSoundPosition", dll_stdcall, ty_string, 2, ty_string, ty_string);
global.dll_SS_GetSoundLength = external_define(dll, "SS_GetSoundLength", dll_stdcall, ty_string, 1, ty_string);
global.dll_SS_GetSoundBytesPerSecond = external_define(dll, "SS_GetSoundBytesPerSecond", dll_stdcall, ty_string, 1, ty_string);
global.dll_SS_GetSoundVol = external_define(dll, "SS_GetSoundVol", dll_stdcall, ty_string, 1, ty_string);
global.dll_SS_GetSoundFreq = external_define(dll, "SS_GetSoundFreq", dll_stdcall, ty_string, 1, ty_string);
global.dll_SS_GetSoundPan = external_define(dll, "SS_GetSoundPan", dll_stdcall, ty_string, 1, ty_string);
global.dll_SS_IsSoundLooping = external_define(dll, "SS_IsSoundLooping", dll_stdcall, ty_string, 1, ty_string);
global.dll_SS_IsSoundPaused = external_define(dll, "SS_IsSoundPaused", dll_stdcall, ty_string, 1, ty_string);
global.dll_SS_ResumeSound = external_define(dll, "SS_ResumeSound", dll_stdcall, ty_string, 1, ty_string);
global.dll_SS_PauseSound = external_define(dll, "SS_PauseSound", dll_stdcall, ty_string, 1, ty_string);
if external_call(global.dll_SS_Init) = "No" then begin
  i18n_show_error("Initialization of the sound system failed!", true);
end;
