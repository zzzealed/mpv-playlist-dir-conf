local utils = require 'mp.utils'
local first_entry = mp.get_property('playlist/0/filename')

if first_entry then
    local path = select(1, utils.split_path(first_entry)) .. 'mpv.conf'
    if utils.file_info(path) then
        mp.commandv('load-config-file', path)
    end
end
