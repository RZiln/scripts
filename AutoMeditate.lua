local keys = {
    T = "0x54",
    Y = "0x59",
    U = "0x55",
    P = "0x50",
    G = "0x47",
    H = "0x48",
    J = "0x4A",
    K = "0x4B",
    L = "0x4C",
    X = "0x58",
    C = "0x43",
    N = "0x4E",
    A = "0x41",
    S = "0x53",
    W = "0x57",
    D = "0x44"
}

local Gui = game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("MeditationGui")
local function checkKey()
    for key, value in pairs(keys) do
        local randomgui = Gui:WaitForChild("RandoGui")
        local textke = randomgui:WaitForChild("Key")
        local textkey = textke.Text
        if textkey == tostring(key) then
            print(key.." is being pressed")
            keypress(tonumber(value))
            wait(.1)
            keyrelease(tonumber(value))
        end
    end
end

while _G.Med == true do
    checkKey()
    wait(.5)
end