// boolean fw_draw_text_ext(real x, real y, string str, real w)
// Noisyfox's Writing
// Draw text with w specific
// Returns true if success, false otherwise

_NF_W_CreateArgs(1, argument3);
return external_call(global.__NF_W_ED_DrawTextExt, argument0, argument1, argument2);

