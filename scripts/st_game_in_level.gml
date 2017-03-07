///Game In Level State


    // same with vertical view - "Hey this is the target X/Y view - snap/transition it there"
    target_xview = (obj_player.x div 256) * 256;
    target_yview = (obj_player.y div 176) * 176;
    
    //First time we enter room - snap view without transition
    if (state_time == 0)
    {
        view_xview[0] = target_xview;
        view_yview[0] = target_yview;
        
    }
    
    //Accesses move_toward() script
    view_xview[0] = move_toward(view_xview[0],target_xview,4);
    view_yview[0] = move_toward(view_yview[0],target_yview,4);
    
   if (state_time > 5 && Input.start) state_switch(st_game_menu_trans);
