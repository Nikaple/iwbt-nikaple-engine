// boolean fw_draw_text_ext_transformed_color(real x, real y, string str, real w, real xscale, real yscale, real angle, real c1, real c2, real alpha)
// Noisyfox's Writing
// Draw text
// Returns true if success, false otherwise

_NF_W_CreateArgs(7, argument3, argument4, argument5, argument6, argument7, argument8, argument9);
return external_call(global.__NF_W_ED_DrawTextTransformedColorExt, argument0, argument1, argument2);

