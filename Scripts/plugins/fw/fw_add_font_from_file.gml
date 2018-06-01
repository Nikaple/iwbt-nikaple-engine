// int fw_add_font_from_file(string ttf, real size, bool bold, bool italic, bool stroke)
// Noisyfox's Writing
// Register a font to draw
// Returns the font's index if success, -1 otherwise

var style;
style = 0;
if(argument2){
    style = style | 1;
}
if(argument3){
    style = style | 2;
}
if(argument4){
    style = style | 4;
}
return external_call(global.__NF_W_ED_AddFontFromFile, argument0, argument1, style);

