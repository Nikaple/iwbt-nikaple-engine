// boolean fw_draw_text_transformed_color(real x, real y, string str, real xscale, real yscale, real angle, real c1, real c2, real alpha)
// Noisyfox's Writing
// Draw text
// Returns true if success, false otherwise

_NF_W_CreateArgs(6, argument3, argument4, argument5, argument6, argument7, argument8);
return external_call(global.__NF_W_ED_DrawTextTransformedColor, argument0, argument1, argument2);

