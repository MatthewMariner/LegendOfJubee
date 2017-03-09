m_speed = 2;
hud_ht = 56;
level_ht = 176;
total_ht = hud_ht + level_ht;

if (!menu_open) {
    hud_y_tgt = 0;
    hud_ht_tgt = total_ht;
    lvl_y_tgt = total_ht;
    lvl_ht_tgt = 0;
    
    if (view_hport[1] == total_ht) {
        menu_open = true;
        state_switch(st_game_in_menu);
    }
    
} else {
    hud_y_tgt = level_ht;
    hud_ht_tgt = hud_ht;
    lvl_y_tgt = hud_ht;
    lvl_ht_tgt = level_ht;
    
    if (view_hport[1] == hud_ht) {
        menu_open = false;
        state_switch(st_game_in_level);
    }
}

//hud
view_yview[1] = move_toward(view_yview[1], hud_y_tgt, m_speed);   
view_hport[1] = move_toward(view_hport[1], hud_ht_tgt, m_speed);
view_hview[1] = move_toward(view_hview[1], hud_ht_tgt, m_speed);

//level 
view_hview[0] = move_toward(view_hview[0], lvl_ht_tgt, m_speed);
view_yport[0] = move_toward(view_yport[0], lvl_y_tgt, m_speed);
view_hport[0] = total_ht - view_hport[1];     
