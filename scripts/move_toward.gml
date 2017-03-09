/// move_toward(start, end, val)

var _start, _end, _val;

_start = argument0;
_end = argument1;
_val = argument2;

if (_start < _end) {
    return min(_start + _val, _end);
} else {
    return max(_start - _val, _end);
}
