//void fw_cleanup()
// Noisyfox's Writing
// Cleanup and free memory.

external_call(global.__NF_W_ED_Cleanup);
external_free(global.__NF_W_DLL);

global.__NF_W_DLL = 0;

global.__NF_W_ED_Init = 0;
global.__NF_W_ED_ReleaseCache = 0;
global.__NF_W_ED_Cleanup = 0;

global.__NF_W_ED_SetEncoding = 0;
global.__NF_W_ED_SetEncodingEx = 0;

global.__NF_W_ED_AddFont = 0;
global.__NF_W_ED_AddFontFromFile = 0;
global.__NF_W_ED_DeleteFont = 0;
global.__NF_W_ED_SetFontOffset = 0;
global.__NF_W_ED_PreloadFont = 0;
global.__NF_W_ED_SetFont = 0;
global.__NF_W_ED_EnablePixelAlignment = 0;

global.__NF_W_ED_StringWidth = 0;
global.__NF_W_ED_StringHeight = 0;
global.__NF_W_ED_StringWidthExt = 0;
global.__NF_W_ED_StringHeightExt = 0;

global.__NF_W_ED_SetHAlign = 0;
global.__NF_W_ED_SetVAlign = 0;

global.__NF_W_ED_SetLineSpacing = 0;

global.__NF_W_ED_DrawText = 0;
global.__NF_W_ED_DrawTextExt = 0;

global.__NF_W_ED_DrawTextTransformed = 0;
global.__NF_W_ED_DrawTextTransformedExt = 0;

global.__NF_W_ED_DrawTextColor = 0;
global.__NF_W_ED_DrawTextColorExt = 0;

global.__NF_W_ED_DrawTextTransformedColor = 0;
global.__NF_W_ED_DrawTextTransformedColorExt = 0;

sprite_delete(global.__NF_W_SYS_WorkingSprite);
ds_list_destroy(global.__NF_W_SYS_ArgumentList);

global.__NF_W_SYS_WorkingSprite = 0;
global.__NF_W_SYS_ArgumentList = 0;

