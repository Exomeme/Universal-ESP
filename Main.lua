local espLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Sirius/request/library/esp/esp.lua'),true))()
local Config = {
    WindowName = "Universal ESP",
	Color = Color3.fromRGB(255,128,64),
	Keybind = Enum.KeyCode.RightBracket
}

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/AlexR32/Roblox/main/BracketV3.lua"))()
local Window = Library:CreateWindow(Config, game:GetService("CoreGui"))

local Tab1 = Window:CreateTab("Visuals")
local Tab2 = Window:CreateTab("MISC")
local Tab3 = Window:CreateTab("Exp")

local Section1 = Tab1:CreateSection("Visuals")
local Section2 = Tab1:CreateSection("Boxes")
local Section5 = Tab1:CreateSection("Health")
local Section6 = Tab1:CreateSection("Distance")
local Section7 = Tab1:CreateSection("Tracer")
local Section8 = Tab1:CreateSection("Chams")
local Section9 = Tab1:CreateSection("Arrows")
local Section10 = Tab1:CreateSection("Names")

local Section3 = Tab2:CreateSection("MiscMain")
local Section4 = Tab2:CreateSection("MiscSecondary")
local Section100 = Tab3:CreateSection("TESTING FEATURES")

local Label1 = Section1:CreateLabel("Label 1")
Label1:UpdateText("lol")

-------------------------------------------------------------------------------------------
local Toggle1 = Section1:CreateToggle("Enable ESP", nil, function(State)
	if State == true then
        	    espLib:Load()
        	    espLib.options.enable = true
        	    espLib.options.teamCheck = false
        	    espLib.options.teamColour = false
        	    espLib.options.names = false
        	    espLib.options.boxes = false
        	    espLib.options.boxFill = false
        	    espLib.options.healthBars = false
        	    espLib.options.healthText = false
        	    espLib.options.distance = false
        	    espLib.options.tracers = false
        	    espLib.options.chams = false
        	    espLib.options.outOfViewArrows = false
        	    espLib.options.outOfViewArrowsOutline = false

        elseif State == false then
        	    espLib:Unload()
        	    espLib.options.enable = false
        end
end)
Toggle1:AddToolTip("Enables/Disables ESP")
Toggle1:CreateKeybind("Y", function(Key)
	print(Key)
end)
local Toggle = Section1:CreateToggle("Team Check", nil, function(State)
	if State == true then
        	    espLib.options.teamCheck = true
        elseif State == false then
        	    espLib.options.teamCheck = false
        end
end)
local Toggle = Section1:CreateToggle("Team Colour", nil, function(State)
	if State == true then
        	    espLib.options.teamColour = true
        elseif State == false then
        	    espLib.options.teamColour = false
        end
end)
local Toggle = Section1:CreateToggle("Names", nil, function(State)
	if State == true then
        	    espLib.options.names = true
        elseif State == false then
        	    espLib.options.names = false
        end
end)
local Toggle = Section1:CreateToggle("Boxes", nil, function(State)
	if State == true then
        	    espLib.options.boxes = true
        elseif State == false then
        	    espLib.options.boxes = false
        end
end)
local Toggle = Section1:CreateToggle("BoxFill", nil, function(State)
	if State == true then
        	    espLib.options.boxFill = true
        elseif State == false then
        	    espLib.options.boxFill = false
        end
end)
local Toggle = Section1:CreateToggle("healthBars", nil, function(State)
	if State == true then
        	    espLib.options.healthBars = true
        elseif State == false then
        	    espLib.options.healthBars = false
        end
end)
local Toggle = Section1:CreateToggle("healthText", nil, function(State)
	if State == true then
        	    espLib.options.healthText = true
        elseif State == false then
        	    espLib.options.healthText = false
        end
end)
local Toggle = Section1:CreateToggle("Distance", nil, function(State)
	if State == true then
        	    espLib.options.distance = true
        elseif State == false then
        	    espLib.options.distance = false
        end
end)
local Toggle = Section1:CreateToggle("Tracers", nil, function(State)
	if State == true then
        	    espLib.options.tracers = true
        elseif State == false then
        	    espLib.options.tracers = false
        end
end)
local Toggle = Section1:CreateToggle("Chams", nil, function(State)
	if State == true then
        	    espLib.options.chams = true
        elseif State == false then
        	    espLib.options.chams = false
        end
end)
local Toggle = Section1:CreateToggle("Arrows", nil, function(State)
	if State == true then
        	    espLib.options.outOfViewArrows = true
        	    espLib.options.outOfViewArrowsOutline = true

        elseif State == false then
        	    espLib.options.outOfViewArrows = false
        	    espLib.options.outOfViewArrowsOutline = false
        end
end)
local Dropdown1 = Section7:CreateDropdown("Tracers Location", {"Top","Mouse","Bottom"}, function(Name)
	if Name == "Top" then
	espLib.options.tracerOrigin = "Top"
	elseif Name == "Mouse" then
	espLib.options.tracerOrigin = "Mouse"
	elseif Name == "Bottom" then
	espLib.options.tracerOrigin = "Bottom"

	end
end)
local Slider2 = Section7:CreateSlider("Tracer Transparency", 0,1,0.5,false, function(State)
    espLib.options.tracerTransparency  = State
end)
local Colorpicker1 = Section7:CreateColorpicker("Tracer Colour", function(Color)
	espLib.options.tracerColor = Color
end)

local Colorpicker1 = Section2:CreateColorpicker("Boxes Color", function(Color)
	espLib.options.boxesColor = Color
end)
local Colorpicker1 = Section2:CreateColorpicker("Box fill Color", function(Color)
	espLib.options.boxFillColor = Color
end)
local Slider2 = Section2:CreateSlider("Boxes Transparency", 0,1,1,false, function(State)
    espLib.options.boxesTransparency = State
end)
local Slider2 = Section2:CreateSlider("Boxes Fill Transparency", 0,1,1,false, function(State)
    espLib.options.boxFillTransparency = State
end)
local Slider2 = Section8:CreateSlider("chams Transparency", 0,1,1,false, function(State)
    espLib.options.chamsFillTransparency = State
    espLib.options.chamsOutlineTransparency = State

end)
local Slider2 = Section2:CreateSlider("Boxes Transparency", 0,1,1,false, function(State)
    espLib.options.boxesTransparency = State
    espLib.options.boxFillTransparency = State
end)
local Slider2 = Section5:CreateSlider("Health bar Transparency", 0,1,1,false, function(State)
    espLib.options.healthBarsTransparency = State
end)
local Slider2 = Section5:CreateSlider("Health Text Transparency", 0,1,1,false, function(State)
    espLib.options.healthTextTransparency = State
end)
local Slider2 = Section9:CreateSlider("Arrow fill Transparency", 0,1,1,false, function(State)
    espLib.options.outOfViewArrowsTransparency = State
end)
local Slider2 = Section9:CreateSlider("Arrow Outline Transparency", 0,1,1,false, function(State)
    espLib.options.outOfViewArrowsOutlineTransparency = State
end)
local Slider2 = Section9:CreateSlider("Arrow Size", 0,50,15,false, function(State)
    espLib.options.outOfViewArrowsSize = State
end)
local Slider2 = Section9:CreateSlider("Arrow Radius", 25,1000,100,false, function(State)
    espLib.options.outOfViewArrowsRadius = State
end)

local Colorpicker1 = Section8:CreateColorpicker("Chams Outline Colour", function(Color)
	espLib.options.chamsOutlineColor = Color
end)
local Colorpicker1 = Section8:CreateColorpicker("Chams fill Colour", function(Color)
	espLib.options.chamsFillColor = Color
end)
local Toggle3 = Section3:CreateToggle("UI Toggle", nil, function(State)
	Window:Toggle(State)
end)
Toggle3:CreateKeybind(tostring(Config.Keybind):gsub("Enum.KeyCode.", ""), function(Key)
	Config.Keybind = Enum.KeyCode[Key]
end)
Toggle3:SetState(true)

local Colorpicker3 = Section2:CreateColorpicker("UI Color", function(Color)
	Window:ChangeColor(Color)
end)
Colorpicker3:UpdateColor(Config.Color)

-- credits to jan for patterns
local Dropdown4 = Section4:CreateDropdown("Image", {"Default","Hearts","Abstract","Hexagon","Circles","Lace With Flowers","Floral"}, function(Name)
	if Name == "Default" then
		Window:SetBackground("2151741365")
	elseif Name == "Hearts" then
		Window:SetBackground("6073763717")
	elseif Name == "Abstract" then
		Window:SetBackground("6073743871")
	elseif Name == "Hexagon" then
		Window:SetBackground("6073628839")
	elseif Name == "Circles" then
		Window:SetBackground("6071579801")
	elseif Name == "Lace With Flowers" then
		Window:SetBackground("6071575925")
	elseif Name == "Floral" then
		Window:SetBackground("5553946656")
	end
end)
Dropdown3:SetOption("Default")

local Colorpicker4 = Section4:CreateColorpicker("Color", function(Color)
	Window:SetBackgroundColor(Color)
end)
Colorpicker4:UpdateColor(Color3.new(1,1,1))

local Slider3 = Section4:CreateSlider("Transparency",0,1,nil,false, function(Value)
	Window:SetBackgroundTransparency(Value)
end)
Slider3:SetValue(0)

local Slider4 = Section4:CreateSlider("Tile Scale",0,1,nil,false, function(Value)
	Window:SetTileScale(Value)
end)
Slider4:SetValue(0.5)






------ testing -------------------------------------------------------------------------------------------
local Button001 = Section1000:CreateButton("PRINT ESP CASHE", function()
    print(espLib.espCache)
end)

local Slider22 = Section100:CreateSlider("ESP RENDER",0,100000,nil,false, function(State)
    if Value > 99999 then
        espLib.options = math.huge
    else
        espLib.options = State 
    end    
end)
local Toggle22 = Section1000:CreateToggle("Allow scaled render", nil, function(State)
	if State == true then
        	    espLib.options.limitDistance = true
        elseif State == false then
        	    espLib.options.limitDistance = false
        end
end)
