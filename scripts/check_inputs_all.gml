if (Input.up) state = "UP";
if (Input.down) state = "DOWN";
if (Input.left) state = "LEFT";
if (Input.right) state = "RIGHT";
if (!Input.up && !Input.down && !Input.left && !Input.right) state = "IDLE";
if (Input.button_a) state = "ATTACK_SWORD_START";
