// boolean fw_draw_text_transformed(real x, real y, string str, real xscale, real yscale, real angle)
// Noisyfox's Writing
// Draw text
// Returns true if success, false otherwise

_NF_W_CreateArgs(3, argument3, argument4, argument5);
return external_call(global.__NF_W_ED_DrawTextTransformed, argument0, argument1, argument2);

