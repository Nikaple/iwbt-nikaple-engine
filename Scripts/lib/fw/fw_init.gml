//void fw_init()
// Noisyfox's Writing
// Initialize the variables using by these script.

/*
globalvar FontStyleRegular;
globalvar FontStyleBold;
globalvar FontStyleItalic;
globalvar FontStyleUnderline;
globalvar FontStyleStrikeout;

FontStyleRegular    = 0;
FontStyleBold       = 1;
FontStyleItalic     = 2;
FontStyleUnderline  = 4;
FontStyleStrikeout  = 8;
*/

global.__NF_W_DLL = working_directory+'\Data\Plugin\FoxWriting.dll';

global.__NF_W_ED_Init = external_define(global.__NF_W_DLL, "FWInit", dll_stdcall, ty_real, 2, ty_real, ty_real);
global.__NF_W_ED_ReleaseCache = external_define(global.__NF_W_DLL, "FWReleaseCache", dll_stdcall, ty_real, 0);
global.__NF_W_ED_Cleanup = external_define(global.__NF_W_DLL, "FWCleanup", dll_stdcall, ty_real, 0);

global.__NF_W_ED_SetEncoding = external_define(global.__NF_W_DLL, "FWSetEncoding", dll_stdcall, ty_real, 1, ty_string);
global.__NF_W_ED_SetEncodingExt = external_define(global.__NF_W_DLL, "FWSetEncodingEx", dll_stdcall, ty_real, 1, ty_real);

global.__NF_W_ED_AddFont = external_define(global.__NF_W_DLL, "FWAddFont", dll_stdcall, ty_real, 3, ty_string, ty_real, ty_real);
global.__NF_W_ED_AddFontFromFile = external_define(global.__NF_W_DLL, "FWAddFontFromFile", dll_stdcall, ty_real, 3, ty_string, ty_real, ty_real);
global.__NF_W_ED_DeleteFont = external_define(global.__NF_W_DLL, "FWDeleteFont", dll_stdcall, ty_real, 1, ty_real);
global.__NF_W_ED_SetFontOffset = external_define(global.__NF_W_DLL, "FWSetFontOffset", dll_stdcall, ty_real, 3, ty_real, ty_real, ty_real);
global.__NF_W_ED_PreloadFont = external_define(global.__NF_W_DLL, "FWPreloadFont", dll_stdcall, ty_real, 3, ty_real, ty_real, ty_real);
global.__NF_W_ED_SetFont = external_define(global.__NF_W_DLL, "FWSetFont", dll_stdcall, ty_real, 1, ty_real);
global.__NF_W_ED_EnablePixelAlignment = external_define(global.__NF_W_DLL, "FWEnablePixelAlignment", dll_stdcall, ty_real, 1, ty_real);

global.__NF_W_ED_StringWidth = external_define(global.__NF_W_DLL, "FWStringWidth", dll_stdcall, ty_real, 1, ty_string);
global.__NF_W_ED_StringHeight = external_define(global.__NF_W_DLL, "FWStringHeight", dll_stdcall, ty_real, 1, ty_string);
global.__NF_W_ED_StringWidthExt = external_define(global.__NF_W_DLL, "FWStringWidthEx", dll_stdcall, ty_real, 3, ty_string, ty_real, ty_real);
global.__NF_W_ED_StringHeightExt = external_define(global.__NF_W_DLL, "FWStringHeightEx", dll_stdcall, ty_real, 3, ty_string, ty_real, ty_real);

global.__NF_W_ED_SetHAlign = external_define(global.__NF_W_DLL, "FWSetHAlign", dll_stdcall, ty_real, 1, ty_real);
global.__NF_W_ED_SetVAlign = external_define(global.__NF_W_DLL, "FWSetVAlign", dll_stdcall, ty_real, 1, ty_real);

global.__NF_W_ED_SetLineSpacing = external_define(global.__NF_W_DLL, "FWSetLineSpacing", dll_stdcall, ty_real, 1, ty_real);

global.__NF_W_ED_DrawText = external_define(global.__NF_W_DLL, "FWDrawText", dll_stdcall, ty_real, 3, ty_real, ty_real, ty_string);
global.__NF_W_ED_DrawTextExt = external_define(global.__NF_W_DLL, "FWDrawTextEx", dll_stdcall, ty_real, 3, ty_real, ty_real, ty_string);

global.__NF_W_ED_DrawTextTransformed = external_define(global.__NF_W_DLL, "FWDrawTextTransformed", dll_stdcall, ty_real, 3, ty_real, ty_real, ty_string);
global.__NF_W_ED_DrawTextTransformedExt = external_define(global.__NF_W_DLL, "FWDrawTextTransformedEx", dll_stdcall, ty_real, 3, ty_real, ty_real, ty_string);

global.__NF_W_ED_DrawTextColor = external_define(global.__NF_W_DLL, "FWDrawTextColor", dll_stdcall, ty_real, 3, ty_real, ty_real, ty_string);
global.__NF_W_ED_DrawTextColorExt = external_define(global.__NF_W_DLL, "FWDrawTextColorEx", dll_stdcall, ty_real, 3, ty_real, ty_real, ty_string);

global.__NF_W_ED_DrawTextTransformedColor = external_define(global.__NF_W_DLL, "FWDrawTextTransformedColor", dll_stdcall, ty_real, 3, ty_real, ty_real, ty_string);
global.__NF_W_ED_DrawTextTransformedColorExt = external_define(global.__NF_W_DLL, "FWDrawTextTransformedColorEx", dll_stdcall, ty_real, 3, ty_real, ty_real, ty_string);

global.__NF_W_SYS_WorkingSprite = sprite_create_from_screen(0, 0, 1, 1, false, false, 0, 0);
global.__NF_W_SYS_ArgumentList = ds_list_create();

result = external_call(global.__NF_W_ED_Init, global.__NF_W_SYS_WorkingSprite, global.__NF_W_SYS_ArgumentList);

if(!result){
    show_error("FowWriting 初始化失败！", true);
}

