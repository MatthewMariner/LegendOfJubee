///state_process(state)

if (state == 0)
{
    state = argument [0];
}

script_execute(state);

// increment state_time if state not changed
if (!state_changed) state_time++;
state_changed = false;
