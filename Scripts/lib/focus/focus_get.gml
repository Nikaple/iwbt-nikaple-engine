//checks if the gm window has the focus
//returns - 1 = yes
//        - 0 = no
go = external_call(global.dllgmfocus_getfocus);
if go = window_handle()
    return 1;
else
    return 0;
