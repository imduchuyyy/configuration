require('terry.base')
require('terry.highlights')
require('terry.maps')
require('terry.plugins')

require('neoscroll').setup()

local has = vim.fn.has
local is_mac = has "macunix"
local is_win = has "win32"
local is_wsl = has "wsl"

if is_mac then
        require('terry.macos')
end
if is_win then
        require('terry.windows')
end
if is_wsl then
        require('terry.wsl')
end
