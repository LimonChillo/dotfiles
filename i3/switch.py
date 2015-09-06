#!/usr/bin/python2.7

import i3
# retrieve only active outputs
outputs = filter(lambda output: output['active'], i3.get_outputs())
terminal = outputs.pop(0)

i3.workspace(outputs[1]['current_workspace'])
i3.command('move', 'workspace to output right')
i3.command('workspace', 'next')

i3.workspace(terminal['current_workspace'])
i3.command('move', 'workspace to output eDP1')

i3.workspace(outputs[0]['current_workspace'])
i3.command('move', 'workspace to output left')
