
-- ห้ามปรับอะไรตรงนี้

-- ตรงนี้ไป คือห้ามเปลียนแปลงอะไร
_G.AutoReMap = false
_G.AutoRaid = false

_G.AutoFarm_Set = false


_G.AutoSkill_Set = false
_G.AutoClick_Set = false  
_G.Boss_Raid_Freeze = false  
_G.Skill_1_Set = false
_G.Skill_2_Set = false
_G.Skill_3_Set = false
_G.Skill_4_Set = false
_G.Skill_Q_Set = false
_G.Skill_E_Set = false


local Name_File = "Settings_7DarkHub.config"

local DefaultSettings = {
Raid_Map = "Combat Titan Raid"
}



if not pcall(function() readfile(Name_File) end) then writefile(Name_File, game:service'HttpService':JSONEncode(DefaultSettings)) end

Settings_Call_text = game:service'HttpService':JSONDecode(readfile(Name_File))



_G.Check_Map = Nick_Map
_G.MobTP = Name_Mob
_G.HealthAmount_text = 100 -- เลือด
_G.Player_Position = 0 
_G.UI_Resu = false -- หน้าต่างตอนจบเกมส์ส
_G.RetryDungeon_text = false -- จำนวนคนรีแมพเดิมซํ้า
_G.Raid_Join_Time = Time
_G.Raid_Map_Name = Settings_Call_text.Raid_Map
_G.Raid_Map_Check = false
_G.Ui_Teleporting = false
_G.AOTLobby_AFK_TIME = 1

_G.Skill1_Check = false
_G.Skill2_Check = false
_G.Skill3_Check = false
_G.Skill4_Check = false
_G.SkillE_Check = false
_G.SkillR_Check = false



spawn(function()
while wait(0.8) do 
 
 pcall(function()
     
     
 spawn(function()     
 pcall(function()
  _G.HealthAmount_text = tonumber(game:GetService("Players").LocalPlayer.PlayerGui.UniversalGui.LeftUIFrame.OwnHealthBarFrame.HealthAmount.Text) -- เลือด
 end)
 end)
 
 
 spawn(function()
 pcall(function()     
  _G.Player_Position = game.Players.LocalPlayer.Character.HumanoidRootPart.Position -- ตำแหน่งตัวเรา
 end)
 end)
 
 
 spawn(function()
 pcall(function()
  _G.UI_Resu = game:GetService("Players").LocalPlayer.PlayerGui.UniversalGui.UniversalCenterUIFrame.ResultUI.TeleportingTimeText.Text -- หน้าต่างตอนจบเกมส์
 end)
 end)
 
 
 spawn(function()
 pcall(function()     
  _G.RetryDungeon_text = game:GetService("Players").LocalPlayer.PlayerGui.UniversalGui.UniversalCenterUIFrame.ResultUI.RetryDungeonButton.NumRetry.Text -- จำนวนคนรีแมพเดิมซํ้า
 end)
 end)
 
 
 spawn(function()
 pcall(function()    
  _G.Ui_Teleporting = game:GetService("Players").LocalPlayer.PlayerGui.UniversalGui.TeleportingUI.Visible
 end)
 end)


 spawn(function()
 pcall(function()
  _G.Raid_Join_Time = string.len(game:GetService("Players").LocalPlayer.PlayerGui.MainGui.CenterUIFrame.PlayButtonsFrame.Frame.RaidBanner.RaidBannerOpenText.Text)
 end)
 end)

 spawn(function()
 pcall(function()
  _G.Raid_Map_Check = game:GetService("Players").LocalPlayer.PlayerGui.BattleGui.CenterUIFrame.RaidDataFrame.Visible
 end)
 end)
  
 spawn(function()
 pcall(function()     
  _G.Skill1_Check = game:GetService("Players").LocalPlayer.PlayerGui.UniversalGui.UniversalCenterUIFrame.SlotsHolder.Skill1.Image
 end)
 end) 


 spawn(function()
 pcall(function()     
  _G.Skill2_Check = game:GetService("Players").LocalPlayer.PlayerGui.UniversalGui.UniversalCenterUIFrame.SlotsHolder.Skill2.Image
 end)
 end)


 spawn(function()
 pcall(function()     
  _G.Skill3_Check = game:GetService("Players").LocalPlayer.PlayerGui.UniversalGui.UniversalCenterUIFrame.SlotsHolder.Skill3.Image
 end)
 end)


 spawn(function()  
 pcall(function()     
  _G.Skill4_Check = game:GetService("Players").LocalPlayer.PlayerGui.UniversalGui.UniversalCenterUIFrame.SlotsHolder.Skill4.Image
 end)
 end) 

 spawn(function()  
 pcall(function()     
  _G.SkillE_Check = game:GetService("Players").LocalPlayer.PlayerGui.UniversalGui.UniversalCenterUIFrame.SlotsHolder.SkillAssist1.Image
 end)
 end) 

 spawn(function()  
 pcall(function()     
  _G.SkillR_Check = game:GetService("Players").LocalPlayer.PlayerGui.UniversalGui.UniversalCenterUIFrame.SlotsHolder.SkillAssist2.Image
 end)
 end) 
  
end)
end
end)
spawn(function()
     while wait(0.8) do 
     pcall(function()     
     for i_Map,v_Map in pairs(game:GetService("Workspace").GameMap:GetChildren()) do
     _G.Check_Map = v_Map.Name -- Combat Titan Raid
     end
     end)  
     end
end)



wait(6)
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/texah01/7Dark/main/UI.Lua"))()
local venyx = library.new("7Dark Hub Ver 1.0.2", 5013109572)
local page = venyx:addPage("ออโต้ฟาม", 5012544693)

local AutoFarm_UI_1 = page:addSection("ตั้งค่า MAP")
local AutoFarm_UI_2 = page:addSection("ฟังก์ชั่น Farm")
local AutoFarm_UI_3 = page:addSection("ฟังก์ชั้น Hack")

AutoFarm_UI_1:addToggle("ออโต้เล่น MAP เดิม ซํ้า", _G.Key_AutoReMap, function(Resu_valu)
        if Resu_value then
        Key_AutoReMap_Fun()
        else
         _G.Key_AutoReMap = nil 
         _G.AutoReMap = false    
        end
end)

function Key_AutoReMap_Fun()
 
        _G.AutoReMap = true
        while wait(1.4) do

        if (_G.AutoReMap == true) and (_G.UI_Resu ~= "Teleporting in 10") then  

        if (_G.RetryDungeon_text == "0 Players want to retry") then   
        pcall(function()
            
        local args = {
        [1] = "RetryDungeon"
        }
        
        game:GetService("ReplicatedStorage").RemoteEvents.MainRemoteEvent:FireServer(unpack(args))
        
        end)
        end
        
        end
        end    

end

AutoFarm_UI_1:addDropdown("เลือก Map Raid", {"Combat Titan Raid","Infinity Nojo Raid", "Tengoku Raid", "Hirito Raid"}, function(Raid_Map_Name_text)
local Name_File = "Settings_7DarkHub.config"

Settings = game:service'HttpService':JSONDecode(readfile(Name_File))

local function Save()
writefile(Name_File,game:service'HttpService':JSONEncode(Settings))
end
_G.Raid_Map_Name = Raid_Map_Name_text
Settings.Raid_Map =  Raid_Map_Name_text
Save()
end)

AutoFarm_UI_1:addToggle("ออโต้ลงบอส Raid", _G.Key_AutoRaid, function(AutoRaid_valu)
        if AutoRaid_valu then
        Key_AutoRaid_Fun()
        else
         _G.Key_AutoRaid = nil 
         _G.AutoRaid = false    
        end
end)

function Key_AutoRaid_Fun()
        _G.AutoRaid = true  
       while wait(3) do

       if (_G.Check_Map == "AOTLobby") then
       if (_G.Ui_Teleporting == false) then
       if (_G.Raid_Join_Time > 20) then
       pcall(function()
      
       local args = {
       [1] = "CreateRoom",
       [2] = {
        ["Difficulty"] = "Easy",
        ["FriendsOnly"] = true,
        ["MapName"] = _G.Raid_Map_Name,
        ["Hardcore"] = false
       }
       }
       game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(unpack(args))      

       wait(3)

       local args = {
       [1] = "TeleportPlayers"
       }

       game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(unpack(args))           

       
       end)
       end
       end            
       end
       
       end
    
end


AutoFarm_UI_1:addToggle("AFK Lobby", _G.Key_AFK_Lobby, function(AFK_Lobby_value)
        if AFK_Lobby_value then
        Key_AFK_Lobby__Fun() 
        else
        end
end)

function Key_AFK_Lobby__Fun()
       _G.AFK_Lobby = true
       while wait(1) do
       if (_G.Check_Map == "AOTLobby") then
       if (_G.AOTLobby_AFK_TIME >= 420) then
       local tpservice= game:GetService("TeleportService")
       local plr = game.Players.LocalPlayer

       tpservice:Teleport(game.PlaceId, plr)      
       else   
           _G.AOTLobby_AFK_TIME = _G.AOTLobby_AFK_TIME + 1
       end
       end
       end
end



AutoFarm_UI_2:addToggle("ออโต้วาปไปหามอน ", _G.Key_AutoFarm, function(AutoFarm_1_value)
        if AutoFarm_1_value then
        Key_AutoFarm_Fun() 
        else
            _G.Key_AutoFarm = nil
            _G.AutoFarm_Set = false
        end
end)


function Key_AutoFarm_Fun()
        _G.AutoFarm_Set = true
        --  
        print("Loop")
        while wait(3.3) do
      --  print("Loop")
        pcall(function()
        if (_G.AutoFarm_Set == true) and (_G.HealthAmount_text >= 0) then    
        for i,v in pairs(game:GetService("Workspace").Folders.Monsters:GetChildren()) do
        _G.MobTP = v.Name
        end
        if (_G.Check_Map == "Combat Titan Raid") then
        print("Map OK")    
        local TweenService_MAP_Raid = game:GetService("TweenService")
        local Tw_MAP_Raid = TweenService_MAP_Raid:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(2.5, Enum.EasingStyle.Linear, Enum.EasingDirection.Out,0,false,0),
        {CFrame = CFrame.new(game:GetService("Workspace").Folders.Monsters["Combat Titan"].HumanoidRootPart.Position)}):Play()          
        print("TP OK") 
        else
        local TweenService = game:GetService("TweenService")
        local Tw = TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(2.5, Enum.EasingStyle.Linear, Enum.EasingDirection.Out,0,false,0),
        {CFrame = CFrame.new(game:GetService("Workspace").Folders.Monsters[_G.MobTP].HumanoidRootPart.Position)}):Play()  
        end
      --  print("Loop End")
        end
        end)             
        end
        --    
end



AutoFarm_UI_2:addToggle("สกิลออโต้", _G.Key_AutoSkill_All, function(AutoSkill_value)
        if AutoSkill_value then
        if (_G.Check_Map == "AOTLobby") then  
            
        else
        _G.AutoSkill_Set = true 
        end
        else    
        _G.Key_AutoSkill_All = nil    
        _G.AutoSkill_Set = false    
        end
end)

AutoFarm_UI_2:addToggle("โจมตีปกติออโต้", _G.Key_AutoClick, function(AutoClick_value)
        if AutoClick_value then
        Key_AutoClick_Fun()
        else   
        _G.Key_AutoClick = nil    
        _G.AutoClick_Set = false    
        end
end)


function Key_AutoClick_Fun()
        _G.AutoClick_Set = true 
        while wait(0.6) do
        if (_G.AutoClick_Set == true) and (_G.HealthAmount_text >= 0) then    
        
        if (_G.Check_Map == "AOTLobby") then
            
        else
        mouse1click() 
        end
        end
        end    
end
    

AutoFarm_UI_3:addToggle("Boss Raid ไม่โจมตี", _G.Key_Boss_Raid_Freeze, function(Boss_Rai_Freeze_value)
        if Boss_Rai_Freeze_value then
        Key_Boss_Raid_Freeze_Fun()
        else
         _G.Key_Boss_Raid_Freeze = nil 
         _G.Boss_Raid_Freeze = false    
        end
end)

function Key_Boss_Raid_Freeze_Fun()
     _G.Boss_Raid_Freeze = true
     while wait(3) do
     if (_G.Boss_Raid_Freeze == true) and (_G.HealthAmount_text >= 0) then       

     if (_G.Raid_Map_Check == true) then

     pcall(function()     
     local Player_Local = game.Players.LocalPlayer.Character

     Player_Local.HumanoidRootPart:Destroy()

     wait(3)
     Player_Local.UpperTorso:Destroy()        
     _G.Key_Boss_Raid_Freeze = nil 
     _G.Boss_Raid_Freeze = false  

     end)
     end
     end
     end
end








local page = venyx:addPage("ตั้งค่าสกิล", 5012544693)
local SKILL_UI_1 = page:addSection("สกิลปกติ")
SKILL_UI_1:addToggle("Skill 1", _G.Key_AutoSkill_All, function(Skill_1_value)
       if Skill_1_value then
      Key_AutoSkill_1_Fun()
      else
      _G.Key_AutoSkill_All = nil
      _G.Skill_1_Set = false      
      end
           
end)


function Key_AutoSkill_1_Fun()
       _G.Skill_1_Set = true
       while wait(1) do
      if (_G.AutoSkill_Set == true) and (_G.HealthAmount_text >= 0) then
           if (_G.Skill_1_Set == true) and (_G.Skill1_Check) == "rbxassetid://6797108473" then
          pcall(function()      
          local args = {
          [1] = "UseSkill",
          [2] = {
          ["hrpCFrame"] = CFrame.new(_G.Player_Position) * CFrame.Angles(-0, 0, -0)
          },
          [3] = 1
}
     game:GetService("ReplicatedStorage").RemoteEvents.MainRemoteEvent:FireServer(unpack(args))
      end)
      end
      end  
      end    
end







SKILL_UI_1:addToggle("Skill 2", _G.Key_AutoSkill_All, function(Skill_2_value)
       if Skill_2_value then
       Key_AutoSkill_2_Fun()
       else
      _G.Key_AutoSkill_All = nil    
      _G.Skill_2_Set = false      
      end
end)


function Key_AutoSkill_2_Fun()
       _G.Skill_2_Set = true
       while wait(1)  do
        if (_G.AutoSkill_Set == true) and (_G.HealthAmount_text >= 0) then   
           if (_G.Skill_2_Set == true) and (_G.Skill2_Check) == "rbxassetid://6797108473" then
         pcall(function() 
          local args = {
          [1] = "UseSkill",
          [2] = {
          ["hrpCFrame"] = CFrame.new(_G.Player_Position) * CFrame.Angles(-0, 0, -0)
          },
          [3] = 2
}
     game:GetService("ReplicatedStorage").RemoteEvents.MainRemoteEvent:FireServer(unpack(args))
      end)
      end
      end  
      end     
end


SKILL_UI_1:addToggle("Skill 3", _G.Key_AutoSkill_All, function(Skill_3_value)
       if Skill_3_value then
      Key_AutoSkill_3_Fun()
      else
      _G.Key_AutoSkill_All = nil    
      _G.Skill_3_Set = false      
      end
end)

function Key_AutoSkill_3_Fun()
       _G.Skill_3_Set = true
       while wait(1)  do
       if (_G.AutoSkill_Set == true) and (_G.HealthAmount_text >= 0) then            
           if (_G.Skill_3_Set == true) and (_G.Skill3_Check) == "rbxassetid://6797108473" then
          pcall(function() 
          local args = {
          [1] = "UseSkill",
          [2] = {
          ["hrpCFrame"] = CFrame.new(_G.Player_Position) * CFrame.Angles(-0, 0, -0)
          },
          [3] = 3
}
     game:GetService("ReplicatedStorage").RemoteEvents.MainRemoteEvent:FireServer(unpack(args))
      end)
      end
      end  
      end     
end

SKILL_UI_1:addToggle("Skill 4", _G.Key_AutoSkill_All, function(Skill_4_value)
      if Skill_4_value then
      Key_AutoSkill_4_Fun()
      else
      _G.Key_AutoSkill_All = nil    
      _G.Skill_4_Set = false      
      end
end)


function Key_AutoSkill_4_Fun()
       _G.Skill_4_Set = true
       while wait(2) do
       if (_G.AutoSkill_Set == true) and (_G.HealthAmount_text >= 0) then             
           if (_G.Skill_4_Set == true) and (_G.Skill4_Check) == "rbxassetid://6797108473" then
          pcall(function() 
          local args = {
          [1] = "UseSkill",
          [2] = {
          ["hrpCFrame"] = CFrame.new(_G.Player_Position) * CFrame.Angles(-0, 0, -0)
          },
          [3] = 4
}
     game:GetService("ReplicatedStorage").RemoteEvents.MainRemoteEvent:FireServer(unpack(args))
      end)
      end
      end  
      end       
end

local SKILL_UI_2 = page:addSection("สกิลตัวละคร")
SKILL_UI_2:addToggle("Skill E", _G.Key_AutoSkill_Assist, function(Skill_E_value)
      
      if Skill_E_value then
      Key_AutoSkill_E_Fun()
      else
      _G.Key_AutoSkill_Assist = nil    
      _G.Skill_E_Set = false      
      end

end)

function Key_AutoSkill_E_Fun()
       _G.Skill_E_Set = true
       while wait(2) do
       if (_G.AutoSkill_Set == true) and (_G.HealthAmount_text >= 0) then             
           if (_G.Skill_E_Set == true) and (_G.SkillE_Check) ~= "rbxassetid://6797200424" then
          pcall(function() 
          local args = {
          [1] = "UseAssistSkill",
          [2] = {
          ["hrpCFrame"] = CFrame.new(_G.Player_Position) * CFrame.Angles(-0, 0, -0)
          },
          [3] = 1
          }

     game:GetService("ReplicatedStorage").RemoteEvents.MainRemoteEvent:FireServer(unpack(args))
      end)
      end
      end  
      end    

end



SKILL_UI_2:addToggle("Skill R", _G.Key_AutoSkill_Assist, function(Skill_R_value)
      
      if Skill_R_value then
      Key_AutoSkill_R_Fun()
      else
      _G.Key_AutoSkill_Assist = nil    
      _G.Skill_R_Set = false      
      end
end)


function Key_AutoSkill_R_Fun()
       _G.Skill_R_Set = true
       while wait(3) do
       if (_G.AutoSkill_Set == true) and (_G.HealthAmount_text >= 0) then             
           if (_G.Skill_R_Set == true) and (_G.SkillR_Check) ~= "rbxassetid://6797200424" then
          pcall(function() 
          local args = {
          [1] = "UseAssistSkill",
          [2] = {
          ["hrpCFrame"] = CFrame.new(_G.Player_Position) * CFrame.Angles(-0, 0, -0)
          },
          [3] = 2
          }

     game:GetService("ReplicatedStorage").RemoteEvents.MainRemoteEvent:FireServer(unpack(args))
      end)
      end
      end  
      end    

end








local page = venyx:addPage("ตั้งค่า UI", 5012544693)
local SET_UI_1 = page:addSection("Menu")
SET_UI_1:addKeybind("ปุ่มเปิดปิดเมนู", Enum.KeyCode.RightControl, function()
print("Activated Keybind")
venyx:toggle()
end, function()
print("Changed Keybind")
end)



function Ui_Close()
  venyx:toggle()  
end


function Run_Auto_All_Check()
    if (_G.Key_AutoReMap == true) then
    spawn(function() Key_AutoReMap_Fun() end) 
    end
    if (_G.Key_AutoRaid == true) then
    spawn(function() Key_AutoRaid_Fun() end) 
    end 
    if (_G.Key_Boss_Raid_Freeze == true) then
    spawn(function() Key_Boss_Raid_Freeze_Fun() end) 
    end     
    if (_G.Key_AFK_Lobby == true) then
    spawn(function() Key_AFK_Lobby__Fun() end) 
    end  
    if (_G.Key_AutoFarm == true) then
    spawn(function() Key_AutoFarm_Fun() end)
    end
    if (_G.Key_AutoSkill_All == true) then
    if (_G.Check_Map == "AOTLobby") then 
    else    
    _G.AutoSkill_Set = true  
    spawn(function() Key_AutoSkill_1_Fun() end) 
    spawn(function() Key_AutoSkill_2_Fun() end) 
    spawn(function() Key_AutoSkill_3_Fun() end) 
    spawn(function() Key_AutoSkill_4_Fun() end) 
    end
    end
    if (_G.Key_AutoSkill_Assist == true) then
    if (_G.Check_Map == "AOTLobby") then 
    else           
    spawn(function() Key_AutoSkill_E_Fun() end)   
    spawn(function() Key_AutoSkill_R_Fun() end)   
    end
    end
    if (_G.Key_AutoClick == true) then
    spawn(function() Key_AutoClick_Fun() end)   
    end
    
    
    if (_G.Key_Ui_Close == true) then
    spawn(function() Ui_Close() end)   
    end
end    


wait(2)
Run_Auto_All_Check()




















