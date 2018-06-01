//string _NF_W_CreateArgs(int argCount, arg...)
// Noisyfox's Writing
// Create args for dll call
// DO NOT use it manually!

var count;
var i;
var list;

list = global.__NF_W_SYS_ArgumentList;

ds_list_clear(list);

count = argument[0];

for(i = 1; i <= count; i+=1){
    ds_list_add(list, argument[i]);
}

