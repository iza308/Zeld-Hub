setclipboard("https://discord.gg/FJFZMCu5JX")
wait(1)
local repo = "https://raw.githubusercontent.com/iza308/Zeld-Hub/refs/heads/main/Module/Games/"
local function LoadScript(ScriptName)
	pcall(function()
		t = 0
		repeat
			local s, r = pcall(function()
				loadstring(game:HttpGet(repo .. ScriptName))()
			end)
			if not s then
				spawn(function()
					error(r)
				end)
			end
			t = t + 1
			wait(1)
		until getgenv().Executed or t >= 1
	end)
end
local Id = game.PlaceId
local GameId = game.GameId
local PlaceIds = {
	["DR"] = { 70876832253163, 116495829188952 },
}
if table.find(PlaceIds["DR"], GameId) then
	LoadScript("Dead%20Rails.lua")
end

