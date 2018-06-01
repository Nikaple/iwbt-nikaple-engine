// boolean fw_draw_text_ext_color(real x, real y, string str, real w, real c1, real c2, real alpha)
// Noisyfox's Writing
// Draw text
// Returns true if success, false otherwise

_NF_W_CreateArgs(4, argument3, argument4, argument5, argument6);
return external_call(global.__NF_W_ED_DrawTextColorExt, argument0, argument1, argument2);

