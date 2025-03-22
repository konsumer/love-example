-- eventually this will be in love 12.0
-- but this is a platform-agnostic wrapper around
-- https://github.com/love2d/lua-https

local loadNativeLibrary = require("loadNativeLibrary")
return loadNativeLibrary("https")
