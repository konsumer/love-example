local function loadNativeLibrary(name)
    local os_name = love.system.getOS()
    local lib_path
    local extension

    if os_name == "OS X" then
        lib_path = "lib/native/macos/"
        extension = ".so"
    elseif os_name == "Windows" then
        lib_path = "lib/native/windows/"
        extension = ".dll"
    elseif os_name == "Linux" then
        lib_path = "lib/native/linux/"
        extension = ".so"
    elseif os_name == "Android" then
        lib_path = "lib/native/android/"
        extension = ".so"
    elseif os_name == "iOS" then
        lib_path = "lib/native/ios/"
        extension = ".dylib" -- or .a depending on how you build it
    else
        error("Unsupported platform: " .. os_name)
    end

    local full_path = lib_path .. name .. extension
    return package.loadlib(full_path, "luaopen_" .. name)()
end

return loadNativeLibrary
