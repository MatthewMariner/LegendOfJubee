/// check_collision_obj(vx, vy, obj)
var _vx, _vy, _xCollision, _yCollision;

_vx = argument[0];
_vy = argument[1];
_xCollision = false;
_yCollision = false;

//If we hit something - say collision is true
for (var i = 2; i < argument_count; i++) 
{

    //Checks X Collision
    if ( place_meeting(x + _vx, y, argument[i]) ) 
    {
        _xCollision = true;
    }
    
    
    //Checks Y Collision
    if ( place_meeting(x, y + _vy, argument[i]) ) 
    {
        _yCollision = true;
    }
    
}

x += _vx;
y += _vy;

//Divide coordinate by 8 - a whole number is returned - times 8 - snaps what is collided to grid (left or up)
if (_xCollision) 
{
    x = (x div 8) * 8;
    //fixes snap through issue
    if ( sign(vx) ) == -1 x += 8;
} 

if (_yCollision) 
{
    y = (y div 8) * 8;
    //fixes snap through issue
    if ( sign(vy) ) == -1 y += 8;
} 



return _xCollision || _yCollision;
