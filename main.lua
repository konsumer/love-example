local https = require("https")
local lick = require("lick")
lick.reset = true

function love.load()
end

function love.update(dt)
end

function love.draw(dt)
    love.graphics.print("Hello World!", 120, 110)
end
