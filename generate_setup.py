import os
import re

fns = os.listdir('.')

temp = re.compile(r'workshop-(\d+)')

mod_ids = [re.match(temp, fn).group(1) for fn in fns if re.match(temp, fn)]

with open('dedicated_server_mods_setup.lua', 'w') as f:
    for mod_id in mod_ids:
        f.write('ServerModSetup("{}")\n'.format(mod_id))

