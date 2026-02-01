local Keyboard = peripheral.find("tm_keyboard")


local Driver = {}
Driver.__index = Driver

function Driver:Load()
    _G.Darwin.Logger:Msg("Darwin::Keyboard: Initializing...")
    Keyboard.setFireNativeEvents(true)
    _G.Darwin.Logger:Msg("Darwin::Keyboard: Ready!")
end

function Driver:GetKeyboard()
    return Keyboard
end

function Driver:Unload()
    _G.Darwin.Logger:Msg("Darwin::Keyboard: Say goodnight, Gracie.")
    Keyboard.setFireNativeEvents(false)
    _G.Darwin.Logger:Msg("Darwin::Keyboard: Shut down driver.")
end

return Driver
