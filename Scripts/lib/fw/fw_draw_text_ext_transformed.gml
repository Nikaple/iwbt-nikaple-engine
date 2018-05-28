// boolean fw_draw_text_ext_transformed(real x, real y, string str, real w, real xscale, real yscale, real angle)
// Noisyfox's Writing
// Draw text
// Returns true if success, false otherwise

_NF_W_CreateArgs(4, argument3, argument4, argument5, argument6);
return external_call(global.__NF_W_ED_DrawTextTransformedExt, argument0, argument1, argument2);

