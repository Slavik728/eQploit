-- w.i.p.
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "eQploit script hub",
   Icon = 114282498599210, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "eQploit hub",
   LoadingSubtitle = "by s728",
   Theme = "DarkBlue", -- Check https://docs.sirius.menu/rayfield/configuration/themes

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface

   ConfigurationSaving = {
      Enabled = false,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "Big Hub"
   },

   Discord = {
      Enabled = true, -- Prompt the user to join your Discord server if their executor supports it
      Invite = "3wdGWjy5UJ", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ ABCD would be ABCD
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

local InfoTab = Window:CreateTab("Info", "info")

local YruLabel = InfoTab:CreateLabel("You are currently using eQploit team's script hub", 114282498599210, Color3.fromRGB(50, 50, 150), false) -- Title, Icon, Color, IgnoreTheme

local MenuTab = Window:CreateTab("Menus/Admins/Hubs", "app-window")

local IY = MenuTab:CreateButton({
      Name = "Infinite Yield",
         Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
               end,
})
local Krunox = MenuTab:CreateButton({
      Name = "Krunox",
         Callback = function()
            loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Krunox-13336"))()
               end,
})
local Idk = MenuTab:CreateButton({
      Name = "Skyhub trolling gui",
         Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/yofriendfromschool1/Sky-Hub/main/FE%20Trolling%20GUI.luau"))()
               end,
})
