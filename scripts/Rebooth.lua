--[[
 __    __     __  __        ______   __  __     __   __     ______     ______    
/\ "-./  \   /\ \_\ \      /\  ___\ /\ \/\ \   /\ "-.\ \   /\  ___\   /\  ___\   
\ \ \-./\ \  \ \____ \     \ \  __\ \ \ \_\ \  \ \ \-.  \  \ \ \____  \ \___  \  
 \ \_\ \ \_\  \/\_____\     \ \_\    \ \_____\  \ \_\\"\_\  \ \_____\  \/\_____\ 
  \/_/  \/_/   \/_____/      \/_/     \/_____/   \/_/ \/_/   \/_____/   \/_____/ 
                                                                                 
]]

function BoothUpd(BOOTH_text, BOOTH_image)
	local args = {
		[1] = "ChangeTIM",
		[2] = BOOTH_text,
		[3] = tostring(string.gsub(tostring(BOOTH_image), "%D", "")) or "0"
	}
	game:GetService("ReplicatedStorage").Remotes.Booth.BoothFunc:InvokeServer(unpack(args))
end

--[[
 ______     ______     __  __     ______   __     ______     __         _____    
/\  == \   /\  __ \   /\ \_\ \   /\  ___\ /\ \   /\  ___\   /\ \       /\  __-.  
\ \  __<   \ \  __ \  \ \____ \  \ \  __\ \ \ \  \ \  __\   \ \ \____  \ \ \/\ \ 
 \ \_\ \_\  \ \_\ \_\  \/\_____\  \ \_\    \ \_\  \ \_____\  \ \_____\  \ \____- 
  \/_/ /_/   \/_/\/_/   \/_____/   \/_/     \/_/   \/_____/   \/_____/   \/____/
]]

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "Rebooth",
   LoadingTitle = "Loading Rebooth",
   LoadingSubtitle = "by @s728",
   Theme = "Default", -- Check https://docs.sirius.menu/rayfield/configuration/themes

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface

   ConfigurationSaving = {
      Enabled = false,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "Big Hub"
   },

   Discord = {
      Enabled = false, -- Prompt the user to join your Discord server if their executor supports it
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },

   KeySystem = false, -- Set this to true to use our key system
   KeySettings = {
      Title = "Untitled",
      Subtitle = "Key System",
      Note = "No method of obtaining the key is provided", -- Use this to tell the user how to get a key
      FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"Hello"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})



local iTab = Window:CreateTab("About", "info")

local iSec = iTab:CreateSection("Info")

local copyDuser = iTab:CreateButton({
   Name = "Made by kivalS. Click to copy discord.",
   Callback = function()
   	setclipboard("@s728")
   end,
})

local execLabel = iTab:CreateLabel("Running on "..identifyexecutor())

local Pagra = iTab:CreateParagraph({Title = "Goodbye RMA", Content = "After years of being used to exploit, have fun, socialize and other horrible stuff, Rate my Avatar has come to an end, due to Roblox now deleting unmoderated games Rate my Avatar no longer exists, due to this I have now moved to making scripts for Booth Game, which is very similar but is 10x better. Wish you all happy exploiting!"})




local fTab = Window:CreateTab("Fun", "laugh")

local gambl = fTab:CreateSection("Gambling")

function Roll(ROLL_type)
	if ROLL_type == "Image" then
		BoothUpd("Rolled random image.", math.random(0, 999999999999))
	elseif ROLL_type == "Casino" then
		rolled = math.random(0, 1)
		BoothUpd("Rolling wheel...", 135462631019988)
		task.wait(5)
		if rolled == 0 then
			BoothUpd("Fell on Red!", 108780214458209)
		else
			BoothUpd("Fell on Black!", 112706482810727)
		end
	end
end

local rollcasbtn = fTab:CreateButton({
   Name = "Roll casino",
	Callback = function()
		Roll("Casino")
	end,
})

local rollimgbtn = fTab:CreateButton({
   Name = "Roll image",
	Callback = function()
		Roll("Image")
	end,
})
