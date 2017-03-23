//Instead of using the target_view switching mechanism for changing rooms all on one big room - we are now gunna use canvasas
//Create surface/canvas -> Target surface with paint -> Use surface

//Instantiate surface object
if (!surface_exists(global.surface_level))
{
    global.surface_level = surface_create(256, 176);
}

//Instantiate HUD
if (!instance_exists(obj_menu))
{
    instance_create(0,0, obj_menu);
}

//Set surface as object/canvas && clear it
surface_set_target(global.surface_level);
draw_clear_alpha(c_black, 1);

//Draw Surface && Reset It After
view_surface_id[0] = global.surface_level;
surface_reset_target();

if (state_time > 5 && Input.start) state_switch(st_game_menu_trans);
