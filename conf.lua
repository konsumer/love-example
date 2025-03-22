-- add lib to path
local sep = package.path:find("\\") and "\\" or "/"
package.path = package.path .. ";." .. sep .. "lib" .. sep .. "?.lua"

function love.conf(t)
    t.window.width = 320
    t.window.height = 240
    t.window.title = "exmaple"
    t.identity = "example"
end
