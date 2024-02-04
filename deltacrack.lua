--[[

    Title: Delta Version: X
    Created By: Chillz#0348
    Retarded author: Lxnny the black chink
]]

local httpService = cloneref(game:GetService("HttpService"));

local _tablefind = clonefunction(table.find);

local isA = clonefunction(game.IsA);

local GuiService = game:GetService("GuiService")

makefolder("d_android_script_dir")

if gethui():FindFirstChild("DeltaGui") then
    gethui():FindFirstChild("DeltaGui"):Destroy()
end



if not isfile("iconsize") then
    writefile("iconsize", "Medium")
end

if not isfile("iconshape") then
    writefile("iconshape", "Squircle")
end

if not isfile("iconcolor") then
    writefile("iconcolor", "Blue")
end


getgenv().syn_backup = syn

if not isfile("uses_syn") then
    getgenv().syn = nil
end

-- Go to near end line for configs.

local function executescript(sc) runcode(sc) end

--local executeclipboard = readclipboard_hideenv


getgenv().readclipboard_hideenv = nil

local DELTA = {};
getgenv().Vm9vaE59PzVBeTVNdyY4JDsieDglUzdwRDNabyExbjR1ezBmYHNNT2kjOXk = true



if gethui():FindFirstChild("Delta") then
    gethui():FindFirstChild("Delta"):Destroy()
end

-- StarterGui.Delta
DELTA["1"] = Instance.new("ScreenGui", gethui());
DELTA["1"]["Name"] = [[Delta]];
DELTA["1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;
DELTA["1"]["ResetOnSpawn"] = false;
DELTA["1"]["DisplayOrder"] = 10;
DELTA["1"].Enabled = false

-- Dis is for floating icon Players
DELTA["Ui"] = Instance.new("ScreenGui", gethui())
DELTA["Ui"].Enabled = false
DELTA["Ui"].Name = "DeltaIcon"

DELTA["DaIcon"] = Instance.new("ImageButton", DELTA["Ui"])

local iconsize = readfile("iconsize")
if iconsize == "Medium" then
    DELTA["DaIcon"].Size = UDim2.new(0,45,0,45)
elseif iconsize == "Small" then
    DELTA["DaIcon"].Size = UDim2.new(0,30,0,30)
elseif iconsize == "Large" then
    DELTA["DaIcon"].Size = UDim2.new(0,60,0,60)
else
    DELTA["DaIcon"].Size = UDim2.new(0,45,0,45)
end

local DaIconSize = DELTA["DaIcon"].Size
local ScreenCenterX = GuiService:GetScreenResolution().X / 2
local ScreenCenterY = GuiService:GetScreenResolution().Y / 2

local DaIconPositionX = ScreenCenterX - DaIconSize.X.Offset / 2
local DaIconPositionY = ScreenCenterY - DaIconSize.Y.Offset / 2
DELTA["DaIcon"].Position = UDim2.new(0, DaIconPositionX, 0, DaIconPositionY/20)
DELTA["DaIcon"].Draggable = true
DELTA["DaIcon"].Image = "rbxassetid://12730597972"
DELTA["DaIcon"].BackgroundColor3 = Color3.fromRGB(26, 28, 36)

DELTA["das"] = Instance.new("UICorner", DELTA["DaIcon"]);

local iconsize = readfile("iconshape")
if iconsize == "Squircle" then
    DELTA["das"]["CornerRadius"] = UDim.new(0.20000000298023224, 0);
elseif iconsize == "Circle" then
    DELTA["das"]["CornerRadius"] = UDim.new(0.50000000298023224, 0);
elseif iconsize == "Square" then
    DELTA["das"]["CornerRadius"] = UDim.new(0, 0);
else
    DELTA["das"]["CornerRadius"] = UDim.new(0.20000000298023224, 0);
end




DELTA["daStroke"] = Instance.new("UIStroke", DELTA["DaIcon"])
DELTA["daStroke"].Thickness = 2
DELTA["daStroke"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
local iconsize = readfile("iconcolor")
if iconsize == "Blue" then
    DELTA["daStroke"].Color = Color3.fromRGB(65, 169, 255)
elseif iconsize == "Green" then
    DELTA["daStroke"].Color = Color3.fromRGB(55, 219, 69)
elseif iconsize == "Purple" then
    DELTA["daStroke"].Color = Color3.fromRGB(125, 65, 255)
else
    DELTA["daStroke"].Color = Color3.fromRGB(65, 169, 255)
end


-- StarterGui.Delta.KeySystem
DELTA["2"] = Instance.new("Frame", DELTA["1"]);
DELTA["2"]["BackgroundColor3"] = Color3.fromRGB(26, 28, 36);
DELTA["2"]["AnchorPoint"] = Vector2.new(1, 0.5);
DELTA["2"]["Size"] = UDim2.new(0.328000009059906, 0, 1.2, 0);
DELTA["2"]["Position"] = UDim2.new(1, 0, 0.5, 0);
DELTA["2"]["Visible"] = false;
DELTA["2"]["Name"] = [[KeySystem]];

-- StarterGui.Delta.KeySystem.Holder
DELTA["3"] = Instance.new("Frame", DELTA["2"]);
DELTA["3"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["3"]["AnchorPoint"] = Vector2.new(1, 0.5);
DELTA["3"]["BackgroundTransparency"] = 1;
DELTA["3"]["Size"] = UDim2.new(1, 0, 1, 0);
DELTA["3"]["Position"] = UDim2.new(1, 0, 0.5, 0);
DELTA["3"]["Name"] = [[Holder]];

-- StarterGui.Delta.KeySystem.Holder.UIListLayout
DELTA["4"] = Instance.new("UIListLayout", DELTA["3"]);
DELTA["4"]["Padding"] = UDim.new(0.03999999910593033, 0);
DELTA["4"]["SortOrder"] = Enum.SortOrder.LayoutOrder;

-- StarterGui.Delta.KeySystem.Holder.Title
DELTA["5"] = Instance.new("Frame", DELTA["3"]);
DELTA["5"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["5"]["BackgroundTransparency"] = 1;
DELTA["5"]["Size"] = UDim2.new(1, 0, 0.18677474558353424, 0);
DELTA["5"]["Name"] = [[Title]];

-- StarterGui.Delta.KeySystem.Holder.Title.UIListLayout
DELTA["6"] = Instance.new("UIListLayout", DELTA["5"]);
DELTA["6"]["SortOrder"] = Enum.SortOrder.LayoutOrder;

-- StarterGui.Delta.KeySystem.Holder.Title.Title
DELTA["7"] = Instance.new("TextLabel", DELTA["5"]);
DELTA["7"]["TextWrapped"] = true;
DELTA["7"]["TextScaled"] = true;
DELTA["7"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["7"]["TextXAlignment"] = Enum.TextXAlignment.Left;
DELTA["7"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
DELTA["7"]["TextSize"] = 14;
DELTA["7"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["7"]["AnchorPoint"] = Vector2.new(0.5, 0);
DELTA["7"]["Size"] = UDim2.new(0.8398135900497437, 0, 0.4, 0);
DELTA["7"]["Text"] = [[Go use Arceus or Codex]];
DELTA["7"]["Name"] = [[Title]];
DELTA["7"]["BackgroundTransparency"] = 1;
DELTA["7"]["Position"] = UDim2.new(0.4199067950248718, 0, 0, 0);

-- StarterGui.Delta.KeySystem.Holder.Title.Paragraph
DELTA["8"] = Instance.new("TextLabel", DELTA["5"]);
DELTA["8"]["TextWrapped"] = true;
DELTA["8"]["TextScaled"] = true;
DELTA["8"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["8"]["TextXAlignment"] = Enum.TextXAlignment.Left;
DELTA["8"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
DELTA["8"]["TextSize"] = 14;
DELTA["8"]["TextColor3"] = Color3.fromRGB(115, 127, 152);
DELTA["8"]["AnchorPoint"] = Vector2.new(0.5, 1);
DELTA["8"]["Size"] = UDim2.new(0.8980631828308105, 0, 0.35361653566360474, 0);
DELTA["8"]["Text"] = [[Delta is so stupid lol]];
DELTA["8"]["Name"] = [[Paragraph]];
DELTA["8"]["BackgroundTransparency"] = 1;
DELTA["8"]["Position"] = UDim2.new(0.4490315914154053, 0, 0.85361647605896, 0);

-- StarterGui.Delta.KeySystem.Holder.Input
DELTA["9"] = Instance.new("Frame", DELTA["3"]);
DELTA["9"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["9"]["BackgroundTransparency"] = 1;
DELTA["9"]["LayoutOrder"] = 1;
DELTA["9"]["Size"] = UDim2.new(1, 0, 0.13557736575603485, 0);
DELTA["9"]["Position"] = UDim2.new(0, 0, 0.22365736961364746, 0);
DELTA["9"]["Name"] = [[Input]];

-- StarterGui.Delta.KeySystem.Holder.Input.Title
DELTA["a"] = Instance.new("TextLabel", DELTA["9"]);
DELTA["a"]["TextWrapped"] = true;
DELTA["a"]["TextScaled"] = true;
DELTA["a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["a"]["TextXAlignment"] = Enum.TextXAlignment.Left;
DELTA["a"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
DELTA["a"]["TextSize"] = 14;
DELTA["a"]["TextColor3"] = Color3.fromRGB(129, 143, 164);
DELTA["a"]["AnchorPoint"] = Vector2.new(0.5, 0);
DELTA["a"]["Size"] = UDim2.new(0.6213776469230652, 0, 0.2623675465583801, 0);
DELTA["a"]["Text"] = [[Enter key]];
DELTA["a"]["Name"] = [[Title]];
DELTA["a"]["BackgroundTransparency"] = 1;
DELTA["a"]["Position"] = UDim2.new(0.3106888234615326, 0, -2.339766922432318e-07, 0);

-- StarterGui.Delta.KeySystem.Holder.Input.TextBox
DELTA["b"] = Instance.new("Frame", DELTA["9"]);
DELTA["b"]["BorderSizePixel"] = 0;
DELTA["b"]["BackgroundColor3"] = Color3.fromRGB(31, 37, 47);
DELTA["b"]["AnchorPoint"] = Vector2.new(0.5, 1);
DELTA["b"]["Size"] = UDim2.new(0.9975729584693909, 0, 0.6160375475883484, 0);
DELTA["b"]["Position"] = UDim2.new(0.49878647923469543, 0, 1, 0);
DELTA["b"]["Name"] = [[TextBox]];

-- StarterGui.Delta.KeySystem.Holder.Input.TextBox.Input
DELTA["c"] = Instance.new("TextBox", DELTA["b"]);
DELTA["c"]["Active"] = true;
DELTA["c"]["PlaceholderColor3"] = Color3.fromRGB(104, 120, 144);
DELTA["c"]["BorderSizePixel"] = 0;
DELTA["c"]["TextSize"] = 14;
DELTA["c"]["TextXAlignment"] = Enum.TextXAlignment.Left;
DELTA["c"]["TextWrapped"] = true;
DELTA["c"]["TextScaled"] = true;
DELTA["c"]["BackgroundColor3"] = Color3.fromRGB(31, 37, 47);
DELTA["c"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["c"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
DELTA["c"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
DELTA["c"]["BackgroundTransparency"] = 1;
DELTA["c"]["PlaceholderText"] = [[examplekey123$]];
DELTA["c"]["Size"] = UDim2.new(0.8865329027175903, 0, 0.5, 0);
DELTA["c"]["Selectable"] = false;
DELTA["c"]["Text"] = [[]];
DELTA["c"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
DELTA["c"]["Name"] = [[Input]];

-- StarterGui.Delta.KeySystem.Holder.Input.TextBox.UICorner
DELTA["d"] = Instance.new("UICorner", DELTA["b"]);
DELTA["d"]["CornerRadius"] = UDim.new(0.20000000298023224, 0);

-- StarterGui.Delta.KeySystem.Holder.Buttons
DELTA["e"] = Instance.new("Frame", DELTA["3"]);
DELTA["e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["e"]["BackgroundTransparency"] = 1;
DELTA["e"]["LayoutOrder"] = 2;
DELTA["e"]["Size"] = UDim2.new(1, 0, 0.19585928320884705, 0);
DELTA["e"]["Position"] = UDim2.new(0, 0, 0.39611735939979553, 0);
DELTA["e"]["Name"] = [[Buttons]];

-- StarterGui.Delta.KeySystem.Holder.Buttons.Button1
DELTA["f"] = Instance.new("ImageButton", DELTA["e"]);
DELTA["f"]["Active"] = false;
DELTA["f"]["BorderSizePixel"] = 0;
DELTA["f"]["BackgroundColor3"] = Color3.fromRGB(60, 137, 196);
DELTA["f"]["Selectable"] = false;
DELTA["f"]["Size"] = UDim2.new(0.9975729584693909, 0, 0.43042951822280884, 0);
DELTA["f"]["Name"] = [[Button1]];
DELTA["f"]["BackgroundTransparency"] = 0.8799999952316284;

-- StarterGui.Delta.KeySystem.Holder.Buttons.Button1.UICorner
DELTA["10"] = Instance.new("UICorner", DELTA["f"]);
DELTA["10"]["CornerRadius"] = UDim.new(0.20000000298023224, 0);

-- StarterGui.Delta.KeySystem.Holder.Buttons.Button1.UIStroke
DELTA["11"] = Instance.new("UIStroke", DELTA["f"]);
DELTA["11"]["Color"] = Color3.fromRGB(60, 137, 196);
DELTA["11"]["Thickness"] = 2;

-- StarterGui.Delta.KeySystem.Holder.Buttons.Button1.Input
DELTA["12"] = Instance.new("TextLabel", DELTA["f"]);
DELTA["12"]["TextWrapped"] = true;
DELTA["12"]["BorderSizePixel"] = 0;
DELTA["12"]["TextScaled"] = true;
DELTA["12"]["BackgroundColor3"] = Color3.fromRGB(31, 37, 47);
DELTA["12"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
DELTA["12"]["TextSize"] = 14;
DELTA["12"]["TextColor3"] = Color3.fromRGB(140, 206, 255);
DELTA["12"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
DELTA["12"]["Size"] = UDim2.new(0.8865329027175903, 0, 0.5, 0);
DELTA["12"]["Text"] = [[Continue]];
DELTA["12"]["Name"] = [[Input]];
DELTA["12"]["BackgroundTransparency"] = 1;
DELTA["12"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);

-- StarterGui.Delta.KeySystem.Holder.Buttons.Button2
DELTA["13"] = Instance.new("ImageButton", DELTA["e"]);
DELTA["13"]["Active"] = false;
DELTA["13"]["BorderSizePixel"] = 0;
DELTA["13"]["BackgroundColor3"] = Color3.fromRGB(31, 37, 47);
DELTA["13"]["Selectable"] = false;
DELTA["13"]["AnchorPoint"] = Vector2.new(0, 1);
DELTA["13"]["Size"] = UDim2.new(0.9975729584693909, 0, 0.4304293990135193, 0);
DELTA["13"]["Name"] = [[Button2]];
DELTA["13"]["Position"] = UDim2.new(0, 0, 0.9999996423721313, 0);

-- StarterGui.Delta.KeySystem.Holder.Buttons.Button2.UICorner
DELTA["14"] = Instance.new("UICorner", DELTA["13"]);
DELTA["14"]["CornerRadius"] = UDim.new(0.20000000298023224, 0);

-- StarterGui.Delta.KeySystem.Holder.Buttons.Button2.UIStroke
DELTA["15"] = Instance.new("UIStroke", DELTA["13"]);
DELTA["15"]["Color"] = Color3.fromRGB(31, 37, 47);
DELTA["15"]["Thickness"] = 2;

-- StarterGui.Delta.KeySystem.Holder.Buttons.Button2.Input
DELTA["16"] = Instance.new("TextLabel", DELTA["13"]);
DELTA["16"]["TextWrapped"] = true;
DELTA["16"]["BorderSizePixel"] = 0;
DELTA["16"]["TextScaled"] = true;
DELTA["16"]["BackgroundColor3"] = Color3.fromRGB(31, 37, 47);
DELTA["16"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
DELTA["16"]["TextSize"] = 14;
DELTA["16"]["TextColor3"] = Color3.fromRGB(162, 191, 212);
DELTA["16"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
DELTA["16"]["Size"] = UDim2.new(0.8865329027175903, 0, 0.5, 0);
DELTA["16"]["Text"] = [[Receive Key]];
DELTA["16"]["Name"] = [[Input]];
DELTA["16"]["BackgroundTransparency"] = 1;
DELTA["16"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);

-- StarterGui.Delta.KeySystem.Holder.Message
DELTA["17"] = Instance.new("ImageLabel", DELTA["3"]);
DELTA["17"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["17"]["Image"] = [[rbxassetid://13363093418]];
DELTA["17"]["LayoutOrder"] = 3;
DELTA["17"]["Size"] = UDim2.new(1, 0, 0.13, 0);
DELTA["17"]["Name"] = [[Message]];
DELTA["17"]["BackgroundTransparency"] = 1;
DELTA["17"]["Position"] = UDim2.new(0, 0, 0.6288594007492065, 0);

-- StarterGui.Delta.KeySystem.Holder.Message.Paragraph
DELTA["18"] = Instance.new("TextLabel", DELTA["17"]);
DELTA["18"]["TextWrapped"] = true;
DELTA["18"]["TextScaled"] = true;
DELTA["18"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["18"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
DELTA["18"]["TextSize"] = 14;
DELTA["18"]["TextColor3"] = Color3.fromRGB(115, 127, 152);
DELTA["18"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
DELTA["18"]["Size"] = UDim2.new(0.6844813227653503, 0, 0.4, 0);
DELTA["18"]["Text"] = [[PORCO NERO LENNY]];
DELTA["18"]["Name"] = [[Paragraph]];
DELTA["18"]["BackgroundTransparency"] = 1;
DELTA["18"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);

-- StarterGui.Delta.KeySystem.Holder.Button2
DELTA["19"] = Instance.new("ImageButton", DELTA["3"]);
DELTA["19"]["Active"] = false;
DELTA["19"]["BorderSizePixel"] = 0;
DELTA["19"]["BackgroundColor3"] = Color3.fromRGB(31, 37, 47);
DELTA["19"]["Selectable"] = false;
DELTA["19"]["LayoutOrder"] = 4;
DELTA["19"]["AnchorPoint"] = Vector2.new(0, 1);
DELTA["19"]["Size"] = UDim2.new(0.9975730180740356, 0, 0.08399911224842072, 0);
DELTA["19"]["Name"] = [[Button2]];
DELTA["19"]["Position"] = UDim2.new(0, 0, 0.9326172471046448, 0);

-- StarterGui.Delta.KeySystem.Holder.Button2.UICorner
DELTA["1a"] = Instance.new("UICorner", DELTA["19"]);
DELTA["1a"]["CornerRadius"] = UDim.new(0.20000000298023224, 0);

-- StarterGui.Delta.KeySystem.Holder.Button2.Input
DELTA["1b"] = Instance.new("TextButton", DELTA["19"]);
DELTA["1b"]["TextWrapped"] = true;
DELTA["1b"]["Active"] = false;
DELTA["1b"]["BorderSizePixel"] = 0;
DELTA["1b"]["AutoButtonColor"] = false;
DELTA["1b"]["TextScaled"] = true;
DELTA["1b"]["BackgroundColor3"] = Color3.fromRGB(31, 37, 47);
DELTA["1b"]["TextSize"] = 14;
DELTA["1b"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
DELTA["1b"]["TextColor3"] = Color3.fromRGB(162, 191, 212);
DELTA["1b"]["Selectable"] = false;
DELTA["1b"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
DELTA["1b"]["Size"] = UDim2.new(0.8865329027175903, 0, 0.5, 0);
DELTA["1b"]["Name"] = [[Input]];
DELTA["1b"]["Text"] = [[Discord]];
DELTA["1b"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
DELTA["1b"]["BackgroundTransparency"] = 1;

-- StarterGui.Delta.KeySystem.Holder.Button2.UIStroke
DELTA["1c"] = Instance.new("UIStroke", DELTA["19"]);
DELTA["1c"]["Color"] = Color3.fromRGB(31, 37, 47);
DELTA["1c"]["Thickness"] = 2;

-- StarterGui.Delta.KeySystem.UIPadding
DELTA["1d"] = Instance.new("UIPadding", DELTA["2"]);
DELTA["1d"]["PaddingTop"] = UDim.new(0.05000000074505806, 0);
DELTA["1d"]["PaddingRight"] = UDim.new(0.15000000596046448, 0);
DELTA["1d"]["PaddingLeft"] = UDim.new(0.15000000596046448, 0);

-- StarterGui.Delta.KeySystem.ImageButton
DELTA["1e"] = Instance.new("ImageButton", DELTA["2"]);
DELTA["1e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["1e"]["AnchorPoint"] = Vector2.new(1, 0);
DELTA["1e"]["Image"] = [[rbxassetid://13363121645]];
DELTA["1e"]["Size"] = UDim2.new(0.07999999821186066, 0, 0.07999999821186066, 0);
DELTA["1e"]["Position"] = UDim2.new(1, 0, 0.02012072503566742, 0);
DELTA["1e"]["BackgroundTransparency"] = 1;

-- StarterGui.Delta.KeySystem.ImageButton.UIAspectRatioConstraint
DELTA["1f"] = Instance.new("UIAspectRatioConstraint", DELTA["1e"]);


-- StarterGui.Delta.KeySystem.Marker
DELTA["20"] = Instance.new("StringValue", DELTA["2"]);
DELTA["20"]["Value"] = [[Menu]];
DELTA["20"]["Name"] = [[Marker]];

-- StarterGui.Delta.KeySystem.LocalScript
DELTA["21"] = Instance.new("LocalScript", DELTA["2"]);


-- StarterGui.Delta.Sidebar
DELTA["22"] = Instance.new("Frame", DELTA["1"]);
DELTA["22"]["BorderSizePixel"] = 0;
DELTA["22"]["BackgroundColor3"] = Color3.fromRGB(24, 25, 33);
DELTA["22"]["AnchorPoint"] = Vector2.new(1, 0.5);
DELTA["22"]["Size"] = UDim2.new(0.07823482155799866, 0, 1.17552649974823, 0);
DELTA["22"]["Position"] = UDim2.new(0.9997662901878357, 0, 0.4742202162742615, 0);
DELTA["22"]["Visible"] = false;
DELTA["22"]["Name"] = [[Sidebar]];

-- StarterGui.Delta.Sidebar.UIListLayout
DELTA["23"] = Instance.new("UIListLayout", DELTA["22"]);
DELTA["23"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
DELTA["23"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
DELTA["23"]["Padding"] = UDim.new(0.03999999910593033, 0);
DELTA["23"]["SortOrder"] = Enum.SortOrder.LayoutOrder;

-- StarterGui.Delta.Sidebar.Home
DELTA["24"] = Instance.new("ImageButton", DELTA["22"]);
DELTA["24"]["AutoButtonColor"] = false;
DELTA["24"]["BackgroundColor3"] = Color3.fromRGB(41, 45, 58);
DELTA["24"]["LayoutOrder"] = 1;
DELTA["24"]["Image"] = [[rbxassetid://0]];
DELTA["24"]["Size"] = UDim2.new(0.5135505795478821, 0, 0.08553311228752136, 0);
DELTA["24"]["Name"] = [[Home]];
DELTA["24"]["Position"] = UDim2.new(0.274707168340683, 0, 0.29129067063331604, 0);

-- StarterGui.Delta.Sidebar.Home.UIAspectRatioConstraint
DELTA["25"] = Instance.new("UIAspectRatioConstraint", DELTA["24"]);


-- StarterGui.Delta.Sidebar.Home.UICorner
DELTA["26"] = Instance.new("UICorner", DELTA["24"]);
DELTA["26"]["CornerRadius"] = UDim.new(0.4000000059604645, 0);

-- StarterGui.Delta.Sidebar.Home.ImageLabel
DELTA["27"] = Instance.new("ImageLabel", DELTA["24"]);
DELTA["27"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["27"]["ImageColor3"] = Color3.fromRGB(138, 145, 164);
DELTA["27"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
DELTA["27"]["Image"] = [[rbxassetid://13462268450]];
DELTA["27"]["Size"] = UDim2.new(0.4556732177734375, 0, 0.4556732177734375, 0);
DELTA["27"]["BackgroundTransparency"] = 1;
DELTA["27"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);

-- StarterGui.Delta.Sidebar.Scripthub
DELTA["28"] = Instance.new("ImageButton", DELTA["22"]);
DELTA["28"]["AutoButtonColor"] = false;
DELTA["28"]["BackgroundColor3"] = Color3.fromRGB(41, 45, 58);
DELTA["28"]["LayoutOrder"] = 3;
DELTA["28"]["Image"] = [[rbxassetid://0]];
DELTA["28"]["Size"] = UDim2.new(0.5135507583618164, 0, 0.08553311228752136, 0);
DELTA["28"]["Name"] = [[Scripthub]];
DELTA["28"]["Position"] = UDim2.new(0.274707168340683, 0, 0.5514350533485413, 0);

-- StarterGui.Delta.Sidebar.Scripthub.UIAspectRatioConstraint
DELTA["29"] = Instance.new("UIAspectRatioConstraint", DELTA["28"]);


-- StarterGui.Delta.Sidebar.Scripthub.UICorner
DELTA["2a"] = Instance.new("UICorner", DELTA["28"]);
DELTA["2a"]["CornerRadius"] = UDim.new(0.4000000059604645, 0);

-- StarterGui.Delta.Sidebar.Scripthub.ImageLabel
DELTA["2b"] = Instance.new("ImageLabel", DELTA["28"]);
DELTA["2b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["2b"]["ImageColor3"] = Color3.fromRGB(138, 145, 164);
DELTA["2b"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
DELTA["2b"]["Image"] = [[rbxassetid://13462270380]];
DELTA["2b"]["Size"] = UDim2.new(0.40817680954933167, 0, 0.3085578680038452, 0);
DELTA["2b"]["BackgroundTransparency"] = 1;
DELTA["2b"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);

-- StarterGui.Delta.Sidebar.Settings
DELTA["2c"] = Instance.new("ImageButton", DELTA["22"]);
DELTA["2c"]["AutoButtonColor"] = false;
DELTA["2c"]["BackgroundColor3"] = Color3.fromRGB(41, 45, 58);
DELTA["2c"]["LayoutOrder"] = 4;
DELTA["2c"]["Image"] = [[rbxassetid://0]];
DELTA["2c"]["Size"] = UDim2.new(0.5135504603385925, 0, 0.08553305268287659, 0);
DELTA["2c"]["Name"] = [[Settings]];
DELTA["2c"]["Position"] = UDim2.new(0.274707168340683, 0, 0.6815073490142822, 0);

-- StarterGui.Delta.Sidebar.Settings.UICorner
DELTA["2d"] = Instance.new("UICorner", DELTA["2c"]);
DELTA["2d"]["CornerRadius"] = UDim.new(0.4000000059604645, 0);

-- StarterGui.Delta.Sidebar.Settings.UIAspectRatioConstraint
DELTA["2e"] = Instance.new("UIAspectRatioConstraint", DELTA["2c"]);


-- StarterGui.Delta.Sidebar.Settings.ImageLabel
DELTA["2f"] = Instance.new("ImageLabel", DELTA["2c"]);
DELTA["2f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["2f"]["ImageColor3"] = Color3.fromRGB(138, 145, 164);
DELTA["2f"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
DELTA["2f"]["Image"] = [[rbxassetid://13462271348]];
DELTA["2f"]["Size"] = UDim2.new(0.4556732177734375, 0, 0.4556732177734375, 0);
DELTA["2f"]["BackgroundTransparency"] = 1;
DELTA["2f"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);

-- StarterGui.Delta.Sidebar.Executor
DELTA["30"] = Instance.new("ImageButton", DELTA["22"]);
DELTA["30"]["AutoButtonColor"] = false;
DELTA["30"]["BackgroundColor3"] = Color3.fromRGB(41, 45, 58);
DELTA["30"]["LayoutOrder"] = 2;
DELTA["30"]["Image"] = [[rbxassetid://0]];
DELTA["30"]["Size"] = UDim2.new(0.5135505795478821, 0, 0.08553306758403778, 0);
DELTA["30"]["Name"] = [[Executor]];
DELTA["30"]["Position"] = UDim2.new(0.274707168340683, 0, 0.42136284708976746, 0);

-- StarterGui.Delta.Sidebar.Executor.UIAspectRatioConstraint
DELTA["31"] = Instance.new("UIAspectRatioConstraint", DELTA["30"]);


-- StarterGui.Delta.Sidebar.Executor.UICorner
DELTA["32"] = Instance.new("UICorner", DELTA["30"]);
DELTA["32"]["CornerRadius"] = UDim.new(0.4000000059604645, 0);

-- StarterGui.Delta.Sidebar.Executor.ImageLabel
DELTA["33"] = Instance.new("ImageLabel", DELTA["30"]);
DELTA["33"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["33"]["ImageColor3"] = Color3.fromRGB(138, 145, 164);
DELTA["33"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
DELTA["33"]["Image"] = [[rbxassetid://13462269327]];
DELTA["33"]["Size"] = UDim2.new(0.4556732177734375, 0, 0.4556732177734375, 0);
DELTA["33"]["BackgroundTransparency"] = 1;
DELTA["33"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);

-- StarterGui.Delta.Sidebar.Console
DELTA["34"] = Instance.new("ImageButton", DELTA["22"]);
DELTA["34"]["AutoButtonColor"] = false;
DELTA["34"]["BackgroundColor3"] = Color3.fromRGB(41, 45, 58);
DELTA["34"]["LayoutOrder"] = 4;
DELTA["34"]["Size"] = UDim2.new(0.5135504603385925, 0, 0.08553305268287659, 0);
DELTA["34"]["Name"] = [[Console]];
DELTA["34"]["Position"] = UDim2.new(0.274707168340683, 0, 0.6815073490142822, 0);

-- StarterGui.Delta.Sidebar.Console.UICorner
DELTA["35"] = Instance.new("UICorner", DELTA["34"]);
DELTA["35"]["CornerRadius"] = UDim.new(0.4000000059604645, 0);

-- StarterGui.Delta.Sidebar.Console.UIAspectRatioConstraint
DELTA["36"] = Instance.new("UIAspectRatioConstraint", DELTA["34"]);


-- StarterGui.Delta.Sidebar.Console.ImageLabel
DELTA["37"] = Instance.new("ImageLabel", DELTA["34"]);
DELTA["37"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["37"]["ImageColor3"] = Color3.fromRGB(137, 139, 172);
DELTA["37"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
DELTA["37"]["Image"] = [[rbxassetid://13569242972]];
DELTA["37"]["Size"] = UDim2.new(0.4556732177734375, 0, 0.4556732177734375, 0);
DELTA["37"]["BackgroundTransparency"] = 1;
DELTA["37"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);



-- StarterGui.Delta.Sidebar.ToggleUI
DELTA["34tf"] = Instance.new("ImageButton", DELTA["22"]);
DELTA["34tf"]["AutoButtonColor"] = false;
DELTA["34tf"]["BackgroundColor3"] = Color3.fromRGB(41, 45, 58);
DELTA["34tf"]["LayoutOrder"] = 4;
DELTA["34tf"]["Size"] = UDim2.new(0.5135504603385925, 0, 0.08553305268287659, 0);
DELTA["34tf"]["Name"] = [[ToggleUI]];
DELTA["34tf"]["Position"] = UDim2.new(0.274707168340683, 0, 0.6815073490142822, 0);

-- StarterGui.Delta.Sidebar.ToggleUI.UICorner
DELTA["35tf"] = Instance.new("UICorner", DELTA["34tf"]);
DELTA["35tf"]["CornerRadius"] = UDim.new(0.4000000059604645, 0);

-- StarterGui.Delta.Sidebar.ToggleUI.UIAspectRatioConstraint
DELTA["36tf"] = Instance.new("UIAspectRatioConstraint", DELTA["34tf"]);


-- StarterGui.Delta.Sidebar.ToggleUI.ImageLabel
DELTA["37tf"] = Instance.new("ImageLabel", DELTA["34tf"]);
DELTA["37tf"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["37tf"]["ImageColor3"] = Color3.fromRGB(255,255,255);
DELTA["37tf"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
DELTA["37tf"]["Image"] = [[http://www.roblox.com/asset?id=13711943220]];
DELTA["37tf"]["Size"] = UDim2.new(0.4556732177734375, 0, 0.4556732177734375, 0);
DELTA["37tf"]["BackgroundTransparency"] = 1;
DELTA["37tf"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);



-- StarterGui.Delta.Sidebar.ActiveColor
DELTA["38"] = Instance.new("Color3Value", DELTA["22"]);
DELTA["38"]["Value"] = Color3.fromRGB(34, 160, 255);
DELTA["38"]["Name"] = [[ActiveColor]];

-- StarterGui.Delta.Sidebar.SidebarHandler
DELTA["39"] = Instance.new("LocalScript", DELTA["22"]);
DELTA["39"]["Name"] = [[SidebarHandler]];

-- StarterGui.Delta.Sidebar.InactiveColor
DELTA["3a"] = Instance.new("Color3Value", DELTA["22"]);
DELTA["3a"]["Value"] = Color3.fromRGB(41, 45, 58);
DELTA["3a"]["Name"] = [[InactiveColor]];

-- StarterGui.Delta.Scripthub
DELTA["3b"] = Instance.new("Frame", DELTA["1"]);
DELTA["3b"]["ZIndex"] = 100;
DELTA["3b"]["BackgroundColor3"] = Color3.fromRGB(255, 0, 0);
DELTA["3b"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
DELTA["3b"]["BackgroundTransparency"] = 1;
DELTA["3b"]["Size"] = UDim2.new(0.8483448028564453, 0, 0.8924814462661743, 0);
DELTA["3b"]["Position"] = UDim2.new(0.47624671459198, 0, 0.5082324147224426, 0);
DELTA["3b"]["Visible"] = false;
DELTA["3b"]["Name"] = [[Scripthub]];

-- StarterGui.Delta.Scripthub.Searchbar
DELTA["3c"] = Instance.new("Frame", DELTA["3b"]);
DELTA["3c"]["ZIndex"] = 2;
DELTA["3c"]["BackgroundColor3"] = Color3.fromRGB(38, 41, 50);
DELTA["3c"]["Size"] = UDim2.new(1, 0, 0.12585513293743134, 0);
DELTA["3c"]["Name"] = [[Searchbar]];

-- StarterGui.Delta.Scripthub.Searchbar.UICorner
DELTA["3d"] = Instance.new("UICorner", DELTA["3c"]);
DELTA["3d"]["CornerRadius"] = UDim.new(0.20000000298023224, 0);

-- StarterGui.Delta.Scripthub.Searchbar.ImageLabel
DELTA["3e"] = Instance.new("ImageLabel", DELTA["3c"]);
DELTA["3e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["3e"]["AnchorPoint"] = Vector2.new(0, 0.5);
DELTA["3e"]["Image"] = [[rbxassetid://13365156882]];
DELTA["3e"]["Size"] = UDim2.new(0.025552265346050262, 0, 0.40771156549453735, 0);
DELTA["3e"]["BackgroundTransparency"] = 1;
DELTA["3e"]["Position"] = UDim2.new(0.01834862306714058, 0, 0.5, 0);

-- StarterGui.Delta.Scripthub.Searchbar.ImageLabel.UIAspectRatioConstraint
DELTA["3f"] = Instance.new("UIAspectRatioConstraint", DELTA["3e"]);


-- StarterGui.Delta.Scripthub.Searchbar.Input
DELTA["40"] = Instance.new("TextBox", DELTA["3c"]);
DELTA["40"]["Active"] = true;
DELTA["40"]["TextSize"] = 14;
DELTA["40"]["TextXAlignment"] = Enum.TextXAlignment.Left;
DELTA["40"]["TextWrapped"] = true;
DELTA["40"]["TextScaled"] = true;
DELTA["40"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["40"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["40"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
DELTA["40"]["AnchorPoint"] = Vector2.new(0, 0.5);
DELTA["40"]["BackgroundTransparency"] = 1;
DELTA["40"]["PlaceholderText"] = [[Search on scriptblox.com...]];
DELTA["40"]["Size"] = UDim2.new(0.8766564130783081, 0, 0.35361653566360474, 0);
DELTA["40"]["Selectable"] = false;
DELTA["40"]["Text"] = [[]];
DELTA["40"]["Position"] = UDim2.new(0.061162080615758896, 0, 0.49999991059303284, 0);
DELTA["40"]["Name"] = [[Input]];

-- StarterGui.Delta.Scripthub.Holder
DELTA["41"] = Instance.new("ScrollingFrame", DELTA["3b"]);
DELTA["41"]["CanvasSize"] = UDim2.new(0, 0, 3, 0);
DELTA["41"]["ScrollBarImageTransparency"] = 1;
DELTA["41"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["41"]["VerticalScrollBarInset"] = Enum.ScrollBarInset.Always;
DELTA["41"]["AnchorPoint"] = Vector2.new(0.5, 1);
DELTA["41"]["BackgroundTransparency"] = 1;
DELTA["41"]["Size"] = UDim2.new(1, 0, 0.8350700736045837, 0);
DELTA["41"]["Selectable"] = false;
DELTA["41"]["ScrollBarThickness"] = 0;
DELTA["41"]["Position"] = UDim2.new(0.5, 0, 1, 0);
DELTA["41"]["Name"] = [[Holder]];

-- StarterGui.Delta.Scripthub.Holder.UIGridLayout
DELTA["42"] = Instance.new("UIGridLayout", DELTA["41"]);
DELTA["42"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
DELTA["42"]["CellSize"] = UDim2.new(0.31299999356269836, 0, 0.10000000149011612, 0);
DELTA["42"]["CellPadding"] = UDim2.new(0.029999999329447746, 0, 0.009999999776482582, 0);

-- StarterGui.Delta.Scripthub.Holder.Reserved
DELTA["43"] = Instance.new("Folder", DELTA["41"]);
DELTA["43"]["Name"] = [[Reserved]];

-- StarterGui.Delta.Scripthub.Holder.Reserved.OldThumbnail
DELTA["44"] = Instance.new("ImageButton", DELTA["43"]);
DELTA["44"]["Active"] = false;
DELTA["44"]["BackgroundColor3"] = Color3.fromRGB(26, 27, 36);
DELTA["44"]["Selectable"] = false;
DELTA["44"]["Image"] = [[rbxassetid://13365407660]];
DELTA["44"]["Size"] = UDim2.new(0.313303679227829, 0, 0.31330370903015137, 0);
DELTA["44"]["Name"] = [[OldThumbnail]];
DELTA["44"]["Visible"] = false;
DELTA["44"]["Position"] = UDim2.new(9.43648092999183e-09, 0, 0, 0);

-- StarterGui.Delta.Scripthub.Holder.Reserved.OldThumbnail.UICorner
DELTA["45"] = Instance.new("UICorner", DELTA["44"]);
DELTA["45"]["CornerRadius"] = UDim.new(0.05000000074505806, 0);

-- StarterGui.Delta.Scripthub.Holder.Reserved.OldThumbnail.Overlay
DELTA["46"] = Instance.new("Frame", DELTA["44"]);
DELTA["46"]["BackgroundColor3"] = Color3.fromRGB(26, 27, 36);
DELTA["46"]["BackgroundTransparency"] = 0.09200000017881393;
DELTA["46"]["Size"] = UDim2.new(1, 0, 1, 0);
DELTA["46"]["Name"] = [[Overlay]];

-- StarterGui.Delta.Scripthub.Holder.Reserved.OldThumbnail.Overlay.UICorner
DELTA["47"] = Instance.new("UICorner", DELTA["46"]);
DELTA["47"]["CornerRadius"] = UDim.new(0.05000000074505806, 0);

-- StarterGui.Delta.Scripthub.Holder.Reserved.OldThumbnail.Overlay.Title
DELTA["48"] = Instance.new("Frame", DELTA["46"]);
DELTA["48"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["48"]["AnchorPoint"] = Vector2.new(0, 0.5);
DELTA["48"]["BackgroundTransparency"] = 1;
DELTA["48"]["Size"] = UDim2.new(0.8982645273208618, 0, 0.5242727994918823, 0);
DELTA["48"]["Position"] = UDim2.new(0.04966278374195099, 0, 0.3592950105667114, 0);
DELTA["48"]["Name"] = [[Title]];

-- StarterGui.Delta.Scripthub.Holder.Reserved.OldThumbnail.Overlay.Title.Title
DELTA["49"] = Instance.new("TextLabel", DELTA["48"]);
DELTA["49"]["TextWrapped"] = true;
DELTA["49"]["TextScaled"] = true;
DELTA["49"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["49"]["TextXAlignment"] = Enum.TextXAlignment.Left;
DELTA["49"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
DELTA["49"]["TextSize"] = 14;
DELTA["49"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["49"]["Size"] = UDim2.new(0.4335988163948059, 0, 0.5, 0);
DELTA["49"]["Text"] = [[Arsenal 🐰]];
DELTA["49"]["Name"] = [[Title]];
DELTA["49"]["BackgroundTransparency"] = 1;

-- StarterGui.Delta.Scripthub.Holder.Reserved.OldThumbnail.Overlay.Title.Paragraph
DELTA["4a"] = Instance.new("TextLabel", DELTA["48"]);
DELTA["4a"]["TextWrapped"] = true;
DELTA["4a"]["TextScaled"] = true;
DELTA["4a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["4a"]["TextXAlignment"] = Enum.TextXAlignment.Left;
DELTA["4a"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
DELTA["4a"]["TextTransparency"] = 0.30000001192092896;
DELTA["4a"]["TextSize"] = 14;
DELTA["4a"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["4a"]["AnchorPoint"] = Vector2.new(0, 1);
DELTA["4a"]["Size"] = UDim2.new(0.6313457489013672, 0, 0.5, 0);
DELTA["4a"]["Text"] = [[Aimbot, triggerbot, aim assist, wall-check gui]];
DELTA["4a"]["Name"] = [[Paragraph]];
DELTA["4a"]["BackgroundTransparency"] = 1;
DELTA["4a"]["Position"] = UDim2.new(0, 0, 1.0000001192092896, 0);

-- StarterGui.Delta.Scripthub.Holder.Reserved.OldThumbnail.Overlay.Title.Verified
DELTA["4b"] = Instance.new("Frame", DELTA["48"]);
DELTA["4b"]["BackgroundColor3"] = Color3.fromRGB(86, 173, 239);
DELTA["4b"]["AnchorPoint"] = Vector2.new(1, 0.5);
DELTA["4b"]["Size"] = UDim2.new(0.3242603540420532, 0, 0.3846021890640259, 0);
DELTA["4b"]["Position"] = UDim2.new(0.9999999403953552, 0, 0.2522916793823242, 0);
DELTA["4b"]["Name"] = [[Verified]];

-- StarterGui.Delta.Scripthub.Holder.Reserved.OldThumbnail.Overlay.Title.Verified.UICorner
DELTA["4c"] = Instance.new("UICorner", DELTA["4b"]);
DELTA["4c"]["CornerRadius"] = UDim.new(1, 0);

-- StarterGui.Delta.Scripthub.Holder.Reserved.OldThumbnail.Overlay.Title.Verified.Title
DELTA["4d"] = Instance.new("TextLabel", DELTA["4b"]);
DELTA["4d"]["TextWrapped"] = true;
DELTA["4d"]["TextScaled"] = true;
DELTA["4d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["4d"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
DELTA["4d"]["TextSize"] = 14;
DELTA["4d"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["4d"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
DELTA["4d"]["Size"] = UDim2.new(0.8315319418907166, 0, 0.5, 0);
DELTA["4d"]["Text"] = [[VERIFIED]];
DELTA["4d"]["Name"] = [[Title]];
DELTA["4d"]["BackgroundTransparency"] = 1;
DELTA["4d"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);

-- StarterGui.Delta.Scripthub.Holder.Reserved.OldThumbnail.Overlay.Views
DELTA["4e"] = Instance.new("Frame", DELTA["46"]);
DELTA["4e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["4e"]["AnchorPoint"] = Vector2.new(0, 0.5);
DELTA["4e"]["BackgroundTransparency"] = 1;
DELTA["4e"]["Size"] = UDim2.new(0.8982645869255066, 0, 0.233791321516037, 0);
DELTA["4e"]["Position"] = UDim2.new(0.04966278374195099, 0, 0.7775326371192932, 0);
DELTA["4e"]["Name"] = [[Views]];

-- StarterGui.Delta.Scripthub.Holder.Reserved.OldThumbnail.Overlay.Views.Title
DELTA["4f"] = Instance.new("TextLabel", DELTA["4e"]);
DELTA["4f"]["TextWrapped"] = true;
DELTA["4f"]["TextScaled"] = true;
DELTA["4f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["4f"]["TextXAlignment"] = Enum.TextXAlignment.Left;
DELTA["4f"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
DELTA["4f"]["TextSize"] = 14;
DELTA["4f"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["4f"]["AnchorPoint"] = Vector2.new(1, 0.5);
DELTA["4f"]["Size"] = UDim2.new(1.0098563432693481, 0, 0.473459392786026, 0);
DELTA["4f"]["Text"] = [[10 Views]];
DELTA["4f"]["Name"] = [[Title]];
DELTA["4f"]["BackgroundTransparency"] = 1;
DELTA["4f"]["Position"] = UDim2.new(1.0098564624786377, 0, 0.7708343267440796, 0);

-- StarterGui.Delta.Scripthub.Holder.ScriptBloxHandler
DELTA["50"] = Instance.new("LocalScript", DELTA["41"]);
DELTA["50"]["Name"] = [[ScriptBloxHandler]];

-- StarterGui.Delta.Scripthub.DarkOverlay
DELTA["51"] = Instance.new("Frame", DELTA["3b"]);
DELTA["51"]["ZIndex"] = 99999;
DELTA["51"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
DELTA["51"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
DELTA["51"]["BackgroundTransparency"] = 0.5;
DELTA["51"]["Size"] = UDim2.new(10, 10, 2, 0);
DELTA["51"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
DELTA["51"]["Visible"] = false;
DELTA["51"]["Name"] = [[DarkOverlay]];

-- StarterGui.Delta.Scripthub.Popup
DELTA["52"] = Instance.new("Frame", DELTA["3b"]);
DELTA["52"]["ZIndex"] = 100000;
DELTA["52"]["BackgroundColor3"] = Color3.fromRGB(38, 41, 49);
DELTA["52"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
DELTA["52"]["Size"] = UDim2.new(0.43205055594444275, 0, 1.0513142347335815, 0);
DELTA["52"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
DELTA["52"]["Name"] = [[Popup]]
DELTA["52"].Active = true
DELTA["52"].Visible = false

-- StarterGui.Delta.Scripthub.Popup.Title
DELTA["53"] = Instance.new("Frame", DELTA["52"]);
DELTA["53"]["ZIndex"] = 999999999;
DELTA["53"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["53"]["AnchorPoint"] = Vector2.new(0.5, 0);
DELTA["53"]["BackgroundTransparency"] = 1;
DELTA["53"]["Size"] = UDim2.new(0.8193565607070923, 0, 0.23179079592227936, 0);
DELTA["53"]["Position"] = UDim2.new(0.5, 0, 0.09408924728631973, 0);
DELTA["53"]["Name"] = [[Title]];

-- StarterGui.Delta.Scripthub.Popup.Title.UIListLayout
DELTA["54"] = Instance.new("UIListLayout", DELTA["53"]);
DELTA["54"]["SortOrder"] = Enum.SortOrder.LayoutOrder;

-- StarterGui.Delta.Scripthub.Popup.Title.Title
DELTA["55"] = Instance.new("TextLabel", DELTA["53"]);
DELTA["55"]["TextWrapped"] = true;
DELTA["55"]["ZIndex"] = 999999999;
DELTA["55"]["TextScaled"] = true;
DELTA["55"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["55"]["TextXAlignment"] = Enum.TextXAlignment.Left;
DELTA["55"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
DELTA["55"]["TextSize"] = 14;
DELTA["55"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["55"]["AnchorPoint"] = Vector2.new(0.5, 0);
DELTA["55"]["Size"] = UDim2.new(0.7438986301422119, 0, 0.5, 0);
DELTA["55"]["Text"] = [[Select Your Option]];
DELTA["55"]["Name"] = [[Title]];
DELTA["55"]["BackgroundTransparency"] = 1;
DELTA["55"]["Position"] = UDim2.new(0.37194931507110596, 0, 0, 0);

-- StarterGui.Delta.Scripthub.Popup.Title.Paragraph
DELTA["56"] = Instance.new("TextLabel", DELTA["53"]);
DELTA["56"]["TextWrapped"] = true;
DELTA["56"]["ZIndex"] = 999999999;
DELTA["56"]["TextScaled"] = true;
DELTA["56"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["56"]["TextXAlignment"] = Enum.TextXAlignment.Left;
DELTA["56"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
DELTA["56"]["TextSize"] = 14;
DELTA["56"]["TextColor3"] = Color3.fromRGB(161, 167, 182);
DELTA["56"]["AnchorPoint"] = Vector2.new(0.5, 1);
DELTA["56"]["Size"] = UDim2.new(0.7438986301422119, 0, 0.3536166250705719, 0);
DELTA["56"]["Text"] = [[Choose whether to execute, open in a new tab, etc..]];
DELTA["56"]["Name"] = [[Paragraph]];
DELTA["56"]["BackgroundTransparency"] = 1;
DELTA["56"]["Position"] = UDim2.new(0.37194931507110596, 0, 0.8536167144775391, 0);

-- StarterGui.Delta.Scripthub.Popup.Buttons
DELTA["57"] = Instance.new("Frame", DELTA["52"]);
DELTA["57"]["ZIndex"] = 999999999;
DELTA["57"]["BorderSizePixel"] = 0;
DELTA["57"]["BackgroundColor3"] = Color3.fromRGB(22, 22, 30);
DELTA["57"]["AnchorPoint"] = Vector2.new(0.5, 1);
DELTA["57"]["BackgroundTransparency"] = 1;
DELTA["57"]["Size"] = UDim2.new(0.8189999461174011, 0, 0.5725698471069336, 0);
DELTA["57"]["ClipsDescendants"] = true;
DELTA["57"]["Position"] = UDim2.new(0.5, 0, 0.9148041009902954, 0);
DELTA["57"]["Name"] = [[Buttons]];

-- StarterGui.Delta.Scripthub.Popup.Buttons.UIListLayout
DELTA["58"] = Instance.new("UIListLayout", DELTA["57"]);
DELTA["58"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
DELTA["58"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
DELTA["58"]["Padding"] = UDim.new(0.05000000074505806, 0);
DELTA["58"]["SortOrder"] = Enum.SortOrder.LayoutOrder;

-- StarterGui.Delta.Scripthub.Popup.Buttons.Button1
DELTA["59"] = Instance.new("ImageButton", DELTA["57"]);
DELTA["59"]["Active"] = false;
DELTA["59"]["ZIndex"] = 999999999;
DELTA["59"]["BackgroundColor3"] = Color3.fromRGB(60, 137, 196);
DELTA["59"]["Selectable"] = false;
DELTA["59"]["Size"] = UDim2.new(0.9621250629425049, 0, 0.16304326057434082, 0);
DELTA["59"]["Name"] = [[Button1]];
DELTA["59"]["Position"] = UDim2.new(0.018937479704618454, 0, 0.17102082073688507, 0);
DELTA["59"]["BackgroundTransparency"] = 0.8899999856948853;

-- StarterGui.Delta.Scripthub.Popup.Buttons.Button1.UICorner
DELTA["5a"] = Instance.new("UICorner", DELTA["59"]);
DELTA["5a"]["CornerRadius"] = UDim.new(0.30000001192092896, 0);

-- StarterGui.Delta.Scripthub.Popup.Buttons.Button1.Title
DELTA["5b"] = Instance.new("TextLabel", DELTA["59"]);
DELTA["5b"]["TextWrapped"] = true;
DELTA["5b"]["ZIndex"] = 999999999;
DELTA["5b"]["TextScaled"] = true;
DELTA["5b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["5b"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
DELTA["5b"]["TextSize"] = 14;
DELTA["5b"]["TextColor3"] = Color3.fromRGB(140, 206, 255);
DELTA["5b"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
DELTA["5b"]["Size"] = UDim2.new(0.8766257762908936, 0, 0.3993089199066162, 0);
DELTA["5b"]["Text"] = [[EXECUTE SELECTED SCRIPT]];
DELTA["5b"]["Name"] = [[Title]];
DELTA["5b"]["BackgroundTransparency"] = 1;
DELTA["5b"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);

-- StarterGui.Delta.Scripthub.Popup.Buttons.Button1.UIStroke
DELTA["5c"] = Instance.new("UIStroke", DELTA["59"]);
DELTA["5c"]["Color"] = Color3.fromRGB(60, 137, 196);
DELTA["5c"]["Thickness"] = 2;

-- StarterGui.Delta.Scripthub.Popup.Buttons.Button2
DELTA["5d"] = Instance.new("ImageButton", DELTA["57"]);
DELTA["5d"]["Active"] = false;
DELTA["5d"]["ZIndex"] = 999999999;
DELTA["5d"]["BackgroundColor3"] = Color3.fromRGB(94, 136, 169);
DELTA["5d"]["Selectable"] = false;
DELTA["5d"]["LayoutOrder"] = 1;
DELTA["5d"]["Size"] = UDim2.new(0.9621250629425049, 0, 0.16304320096969604, 0);
DELTA["5d"]["Name"] = [[Button2]];
DELTA["5d"]["Position"] = UDim2.new(0.018937479704618454, 0, 0.3772318959236145, 0);
DELTA["5d"]["BackgroundTransparency"] = 0.8999999761581421;

-- StarterGui.Delta.Scripthub.Popup.Buttons.Button2.UICorner
DELTA["5e"] = Instance.new("UICorner", DELTA["5d"]);
DELTA["5e"]["CornerRadius"] = UDim.new(0.30000001192092896, 0);

-- StarterGui.Delta.Scripthub.Popup.Buttons.Button2.Title
DELTA["5f"] = Instance.new("TextLabel", DELTA["5d"]);
DELTA["5f"]["TextWrapped"] = true;
DELTA["5f"]["TextScaled"] = true;
DELTA["5f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["5f"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
DELTA["5f"]["TextSize"] = 14;
DELTA["5f"]["TextColor3"] = Color3.fromRGB(185, 211, 230);
DELTA["5f"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
DELTA["5f"]["Size"] = UDim2.new(0.8766260147094727, 0, 0.3993089199066162, 0);
DELTA["5f"]["Text"] = [[OPEN SCRIPT IN EDITOR]];
DELTA["5f"]["Name"] = [[Title]];
DELTA["5f"]["BackgroundTransparency"] = 1;
DELTA["5f"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);

-- StarterGui.Delta.Scripthub.Popup.Buttons.Button2.UIStroke
DELTA["60"] = Instance.new("UIStroke", DELTA["5d"]);
DELTA["60"]["Color"] = Color3.fromRGB(69, 97, 119);
DELTA["60"]["Thickness"] = 2;

-- StarterGui.Delta.Scripthub.Popup.Buttons.Button3
DELTA["61"] = Instance.new("ImageButton", DELTA["57"]);
DELTA["61"]["Active"] = false;
DELTA["61"]["ZIndex"] = 999999999;
DELTA["61"]["BackgroundColor3"] = Color3.fromRGB(94, 136, 169);
DELTA["61"]["Selectable"] = false;
DELTA["61"]["LayoutOrder"] = 2;
DELTA["61"]["Size"] = UDim2.new(0.9621250629425049, 0, 0.1630433201789856, 0);
DELTA["61"]["Name"] = [[Button3]];
DELTA["61"]["Position"] = UDim2.new(0.018937479704618454, 0, 0.5834426283836365, 0);
DELTA["61"]["BackgroundTransparency"] = 0.8999999761581421;

-- StarterGui.Delta.Scripthub.Popup.Buttons.Button3.UICorner
DELTA["62"] = Instance.new("UICorner", DELTA["61"]);
DELTA["62"]["CornerRadius"] = UDim.new(0.30000001192092896, 0);

-- StarterGui.Delta.Scripthub.Popup.Buttons.Button3.Title
DELTA["63"] = Instance.new("TextLabel", DELTA["61"]);
DELTA["63"]["TextWrapped"] = true;
DELTA["63"]["TextScaled"] = true;
DELTA["63"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["63"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
DELTA["63"]["TextSize"] = 14;
DELTA["63"]["TextColor3"] = Color3.fromRGB(185, 211, 230);
DELTA["63"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
DELTA["63"]["Size"] = UDim2.new(0.8766259551048279, 0, 0.3993089497089386, 0);
DELTA["63"]["Text"] = [[SAVE SELECTED SCRIPT]];
DELTA["63"]["Name"] = [[Title]];
DELTA["63"]["BackgroundTransparency"] = 1;
DELTA["63"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);

-- StarterGui.Delta.Scripthub.Popup.Buttons.Button3.UIStroke
DELTA["64"] = Instance.new("UIStroke", DELTA["61"]);
DELTA["64"]["Color"] = Color3.fromRGB(69, 97, 119);
DELTA["64"]["Thickness"] = 2;

-- StarterGui.Delta.Scripthub.Popup.Buttons.Button4
DELTA["65"] = Instance.new("ImageButton", DELTA["57"]);
DELTA["65"]["Active"] = false;
DELTA["65"]["ZIndex"] = 999999999;
DELTA["65"]["BackgroundColor3"] = Color3.fromRGB(94, 136, 169);
DELTA["65"]["Selectable"] = false;
DELTA["65"]["LayoutOrder"] = 3;
DELTA["65"]["Size"] = UDim2.new(0.9621250629425049, 0, 0.16304323077201843, 0);
DELTA["65"]["Name"] = [[Button4]];
DELTA["65"]["Position"] = UDim2.new(0.018937479704618454, 0, 0.7896538376808167, 0);
DELTA["65"]["BackgroundTransparency"] = 0.8999999761581421;

-- StarterGui.Delta.Scripthub.Popup.Buttons.Button4.UICorner
DELTA["66"] = Instance.new("UICorner", DELTA["65"]);
DELTA["66"]["CornerRadius"] = UDim.new(0.30000001192092896, 0);

-- StarterGui.Delta.Scripthub.Popup.Buttons.Button4.Title
DELTA["67"] = Instance.new("TextLabel", DELTA["65"]);
DELTA["67"]["TextWrapped"] = true;
DELTA["67"]["TextScaled"] = true;
DELTA["67"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["67"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
DELTA["67"]["TextSize"] = 14;
DELTA["67"]["TextColor3"] = Color3.fromRGB(185, 211, 230);
DELTA["67"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
DELTA["67"]["Size"] = UDim2.new(0.8766259551048279, 0, 0.3993089497089386, 0);
DELTA["67"]["Text"] = [[COPY TO CLIPBOARD]];
DELTA["67"]["Name"] = [[Title]];
DELTA["67"]["BackgroundTransparency"] = 1;
DELTA["67"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);

-- StarterGui.Delta.Scripthub.Popup.Buttons.Button4.UIStroke
DELTA["68"] = Instance.new("UIStroke", DELTA["65"]);
DELTA["68"]["Color"] = Color3.fromRGB(69, 97, 119);
DELTA["68"]["Thickness"] = 2;

-- StarterGui.Delta.Scripthub.Popup.Buttons.ButtonsHandler
DELTA["69"] = Instance.new("LocalScript", DELTA["57"]);
DELTA["69"]["Name"] = [[ButtonsHandler]];

-- StarterGui.Delta.Scripthub.Popup.UICorner
DELTA["6a"] = Instance.new("UICorner", DELTA["52"]);
DELTA["6a"]["CornerRadius"] = UDim.new(0.05000000074505806, 0);

-- StarterGui.Delta.Scripthub.Popup.ImageButton
DELTA["6b"] = Instance.new("ImageButton", DELTA["52"]);
DELTA["6b"]["ZIndex"] = 999999999;
DELTA["6b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["6b"]["AnchorPoint"] = Vector2.new(1, 0.5);
DELTA["6b"]["Image"] = [[rbxassetid://13363121645]];
DELTA["6b"]["Size"] = UDim2.new(0.04585733264684677, 0, 0.04716602712869644, 0);
DELTA["6b"]["Position"] = UDim2.new(0.8981863260269165, 0, 0.15145258605480194, 0);
DELTA["6b"]["BackgroundTransparency"] = 1;

-- StarterGui.Delta.Scripthub.Popup.ImageButton.UIAspectRatioConstraint
DELTA["6c"] = Instance.new("UIAspectRatioConstraint", DELTA["6b"]);


-- StarterGui.Delta.Scripthub.Marker
DELTA["6d"] = Instance.new("StringValue", DELTA["3b"]);
DELTA["6d"]["Value"] = [[Menu]];
DELTA["6d"]["Name"] = [[Marker]];

-- StarterGui.Delta.Settings
DELTA["6e"] = Instance.new("Frame", DELTA["1"]);
DELTA["6e"]["ZIndex"] = 100;
DELTA["6e"]["BackgroundColor3"] = Color3.fromRGB(255, 0, 0);
DELTA["6e"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
DELTA["6e"]["BackgroundTransparency"] = 1;
DELTA["6e"]["Size"] = UDim2.new(0.8064976334571838, 0, 0.9616625905036926, 0);
DELTA["6e"]["Position"] = UDim2.new(0.47783252596855164, 0, 0.5, 0);
DELTA["6e"]["Visible"] = false;
DELTA["6e"]["Name"] = [[Settings]];

-- StarterGui.Delta.Settings.Searchbar
DELTA["6f"] = Instance.new("Frame", DELTA["6e"]);
DELTA["6f"]["ZIndex"] = 2;
DELTA["6f"]["BackgroundColor3"] = Color3.fromRGB(38, 41, 50);
DELTA["6f"]["AnchorPoint"] = Vector2.new(1, 0);
DELTA["6f"]["Size"] = UDim2.new(0.7300000190734863, 0, 0.12585513293743134, 0);
DELTA["6f"]["Position"] = UDim2.new(1, 0, 0, 0);
DELTA["6f"]["Name"] = [[Searchbar]];

-- StarterGui.Delta.Settings.Searchbar.UICorner
DELTA["70"] = Instance.new("UICorner", DELTA["6f"]);
DELTA["70"]["CornerRadius"] = UDim.new(0.20000000298023224, 0);

-- StarterGui.Delta.Settings.Searchbar.ImageLabel
DELTA["71"] = Instance.new("ImageLabel", DELTA["6f"]);
DELTA["71"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["71"]["AnchorPoint"] = Vector2.new(0, 0.5);
DELTA["71"]["Image"] = [[rbxassetid://13365156882]];
DELTA["71"]["Size"] = UDim2.new(0.025552265346050262, 0, 0.40771156549453735, 0);
DELTA["71"]["BackgroundTransparency"] = 1;
DELTA["71"]["Position"] = UDim2.new(0.01834862306714058, 0, 0.5, 0);

-- StarterGui.Delta.Settings.Searchbar.ImageLabel.UIAspectRatioConstraint
DELTA["72"] = Instance.new("UIAspectRatioConstraint", DELTA["71"]);


-- StarterGui.Delta.Settings.Searchbar.Input
DELTA["73"] = Instance.new("TextBox", DELTA["6f"]);
DELTA["73"]["Active"] = true;
DELTA["73"]["TextSize"] = 14;
DELTA["73"]["TextXAlignment"] = Enum.TextXAlignment.Left;
DELTA["73"]["TextWrapped"] = true;
DELTA["73"]["TextScaled"] = true;
DELTA["73"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["73"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["73"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
DELTA["73"]["AnchorPoint"] = Vector2.new(0, 0.5);
DELTA["73"]["BackgroundTransparency"] = 1;
DELTA["73"]["PlaceholderText"] = [[Search for options]];
DELTA["73"]["Size"] = UDim2.new(0.8766564130783081, 0, 0.35361653566360474, 0);
DELTA["73"]["Selectable"] = false;
DELTA["73"]["Text"] = [[]];
DELTA["73"]["Position"] = UDim2.new(0.061162080615758896, 0, 0.49999991059303284, 0);
DELTA["73"]["Name"] = [[Input]];

-- StarterGui.Delta.Settings.Searchbar.SettingsSearchHandler
DELTA["74"] = Instance.new("LocalScript", DELTA["6f"]);
DELTA["74"]["Name"] = [[SettingsSearchHandler]];

-- StarterGui.Delta.Settings.Sort
DELTA["75"] = Instance.new("Frame", DELTA["6e"]);
DELTA["75"]["ZIndex"] = 2;
DELTA["75"]["BackgroundColor3"] = Color3.fromRGB(24, 25, 33);
DELTA["75"]["Size"] = UDim2.new(0.25, 0, 0.12585513293743134, 0);
DELTA["75"]["Name"] = [[Sort]];

-- StarterGui.Delta.Settings.Sort.UICorner
DELTA["76"] = Instance.new("UICorner", DELTA["75"]);
DELTA["76"]["CornerRadius"] = UDim.new(0.20000000298023224, 0);

-- StarterGui.Delta.Settings.Sort.UIListLayout
DELTA["77"] = Instance.new("UIListLayout", DELTA["75"]);
DELTA["77"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
DELTA["77"]["FillDirection"] = Enum.FillDirection.Horizontal;
DELTA["77"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
DELTA["77"]["Padding"] = UDim.new(0.029999999329447746, 0);
DELTA["77"]["SortOrder"] = Enum.SortOrder.LayoutOrder;

-- StarterGui.Delta.Settings.Sort.Enabled
DELTA["78"] = Instance.new("TextButton", DELTA["75"]);
DELTA["78"]["TextWrapped"] = true;
DELTA["78"]["TextScaled"] = true;
DELTA["78"]["BackgroundColor3"] = Color3.fromRGB(51, 56, 70);
DELTA["78"]["TextSize"] = 14;
DELTA["78"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
DELTA["78"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["78"]["Size"] = UDim2.new(0.27783116698265076, 0, 0.5168541073799133, 0);
DELTA["78"]["LayoutOrder"] = 1;
DELTA["78"]["Name"] = [[Enabled]];
DELTA["78"]["Text"] = [[Enabled]];
DELTA["78"]["Position"] = UDim2.new(0.02489338628947735, 0, 0.24157275259494781, 0);
DELTA["78"]["BackgroundTransparency"] = 1;

-- StarterGui.Delta.Settings.Sort.Enabled.UICorner
DELTA["79"] = Instance.new("UICorner", DELTA["78"]);
DELTA["79"]["CornerRadius"] = UDim.new(1, 0);

-- StarterGui.Delta.Settings.Sort.Enabled.UIPadding
DELTA["7a"] = Instance.new("UIPadding", DELTA["78"]);
DELTA["7a"]["PaddingTop"] = UDim.new(0.30000001192092896, 0);
DELTA["7a"]["PaddingBottom"] = UDim.new(0.30000001192092896, 0);

-- StarterGui.Delta.Settings.Sort.Disabled
DELTA["7b"] = Instance.new("TextButton", DELTA["75"]);
DELTA["7b"]["TextWrapped"] = true;
DELTA["7b"]["TextScaled"] = true;
DELTA["7b"]["BackgroundColor3"] = Color3.fromRGB(51, 56, 70);
DELTA["7b"]["TextSize"] = 14;
DELTA["7b"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
DELTA["7b"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["7b"]["Size"] = UDim2.new(0.2778310179710388, 0, 0.5168541073799133, 0);
DELTA["7b"]["LayoutOrder"] = 2;
DELTA["7b"]["Name"] = [[Disabled]];
DELTA["7b"]["Text"] = [[Disabled]];
DELTA["7b"]["Position"] = UDim2.new(0.33081313967704773, 0, 0.24157275259494781, 0);
DELTA["7b"]["BackgroundTransparency"] = 1;

-- StarterGui.Delta.Settings.Sort.Disabled.UICorner
DELTA["7c"] = Instance.new("UICorner", DELTA["7b"]);
DELTA["7c"]["CornerRadius"] = UDim.new(1, 0);

-- StarterGui.Delta.Settings.Sort.Disabled.UIPadding
DELTA["7d"] = Instance.new("UIPadding", DELTA["7b"]);
DELTA["7d"]["PaddingTop"] = UDim.new(0.30000001192092896, 0);
DELTA["7d"]["PaddingBottom"] = UDim.new(0.30000001192092896, 0);

-- StarterGui.Delta.Settings.Sort.All
DELTA["7e"] = Instance.new("TextButton", DELTA["75"]);
DELTA["7e"]["TextWrapped"] = true;
DELTA["7e"]["TextScaled"] = true;
DELTA["7e"]["BackgroundColor3"] = Color3.fromRGB(51, 56, 70);
DELTA["7e"]["TextSize"] = 14;
DELTA["7e"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
DELTA["7e"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["7e"]["Size"] = UDim2.new(0.2778310179710388, 0, 0.5168541073799133, 0);
DELTA["7e"]["LayoutOrder"] = 3;
DELTA["7e"]["Name"] = [[All]];
DELTA["7e"]["Text"] = [[All]];
DELTA["7e"]["Position"] = UDim2.new(0.6367325186729431, 0, 0.24157275259494781, 0);

-- StarterGui.Delta.Settings.Sort.All.UICorner
DELTA["7f"] = Instance.new("UICorner", DELTA["7e"]);
DELTA["7f"]["CornerRadius"] = UDim.new(1, 0);

-- StarterGui.Delta.Settings.Sort.All.UIPadding
DELTA["80"] = Instance.new("UIPadding", DELTA["7e"]);
DELTA["80"]["PaddingTop"] = UDim.new(0.30000001192092896, 0);
DELTA["80"]["PaddingBottom"] = UDim.new(0.30000001192092896, 0);

-- StarterGui.Delta.Settings.Sort.SettingsFilterHandler
DELTA["81"] = Instance.new("LocalScript", DELTA["75"]);
DELTA["81"]["Name"] = [[SettingsFilterHandler]];

-- StarterGui.Delta.Settings.Holder
DELTA["82"] = Instance.new("ScrollingFrame", DELTA["6e"]);
DELTA["82"]["CanvasSize"] = UDim2.new(0, 0, 4, 0);
DELTA["82"]["ScrollBarImageTransparency"] = 1;
DELTA["82"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["82"]["AnchorPoint"] = Vector2.new(0.5, 1);
DELTA["82"]["BackgroundTransparency"] = 1;
DELTA["82"]["Size"] = UDim2.new(1, 0, 0.8416813015937805, 0);
DELTA["82"]["Selectable"] = false;
DELTA["82"]["ScrollBarThickness"] = 1;
DELTA["82"]["Position"] = UDim2.new(0.5, 0, 1.0000001192092896, 0);
DELTA["82"]["Name"] = [[Holder]];

-- StarterGui.Delta.Settings.Holder.UIListLayout
DELTA["83"] = Instance.new("UIListLayout", DELTA["82"]);
DELTA["83"]["Padding"] = UDim.new(0.004999999888241291, 0);
DELTA["83"]["SortOrder"] = Enum.SortOrder.LayoutOrder;

-- StarterGui.Delta.Settings.Marker
DELTA["84"] = Instance.new("StringValue", DELTA["6e"]);
DELTA["84"]["Value"] = [[Menu]];
DELTA["84"]["Name"] = [[Marker]];

-- StarterGui.Delta.DarkOverlay
DELTA["85"] = Instance.new("Frame", DELTA["1"]);
DELTA["85"]["ZIndex"] = -100;
DELTA["85"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
DELTA["85"]["BackgroundTransparency"] = 0.6600000262260437;
DELTA["85"]["Size"] = UDim2.new(2, 0, 2, 0);
DELTA["85"]["Position"] = UDim2.new(-1, 0, -1, 0);
DELTA["85"]["Name"] = [[DarkOverlay]];

-- StarterGui.Delta.Executor
DELTA["86"] = Instance.new("Frame", DELTA["1"]);
DELTA["86"]["ZIndex"] = 100;
DELTA["86"]["BackgroundColor3"] = Color3.fromRGB(255, 0, 0);
DELTA["86"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
DELTA["86"]["BackgroundTransparency"] = 1;
DELTA["86"]["Size"] = UDim2.new(0.8397729992866516, 0, 0.7730588316917419, 0);
DELTA["86"]["Position"] = UDim2.new(0.4824247360229492, 0, 0.524213433265686, 0);
DELTA["86"]["Visible"] = false;
DELTA["86"]["Name"] = [[Executor]];

-- StarterGui.Delta.Executor.Executor
DELTA["87"] = Instance.new("ImageLabel", DELTA["86"]);
DELTA["87"]["BorderSizePixel"] = 0;
DELTA["87"]["ScaleType"] = Enum.ScaleType.Crop;
DELTA["87"]["BackgroundColor3"] = Color3.fromRGB(36, 0, 0);
DELTA["87"]["AnchorPoint"] = Vector2.new(1, 0.5);
DELTA["87"]["Image"] = [[rbxassetid://13387419794]];
DELTA["87"]["Size"] = UDim2.new(0.6566376686096191, 0, 0.9981886148452759, 0);
DELTA["87"]["ClipsDescendants"] = true;
DELTA["87"]["Name"] = [[Executor]];
DELTA["87"]["Position"] = UDim2.new(1.0000001192092896, 0, 0.5, 0);

-- StarterGui.Delta.Executor.Executor.Overlay
DELTA["88"] = Instance.new("ImageLabel", DELTA["87"]);
DELTA["88"]["BackgroundColor3"] = Color3.fromRGB(26, 27, 36);
DELTA["88"]["Image"] = [[rbxassetid://13387657138]];
DELTA["88"]["Size"] = UDim2.new(1, 0, 1, 0);
DELTA["88"]["Name"] = [[Overlay]];
DELTA["88"]["BackgroundTransparency"] = 0.800000011920929;

-- StarterGui.Delta.Executor.Executor.Overlay.UICorner
DELTA["89"] = Instance.new("UICorner", DELTA["88"]);
DELTA["89"]["CornerRadius"] = UDim.new(0.05000000074505806, 0);

-- StarterGui.Delta.Executor.Executor.Overlay.Menu
DELTA["8a"] = Instance.new("ImageButton", DELTA["88"]);
DELTA["8a"]["ZIndex"] = 1000;
DELTA["8a"]["BorderSizePixel"] = 0;
DELTA["8a"]["BackgroundColor3"] = Color3.fromRGB(22, 22, 30);
DELTA["8a"]["AnchorPoint"] = Vector2.new(1, 0);
DELTA["8a"]["Image"] = [[rbxassetid://0]];
DELTA["8a"]["Size"] = UDim2.new(0.06392838805913925, 0, 0.08036314696073532, 0);
DELTA["8a"]["Name"] = [[Menu]];
DELTA["8a"]["Position"] = UDim2.new(0.9912378787994385, 0, 0.026684332638978958, 0);

-- StarterGui.Delta.Executor.Executor.Overlay.Menu.ImageButton
DELTA["8b"] = Instance.new("ImageButton", DELTA["8a"]);
DELTA["8b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["8b"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
DELTA["8b"]["Image"] = [[rbxassetid://13387875723]];
DELTA["8b"]["Size"] = UDim2.new(0.0789814367890358, 0, 0.4144761860370636, 0);
DELTA["8b"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
DELTA["8b"]["BackgroundTransparency"] = 1;

-- StarterGui.Delta.Executor.Executor.Overlay.Menu.UICorner
DELTA["8c"] = Instance.new("UICorner", DELTA["8a"]);
DELTA["8c"]["CornerRadius"] = UDim.new(1, 0);

-- StarterGui.Delta.Executor.Executor.Overlay.Menu.UIAspectRatioConstraint
DELTA["8d"] = Instance.new("UIAspectRatioConstraint", DELTA["8a"]);


-- StarterGui.Delta.Executor.Executor.Overlay.Menu.Dropdown
DELTA["8e"] = Instance.new("Frame", DELTA["8a"]);
DELTA["8e"]["BackgroundColor3"] = Color3.fromRGB(41, 44, 52);
DELTA["8e"]["Size"] = UDim2.new(4.045529842376709, 0, 2.321711778640747, 0);
DELTA["8e"]["Position"] = UDim2.new(-3.045860767364502, 0, 1.093127965927124, 0);
DELTA["8e"]["Visible"] = false;
DELTA["8e"]["Name"] = [[Dropdown]];

-- StarterGui.Delta.Executor.Executor.Overlay.Menu.Dropdown.UIListLayout
DELTA["8f"] = Instance.new("UIListLayout", DELTA["8e"]);
DELTA["8f"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
DELTA["8f"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
DELTA["8f"]["Padding"] = UDim.new(0.029999999329447746, 0);
DELTA["8f"]["SortOrder"] = Enum.SortOrder.LayoutOrder;

-- StarterGui.Delta.Executor.Executor.Overlay.Menu.Dropdown.Option1
DELTA["90"] = Instance.new("ImageButton", DELTA["8e"]);
DELTA["90"]["BackgroundColor3"] = Color3.fromRGB(59, 139, 254);
DELTA["90"]["AnchorPoint"] = Vector2.new(1, 0.5);
DELTA["90"]["Image"] = [[rbxassetid://0]];
DELTA["90"]["Size"] = UDim2.new(0.8604854345321655, 0, 0.22047363221645355, 0);
DELTA["90"]["Name"] = [[Option1]];
DELTA["90"]["Position"] = UDim2.new(0.9302427172660828, 0, 0.276297390460968, 0);
DELTA["90"]["BackgroundTransparency"] = 1;

-- StarterGui.Delta.Executor.Executor.Overlay.Menu.Dropdown.Option1.UICorner
DELTA["91"] = Instance.new("UICorner", DELTA["90"]);
DELTA["91"]["CornerRadius"] = UDim.new(0.30000001192092896, 0);

-- StarterGui.Delta.Executor.Executor.Overlay.Menu.Dropdown.Option1.Title
DELTA["92"] = Instance.new("TextLabel", DELTA["90"]);
DELTA["92"]["TextWrapped"] = true;
DELTA["92"]["ZIndex"] = 999999999;
DELTA["92"]["TextScaled"] = true;
DELTA["92"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["92"]["TextXAlignment"] = Enum.TextXAlignment.Left;
DELTA["92"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
DELTA["92"]["TextSize"] = 14;
DELTA["92"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["92"]["AnchorPoint"] = Vector2.new(0, 0.5);
DELTA["92"]["Size"] = UDim2.new(0.7953082323074341, 0, 0.8179191946983337, 0);
DELTA["92"]["Text"] = [[Default]];
DELTA["92"]["Name"] = [[Title]];
DELTA["92"]["BackgroundTransparency"] = 1;
DELTA["92"]["Position"] = UDim2.new(0, 0, 0.5, 0);

-- StarterGui.Delta.Executor.Executor.Overlay.Menu.Dropdown.Option1.Checked
DELTA["93"] = Instance.new("ImageButton", DELTA["90"]);
DELTA["93"]["BackgroundColor3"] = Color3.fromRGB(59, 139, 254);
DELTA["93"]["AnchorPoint"] = Vector2.new(1, 0.5);
DELTA["93"]["Image"] = [[rbxassetid://13441695981]];
DELTA["93"]["Size"] = UDim2.new(0.0812797099351883, 0, 0.5769613981246948, 0);
DELTA["93"]["Name"] = [[Checked]];
DELTA["93"]["Position"] = UDim2.new(1, 0, 0.5, 0);
DELTA["93"]["BackgroundTransparency"] = 1;

-- StarterGui.Delta.Executor.Executor.Overlay.Menu.Dropdown.Option1.Checked.UIAspectRatioConstraint
DELTA["94"] = Instance.new("UIAspectRatioConstraint", DELTA["93"]);


-- StarterGui.Delta.Executor.Executor.Overlay.Menu.Dropdown.Divider
DELTA["95"] = Instance.new("Frame", DELTA["8e"]);
DELTA["95"]["BackgroundColor3"] = Color3.fromRGB(59, 63, 74);
DELTA["95"]["Size"] = UDim2.new(0.8604854345321655, 0, 0.012410691007971764, 0);
DELTA["95"]["Position"] = UDim2.new(0.06975728273391724, 0, 0.4001886248588562, 0);
DELTA["95"]["Name"] = [[Divider]];

-- StarterGui.Delta.Executor.Executor.Overlay.Menu.Dropdown.Option2
DELTA["96"] = Instance.new("ImageButton", DELTA["8e"]);
DELTA["96"]["BackgroundColor3"] = Color3.fromRGB(59, 139, 254);
DELTA["96"]["AnchorPoint"] = Vector2.new(1, 0.5);
DELTA["96"]["Image"] = [[rbxassetid://0]];
DELTA["96"]["Size"] = UDim2.new(0.8604854345321655, 0, 0.22047372162342072, 0);
DELTA["96"]["Name"] = [[Option2]];
DELTA["96"]["Position"] = UDim2.new(0.9302427172660828, 0, 0.5364913940429688, 0);
DELTA["96"]["BackgroundTransparency"] = 1;

-- StarterGui.Delta.Executor.Executor.Overlay.Menu.Dropdown.Option2.UICorner
DELTA["97"] = Instance.new("UICorner", DELTA["96"]);
DELTA["97"]["CornerRadius"] = UDim.new(0.30000001192092896, 0);

-- StarterGui.Delta.Executor.Executor.Overlay.Menu.Dropdown.Option2.Title
DELTA["98"] = Instance.new("TextLabel", DELTA["96"]);
DELTA["98"]["TextWrapped"] = true;
DELTA["98"]["ZIndex"] = 999999999;
DELTA["98"]["TextScaled"] = true;
DELTA["98"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["98"]["TextXAlignment"] = Enum.TextXAlignment.Left;
DELTA["98"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
DELTA["98"]["TextSize"] = 14;
DELTA["98"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["98"]["AnchorPoint"] = Vector2.new(0, 0.5);
DELTA["98"]["Size"] = UDim2.new(0.7953082323074341, 0, 0.8179191946983337, 0);
DELTA["98"]["Text"] = [[Light]];
DELTA["98"]["Name"] = [[Title]];
DELTA["98"]["BackgroundTransparency"] = 1;
DELTA["98"]["Position"] = UDim2.new(0, 0, 0.5, 0);

-- StarterGui.Delta.Executor.Executor.Overlay.Menu.Dropdown.Option2.Checked
DELTA["99"] = Instance.new("ImageButton", DELTA["96"]);
DELTA["99"]["BackgroundColor3"] = Color3.fromRGB(59, 139, 254);
DELTA["99"]["AnchorPoint"] = Vector2.new(1, 0.5);
DELTA["99"]["Image"] = [[rbxassetid://13441695981]];
DELTA["99"]["Size"] = UDim2.new(0.0812797099351883, 0, 0.5769613981246948, 0);
DELTA["99"]["Name"] = [[Checked]];
DELTA["99"]["Visible"] = false;
DELTA["99"]["Position"] = UDim2.new(1, 0, 0.5, 0);
DELTA["99"]["BackgroundTransparency"] = 1;

-- StarterGui.Delta.Executor.Executor.Overlay.Menu.Dropdown.Option2.Checked.UIAspectRatioConstraint
DELTA["9a"] = Instance.new("UIAspectRatioConstraint", DELTA["99"]);


-- StarterGui.Delta.Executor.Executor.Overlay.Menu.Dropdown.Divider
DELTA["9b"] = Instance.new("Frame", DELTA["8e"]);
DELTA["9b"]["BackgroundColor3"] = Color3.fromRGB(59, 63, 74);
DELTA["9b"]["Size"] = UDim2.new(0.8604854345321655, 0, 0.012410691007971764, 0);
DELTA["9b"]["Position"] = UDim2.new(0.06975728273391724, 0, 0.6603825688362122, 0);
DELTA["9b"]["Name"] = [[Divider]];

-- StarterGui.Delta.Executor.Executor.Overlay.Menu.Dropdown.Option3
DELTA["9c"] = Instance.new("ImageButton", DELTA["8e"]);
DELTA["9c"]["BackgroundColor3"] = Color3.fromRGB(59, 139, 254);
DELTA["9c"]["AnchorPoint"] = Vector2.new(1, 0.5);
DELTA["9c"]["Image"] = [[rbxassetid://0]];
DELTA["9c"]["Size"] = UDim2.new(0.8604854345321655, 0, 0.2204737514257431, 0);
DELTA["9c"]["Name"] = [[Option3]];
DELTA["9c"]["Position"] = UDim2.new(0.9302427172660828, 0, 0.7966850399971008, 0);
DELTA["9c"]["BackgroundTransparency"] = 1;

-- StarterGui.Delta.Executor.Executor.Overlay.Menu.Dropdown.Option3.UICorner
DELTA["9d"] = Instance.new("UICorner", DELTA["9c"]);
DELTA["9d"]["CornerRadius"] = UDim.new(0.30000001192092896, 0);

-- StarterGui.Delta.Executor.Executor.Overlay.Menu.Dropdown.Option3.Title
DELTA["9e"] = Instance.new("TextLabel", DELTA["9c"]);
DELTA["9e"]["TextWrapped"] = true;
DELTA["9e"]["ZIndex"] = 999999999;
DELTA["9e"]["TextScaled"] = true;
DELTA["9e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["9e"]["TextXAlignment"] = Enum.TextXAlignment.Left;
DELTA["9e"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
DELTA["9e"]["TextSize"] = 14;
DELTA["9e"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["9e"]["AnchorPoint"] = Vector2.new(0, 0.5);
DELTA["9e"]["Size"] = UDim2.new(0.7953082323074341, 0, 0.8179191946983337, 0);
DELTA["9e"]["Text"] = [[Amoled]];
DELTA["9e"]["Name"] = [[Title]];
DELTA["9e"]["BackgroundTransparency"] = 1;
DELTA["9e"]["Position"] = UDim2.new(0, 0, 0.5, 0);

-- StarterGui.Delta.Executor.Executor.Overlay.Menu.Dropdown.Option3.Checked
DELTA["9f"] = Instance.new("ImageButton", DELTA["9c"]);
DELTA["9f"]["BackgroundColor3"] = Color3.fromRGB(59, 139, 254);
DELTA["9f"]["AnchorPoint"] = Vector2.new(1, 0.5);
DELTA["9f"]["Image"] = [[rbxassetid://13441695981]];
DELTA["9f"]["Size"] = UDim2.new(0.0812797099351883, 0, 0.5769613981246948, 0);
DELTA["9f"]["Name"] = [[Checked]];
DELTA["9f"]["Visible"] = false;
DELTA["9f"]["Position"] = UDim2.new(1, 0, 0.5, 0);
DELTA["9f"]["BackgroundTransparency"] = 1;

-- StarterGui.Delta.Executor.Executor.Overlay.Menu.Dropdown.Option3.Checked.UIAspectRatioConstraint
DELTA["a0"] = Instance.new("UIAspectRatioConstraint", DELTA["9f"]);


-- StarterGui.Delta.Executor.Executor.Overlay.Menu.Dropdown.UICorner
DELTA["a1"] = Instance.new("UICorner", DELTA["8e"]);
DELTA["a1"]["CornerRadius"] = UDim.new(0.20000000298023224, 0);

-- StarterGui.Delta.Executor.Executor.Overlay.Menu.LocalScript
DELTA["a2"] = Instance.new("LocalScript", DELTA["8a"]);


-- StarterGui.Delta.Executor.Executor.Overlay.Buttons
DELTA["a3"] = Instance.new("Frame", DELTA["88"]);
DELTA["a3"]["ZIndex"] = 200;
DELTA["a3"]["BorderSizePixel"] = 0;
DELTA["a3"]["BackgroundColor3"] = Color3.fromRGB(22, 22, 30);
DELTA["a3"]["AnchorPoint"] = Vector2.new(0.5, 1);
DELTA["a3"]["BackgroundTransparency"] = 1;
DELTA["a3"]["Size"] = UDim2.new(0.96828693151474, 0, 0.17342007160186768, 0);
DELTA["a3"]["ClipsDescendants"] = true;
DELTA["a3"]["Position"] = UDim2.new(0.507856547832489, 0, 0.9821560382843018, 0);
DELTA["a3"]["Name"] = [[Buttons]];

-- StarterGui.Delta.Executor.Executor.Overlay.Buttons.UIListLayout
DELTA["a4"] = Instance.new("UIListLayout", DELTA["a3"]);
DELTA["a4"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
DELTA["a4"]["FillDirection"] = Enum.FillDirection.Horizontal;
DELTA["a4"]["Padding"] = UDim.new(0.029999999329447746, 0);
DELTA["a4"]["SortOrder"] = Enum.SortOrder.LayoutOrder;

-- StarterGui.Delta.Executor.Executor.Overlay.Buttons.Execute
DELTA["a5"] = Instance.new("ImageButton", DELTA["a3"]);
DELTA["a5"]["Active"] = false;
DELTA["a5"]["ZIndex"] = 300;
DELTA["a5"]["BackgroundColor3"] = Color3.fromRGB(60, 137, 196);
DELTA["a5"]["Selectable"] = false;
DELTA["a5"]["Size"] = UDim2.new(0.2561585009098053, 0, 0.7000001668930054, 0);
DELTA["a5"]["Name"] = [[Execute]];
DELTA["a5"]["Position"] = UDim2.new(0.008000015281140804, 0, 0.20599937438964844, 0);
DELTA["a5"]["BackgroundTransparency"] = 0.8899999856948853;

-- StarterGui.Delta.Executor.Executor.Overlay.Buttons.Execute.UICorner
DELTA["a6"] = Instance.new("UICorner", DELTA["a5"]);
DELTA["a6"]["CornerRadius"] = UDim.new(0.30000001192092896, 0);

-- StarterGui.Delta.Executor.Executor.Overlay.Buttons.Execute.Title
DELTA["a7"] = Instance.new("TextLabel", DELTA["a5"]);
DELTA["a7"]["TextWrapped"] = true;
DELTA["a7"]["TextScaled"] = true;
DELTA["a7"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["a7"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
DELTA["a7"]["TextSize"] = 14;
DELTA["a7"]["TextColor3"] = Color3.fromRGB(140, 206, 255);
DELTA["a7"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
DELTA["a7"]["Size"] = UDim2.new(0.8766257762908936, 0, 0.3993089199066162, 0);
DELTA["a7"]["Text"] = [[EXECUTE]];
DELTA["a7"]["Name"] = [[Title]];
DELTA["a7"]["BackgroundTransparency"] = 1;
DELTA["a7"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);

-- StarterGui.Delta.Executor.Executor.Overlay.Buttons.Execute.UIStroke
DELTA["a8"] = Instance.new("UIStroke", DELTA["a5"]);
DELTA["a8"]["Color"] = Color3.fromRGB(60, 137, 196);
DELTA["a8"]["Thickness"] = 2;

-- StarterGui.Delta.Executor.Executor.Overlay.Buttons.Clear
DELTA["a9"] = Instance.new("ImageButton", DELTA["a3"]);
DELTA["a9"]["Active"] = false;
DELTA["a9"]["ZIndex"] = 300;
DELTA["a9"]["BackgroundColor3"] = Color3.fromRGB(94, 136, 169);
DELTA["a9"]["Selectable"] = false;
DELTA["a9"]["LayoutOrder"] = 1;
DELTA["a9"]["Size"] = UDim2.new(0.22138313949108124, 0, 0.7000001668930054, 0);
DELTA["a9"]["Name"] = [[Clear]];
DELTA["a9"]["Position"] = UDim2.new(0.27973994612693787, 0, 0.20599937438964844, 0);
DELTA["a9"]["BackgroundTransparency"] = 0.9300000071525574;

-- StarterGui.Delta.Executor.Executor.Overlay.Buttons.Clear.UICorner
DELTA["aa"] = Instance.new("UICorner", DELTA["a9"]);
DELTA["aa"]["CornerRadius"] = UDim.new(0.30000001192092896, 0);

-- StarterGui.Delta.Executor.Executor.Overlay.Buttons.Clear.Title
DELTA["ab"] = Instance.new("TextLabel", DELTA["a9"]);
DELTA["ab"]["TextWrapped"] = true;
DELTA["ab"]["TextScaled"] = true;
DELTA["ab"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["ab"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
DELTA["ab"]["TextSize"] = 14;
DELTA["ab"]["TextColor3"] = Color3.fromRGB(185, 211, 230);
DELTA["ab"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
DELTA["ab"]["Size"] = UDim2.new(0.8766260147094727, 0, 0.3993089199066162, 0);
DELTA["ab"]["Text"] = [[CLEAR]];
DELTA["ab"]["Name"] = [[Title]];
DELTA["ab"]["BackgroundTransparency"] = 1;
DELTA["ab"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);

-- StarterGui.Delta.Executor.Executor.Overlay.Buttons.Clear.UIStroke
DELTA["ac"] = Instance.new("UIStroke", DELTA["a9"]);
DELTA["ac"]["Color"] = Color3.fromRGB(69, 97, 119);
DELTA["ac"]["Thickness"] = 2;

-- StarterGui.Delta.Executor.Executor.Overlay.Buttons.ExecuteClipboard
DELTA["ad"] = Instance.new("ImageButton", DELTA["a3"]);
DELTA["ad"]["Active"] = false;
DELTA["ad"]["ZIndex"] = 300;
DELTA["ad"]["BackgroundColor3"] = Color3.fromRGB(94, 136, 169);
DELTA["ad"]["Selectable"] = false;
DELTA["ad"]["LayoutOrder"] = 2;
DELTA["ad"]["Size"] = UDim2.new(0.3552889823913574, 0, 0.699999988079071, 0);
DELTA["ad"]["Name"] = [[ExecuteClipboard]];
DELTA["ad"]["Position"] = UDim2.new(0.5057284832000732, 0, 0.20600003004074097, 0);
DELTA["ad"]["BackgroundTransparency"] = 0.9300000071525574;

-- StarterGui.Delta.Executor.Executor.Overlay.Buttons.ExecuteClipboard.UICorner
DELTA["ae"] = Instance.new("UICorner", DELTA["ad"]);
DELTA["ae"]["CornerRadius"] = UDim.new(0.30000001192092896, 0);

-- StarterGui.Delta.Executor.Executor.Overlay.Buttons.ExecuteClipboard.Title
DELTA["af"] = Instance.new("TextLabel", DELTA["ad"]);
DELTA["af"]["TextWrapped"] = true;
DELTA["af"]["TextScaled"] = true;
DELTA["af"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["af"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
DELTA["af"]["TextSize"] = 14;
DELTA["af"]["TextColor3"] = Color3.fromRGB(185, 211, 230);
DELTA["af"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
DELTA["af"]["Size"] = UDim2.new(0.8766259551048279, 0, 0.3993089497089386, 0);
DELTA["af"]["Text"] = [[EXECUTE CLIPBOARD]];
DELTA["af"]["Name"] = [[Title]];
DELTA["af"]["BackgroundTransparency"] = 1;
DELTA["af"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);

-- StarterGui.Delta.Executor.Executor.Overlay.Buttons.ExecuteClipboard.UIStroke
DELTA["b0"] = Instance.new("UIStroke", DELTA["ad"]);
DELTA["b0"]["Color"] = Color3.fromRGB(69, 97, 119);
DELTA["b0"]["Thickness"] = 2;

-- StarterGui.Delta.Executor.Executor.Overlay.Buttons.UIPadding
DELTA["b1"] = Instance.new("UIPadding", DELTA["a3"]);
DELTA["b1"]["PaddingTop"] = UDim.new(0.07999999821186066, 0);
DELTA["b1"]["PaddingRight"] = UDim.new(0.00800000037997961, 0);
DELTA["b1"]["PaddingBottom"] = UDim.new(0.07999999821186066, 0);
DELTA["b1"]["PaddingLeft"] = UDim.new(0.00800000037997961, 0);

-- StarterGui.Delta.Executor.Executor.Overlay.Buttons.ButtonHandlers
DELTA["b2"] = Instance.new("LocalScript", DELTA["a3"]);
DELTA["b2"]["Name"] = [[ButtonHandlers]];

-- StarterGui.Delta.Executor.Executor.Overlay.Buttons.Button3
DELTA["b3"] = Instance.new("TextBox", DELTA["a3"]);
DELTA["b3"]["Active"] = true;
DELTA["b3"]["ZIndex"] = 300;
DELTA["b3"]["TextSize"] = 21;
DELTA["b3"]["TextWrapped"] = true;
DELTA["b3"]["BackgroundColor3"] = Color3.fromRGB(94, 136, 169);
DELTA["b3"]["TextColor3"] = Color3.fromRGB(185, 211, 230);
DELTA["b3"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
DELTA["b3"]["LayoutOrder"] = 2;
DELTA["b3"]["BackgroundTransparency"] = 0.9300000071525574;
DELTA["b3"]["Size"] = UDim2.new(0.07424724847078323, 0, 0.699999988079071, 0);
DELTA["b3"]["Selectable"] = false;
DELTA["b3"]["Text"] = [[]];
DELTA["b3"]["Position"] = UDim2.new(0.9160652756690979, 0, 0.20599988102912903, 0);
DELTA["b3"]["Visible"] = false;
DELTA["b3"]["Name"] = [[Button3]];

-- StarterGui.Delta.Executor.Executor.Overlay.Buttons.Button3.UICorner
DELTA["b4"] = Instance.new("UICorner", DELTA["b3"]);
DELTA["b4"]["CornerRadius"] = UDim.new(0.30000001192092896, 0);

-- StarterGui.Delta.Executor.Executor.Overlay.Buttons.Button3.UIStroke
DELTA["b5"] = Instance.new("UIStroke", DELTA["b3"]);
DELTA["b5"]["Color"] = Color3.fromRGB(69, 97, 119);
DELTA["b5"]["Thickness"] = 2;
DELTA["b5"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

-- StarterGui.Delta.Executor.Executor.Overlay.Tabs
DELTA["b6"] = Instance.new("ScrollingFrame", DELTA["88"]);
DELTA["b6"]["ZIndex"] = 200;
DELTA["b6"]["BorderSizePixel"] = 0;
DELTA["b6"]["CanvasSize"] = UDim2.new(2, 0, 0, 0);
DELTA["b6"]["BackgroundColor3"] = Color3.fromRGB(22, 22, 30);
DELTA["b6"]["HorizontalScrollBarInset"] = Enum.ScrollBarInset.Always;
DELTA["b6"]["AutomaticCanvasSize"] = Enum.AutomaticSize.X;
DELTA["b6"]["Size"] = UDim2.new(0.9840000867843628, 0, 0.12545627355575562, 0);
DELTA["b6"]["Selectable"] = false;
DELTA["b6"]["ScrollBarThickness"] = 0;
DELTA["b6"]["Position"] = UDim2.new(0.007965609431266785, 0, 0.016980938613414764, 0);
DELTA["b6"]["Name"] = [[Tabs]];

-- StarterGui.Delta.Executor.Executor.Overlay.Tabs.UIPadding
DELTA["b7"] = Instance.new("UIPadding", DELTA["b6"]);
DELTA["b7"]["PaddingTop"] = UDim.new(0.07999999821186066, 0);
DELTA["b7"]["PaddingRight"] = UDim.new(0.00800000037997961, 0);
DELTA["b7"]["PaddingBottom"] = UDim.new(0.07999999821186066, 0);
DELTA["b7"]["PaddingLeft"] = UDim.new(0.00800000037997961, 0);

-- StarterGui.Delta.Executor.Executor.Overlay.Tabs.UIListLayout
DELTA["b8"] = Instance.new("UIListLayout", DELTA["b6"]);
DELTA["b8"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
DELTA["b8"]["FillDirection"] = Enum.FillDirection.Horizontal;
DELTA["b8"]["Padding"] = UDim.new(0.009999999776482582, 0);
DELTA["b8"]["SortOrder"] = Enum.SortOrder.LayoutOrder;

-- StarterGui.Delta.Executor.Executor.Overlay.Tabs.AddTab
DELTA["b9"] = Instance.new("ImageButton", DELTA["b6"]);
DELTA["b9"]["Active"] = false;
DELTA["b9"]["ZIndex"] = 300;
DELTA["b9"]["BackgroundColor3"] = Color3.fromRGB(34, 41, 50);
DELTA["b9"]["Selectable"] = false;
DELTA["b9"]["LayoutOrder"] = 1000;
DELTA["b9"]["Size"] = UDim2.new(0.0526634119451046, 0, 0.6154626607894897, 0);
DELTA["b9"]["Name"] = [[AddTab]];
DELTA["b9"]["Position"] = UDim2.new(0.26442891359329224, 0, 0.30375349521636963, 0);

-- StarterGui.Delta.Executor.Executor.Overlay.Tabs.AddTab.UICorner
DELTA["ba"] = Instance.new("UICorner", DELTA["b9"]);
DELTA["ba"]["CornerRadius"] = UDim.new(0.30000001192092896, 0);

-- StarterGui.Delta.Executor.Executor.Overlay.Tabs.AddTab.ImageButton
DELTA["bb"] = Instance.new("ImageButton", DELTA["b9"]);
DELTA["bb"]["Active"] = false;
DELTA["bb"]["Modal"] = true;
DELTA["bb"]["AutoButtonColor"] = false;
DELTA["bb"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["bb"]["AnchorPoint"] = Vector2.new(1, 0.5);
DELTA["bb"]["Image"] = [[rbxassetid://13387627918]];
DELTA["bb"]["Size"] = UDim2.new(0.35981613397598267, 0, 0.3613884449005127, 0);
DELTA["bb"]["Rotation"] = 45;
DELTA["bb"]["Position"] = UDim2.new(0.699999988079071, 0, 0.5, 0);
DELTA["bb"]["BackgroundTransparency"] = 1;

-- StarterGui.Delta.Executor.Executor.Overlay.Tabs.AddTab.ImageButton.UIAspectRatioConstraint
DELTA["bc"] = Instance.new("UIAspectRatioConstraint", DELTA["bb"]);


-- StarterGui.Delta.Executor.Executor.Overlay.Tabs.AddTab.LocalScript
DELTA["bd"] = Instance.new("LocalScript", DELTA["b9"]);


-- StarterGui.Delta.Executor.Executor.Overlay.Tabs.AddTab.UIAspectRatioConstraint
DELTA["be"] = Instance.new("UIAspectRatioConstraint", DELTA["b9"]);
DELTA["be"]["AspectRatio"] = 1.004372477531433;

-- StarterGui.Delta.Executor.Executor.Overlay.Reserved
DELTA["bf"] = Instance.new("Folder", DELTA["88"]);
DELTA["bf"]["Name"] = [[Reserved]];

-- StarterGui.Delta.Executor.Executor.Overlay.Reserved.Textbox
DELTA["c0"] = Instance.new("TextBox", DELTA["bf"]);
DELTA["c0"]["LineHeight"] = 1.840000033378601;
DELTA["c0"]["TextSize"] = 21;
DELTA["c0"]["TextXAlignment"] = Enum.TextXAlignment.Left;
DELTA["c0"]["TextWrapped"] = false;
DELTA["c0"]["TextYAlignment"] = Enum.TextYAlignment.Top;
DELTA["c0"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["c0"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["c0"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
DELTA["c0"]["ShowNativeInput"] = false;
DELTA["c0"]["MultiLine"] = true;
DELTA["c0"]["BackgroundTransparency"] = 1;
DELTA["c0"]["Size"] = UDim2.new(0.9882024526596069, 0, 0.9716954827308655, 0);
DELTA["c0"]["Text"] = "";
DELTA["c0"]["PlaceholderText"] = "Thank you for NOT using Delta <3\nUse Arceus X or Codex instead!";
DELTA["c0"]["Position"] = UDim2.new(0.011494521982967854, 0, 0.012946978211402893, 3);
DELTA["c0"]["AutomaticSize"] = Enum.AutomaticSize.XY;
DELTA["c0"]["Visible"] = false;
DELTA["c0"]["Name"] = [[Textbox]];
DELTA["c0"]["ClearTextOnFocus"] = false;

-- StarterGui.Delta.Executor.Executor.Overlay.Reserved.SettingSwitchOn
DELTA["c1"] = Instance.new("Frame", DELTA["bf"]);
DELTA["c1"]["BackgroundColor3"] = Color3.fromRGB(31, 51, 80);
DELTA["c1"]["Size"] = UDim2.new(1, 0, 0.03193088620901108, 0);
DELTA["c1"]["Visible"] = false;
DELTA["c1"]["Name"] = [[SettingSwitchOn]];

-- StarterGui.Delta.Executor.Executor.Overlay.Reserved.SettingSwitchOn.UICorner
DELTA["c2"] = Instance.new("UICorner", DELTA["c1"]);
DELTA["c2"]["CornerRadius"] = UDim.new(0.20000000298023224, 0);

-- StarterGui.Delta.Executor.Executor.Overlay.Reserved.SettingSwitchOn.Title
DELTA["c3"] = Instance.new("TextLabel", DELTA["c1"]);
DELTA["c3"]["TextWrapped"] = true;
DELTA["c3"]["TextScaled"] = true;
DELTA["c3"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["c3"]["TextXAlignment"] = Enum.TextXAlignment.Left;
DELTA["c3"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
DELTA["c3"]["TextSize"] = 14;
DELTA["c3"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["c3"]["AnchorPoint"] = Vector2.new(0, 0.5);
DELTA["c3"]["Size"] = UDim2.new(0.18567337095737457, 0, 0.31746408343315125, 0);
DELTA["c3"]["Text"] = [[Auto Execute]];
DELTA["c3"]["Name"] = [[Title]];
DELTA["c3"]["BackgroundTransparency"] = 1;
DELTA["c3"]["Position"] = UDim2.new(0, 0, 0.5, 0);

-- StarterGui.Delta.Executor.Executor.Overlay.Reserved.SettingSwitchOn.UIPadding
DELTA["c4"] = Instance.new("UIPadding", DELTA["c1"]);
DELTA["c4"]["PaddingRight"] = UDim.new(0.029999999329447746, 0);
DELTA["c4"]["PaddingLeft"] = UDim.new(0.029999999329447746, 0);

-- StarterGui.Delta.Executor.Executor.Overlay.Reserved.SettingSwitchOn.Desc
DELTA["c5"] = Instance.new("TextLabel", DELTA["c1"]);
DELTA["c5"]["TextWrapped"] = true;
DELTA["c5"]["TextScaled"] = true;
DELTA["c5"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["c5"]["TextXAlignment"] = Enum.TextXAlignment.Left;
DELTA["c5"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
DELTA["c5"]["TextSize"] = 14;
DELTA["c5"]["TextColor3"] = Color3.fromRGB(126, 139, 176);
DELTA["c5"]["AnchorPoint"] = Vector2.new(0, 0.5);
DELTA["c5"]["Size"] = UDim2.new(0.6590386629104614, 0, 0.23099972307682037, 0);
DELTA["c5"]["Text"] = [[automatically execute scripts in your autoexec file upon attached.]];
DELTA["c5"]["Name"] = [[Desc]];
DELTA["c5"]["BackgroundTransparency"] = 1;
DELTA["c5"]["Position"] = UDim2.new(0.18517163395881653, 0, 0.5, 0);

-- StarterGui.Delta.Executor.Executor.Overlay.Reserved.SettingSwitchOn.Switch
DELTA["c6"] = Instance.new("ImageButton", DELTA["c1"]);
DELTA["c6"]["BackgroundColor3"] = Color3.fromRGB(59, 139, 254);
DELTA["c6"]["AnchorPoint"] = Vector2.new(1, 0.5);
DELTA["c6"]["Image"] = [[rbxassetid://0]];
DELTA["c6"]["Size"] = UDim2.new(0.06560052931308746, 0, 0.473985493183136, 0);
DELTA["c6"]["Name"] = [[Switch]];
DELTA["c6"]["Position"] = UDim2.new(1, 0, 0.5, 0);

-- StarterGui.Delta.Executor.Executor.Overlay.Reserved.SettingSwitchOn.Switch.UICorner
DELTA["c7"] = Instance.new("UICorner", DELTA["c6"]);
DELTA["c7"]["CornerRadius"] = UDim.new(10, 0);

-- StarterGui.Delta.Executor.Executor.Overlay.Reserved.SettingSwitchOn.Switch.ImageButton
DELTA["c8"] = Instance.new("ImageLabel", DELTA["c6"]);
DELTA["c8"]["BackgroundColor3"] = Color3.fromRGB(254, 254, 254);
DELTA["c8"]["Selectable"] = true;
DELTA["c8"]["AnchorPoint"] = Vector2.new(1, 0.5);
DELTA["c8"]["Image"] = [[rbxassetid://0]];
DELTA["c8"]["Size"] = UDim2.new(0.34452590346336365, 0, 0.6585104465484619, 0);
DELTA["c8"]["Active"] = true;
DELTA["c8"]["Name"] = [[ImageButton]];
DELTA["c8"]["Position"] = UDim2.new(0.8884302377700806, 0, 0.5, 0);

-- StarterGui.Delta.Executor.Executor.Overlay.Reserved.SettingSwitchOn.Switch.ImageButton.UICorner
DELTA["c9"] = Instance.new("UICorner", DELTA["c8"]);
DELTA["c9"]["CornerRadius"] = UDim.new(10, 0);

-- StarterGui.Delta.Executor.Executor.Overlay.Reserved.SettingSwitchOn.Switch.ImageButton.UIAspectRatioConstraint
DELTA["ca"] = Instance.new("UIAspectRatioConstraint", DELTA["c8"]);


-- StarterGui.Delta.Executor.Executor.Overlay.Reserved.SettingSwitchOn.Enabled
DELTA["cb"] = Instance.new("BoolValue", DELTA["c1"]);
DELTA["cb"]["Value"] = true;
DELTA["cb"]["Name"] = [[Enabled]];

-- StarterGui.Delta.Executor.Executor.Overlay.Reserved.Button
DELTA["cc"] = Instance.new("Frame", DELTA["bf"]);
DELTA["cc"]["BackgroundColor3"] = Color3.fromRGB(38, 41, 50);
DELTA["cc"]["LayoutOrder"] = 2;
DELTA["cc"]["Size"] = UDim2.new(1, 0, 0.03193088620901108, 0);
DELTA["cc"]["Position"] = UDim2.new(0, 0, 0.079827219247818, 0);
DELTA["cc"]["Visible"] = false;
DELTA["cc"]["Name"] = [[Button]];

-- StarterGui.Delta.Executor.Executor.Overlay.Reserved.Button.UICorner
DELTA["cd"] = Instance.new("UICorner", DELTA["cc"]);
DELTA["cd"]["CornerRadius"] = UDim.new(0.20000000298023224, 0);

-- StarterGui.Delta.Executor.Executor.Overlay.Reserved.Button.Title
DELTA["ce"] = Instance.new("TextLabel", DELTA["cc"]);
DELTA["ce"]["TextWrapped"] = true;
DELTA["ce"]["TextScaled"] = true;
DELTA["ce"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["ce"]["TextXAlignment"] = Enum.TextXAlignment.Left;
DELTA["ce"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
DELTA["ce"]["TextSize"] = 14;
DELTA["ce"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["ce"]["AnchorPoint"] = Vector2.new(0, 0.5);
DELTA["ce"]["Size"] = UDim2.new(0.18567337095737457, 0, 0.31746408343315125, 0);
DELTA["ce"]["Text"] = [[Kill ROBLOX]];
DELTA["ce"]["Name"] = [[Title]];
DELTA["ce"]["BackgroundTransparency"] = 1;
DELTA["ce"]["Position"] = UDim2.new(0, 0, 0.5, 0);

-- StarterGui.Delta.Executor.Executor.Overlay.Reserved.Button.UIPadding
DELTA["cf"] = Instance.new("UIPadding", DELTA["cc"]);
DELTA["cf"]["PaddingRight"] = UDim.new(0.029999999329447746, 0);
DELTA["cf"]["PaddingLeft"] = UDim.new(0.029999999329447746, 0);

-- StarterGui.Delta.Executor.Executor.Overlay.Reserved.Button.Desc
DELTA["d0"] = Instance.new("TextLabel", DELTA["cc"]);
DELTA["d0"]["TextWrapped"] = true;
DELTA["d0"]["TextScaled"] = true;
DELTA["d0"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["d0"]["TextXAlignment"] = Enum.TextXAlignment.Left;
DELTA["d0"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
DELTA["d0"]["TextSize"] = 14;
DELTA["d0"]["TextColor3"] = Color3.fromRGB(103, 109, 126);
DELTA["d0"]["AnchorPoint"] = Vector2.new(0, 0.5);
DELTA["d0"]["Size"] = UDim2.new(0.6590386629104614, 0, 0.23099972307682037, 0);
DELTA["d0"]["Text"] = [[self explanitory function right here]];
DELTA["d0"]["Name"] = [[Desc]];
DELTA["d0"]["BackgroundTransparency"] = 1;
DELTA["d0"]["Position"] = UDim2.new(0.18517163395881653, 0, 0.5, 0);

-- StarterGui.Delta.Executor.Executor.Overlay.Reserved.Button.Button
DELTA["d1"] = Instance.new("ImageButton", DELTA["cc"]);
DELTA["d1"]["BackgroundColor3"] = Color3.fromRGB(59, 139, 254);
DELTA["d1"]["AnchorPoint"] = Vector2.new(1, 0.5);
DELTA["d1"]["Image"] = [[rbxassetid://0]];
DELTA["d1"]["Size"] = UDim2.new(0.12388666719198227, 0, 0.473985493183136, 0);
DELTA["d1"]["Name"] = [[Button]];
DELTA["d1"]["Position"] = UDim2.new(0.9995027780532837, 0, 0.5000000596046448, 0);

-- StarterGui.Delta.Executor.Executor.Overlay.Reserved.Button.Button.UICorner
DELTA["d2"] = Instance.new("UICorner", DELTA["d1"]);
DELTA["d2"]["CornerRadius"] = UDim.new(0.30000001192092896, 0);

-- StarterGui.Delta.Executor.Executor.Overlay.Reserved.Button.Button.Title
DELTA["d3"] = Instance.new("TextLabel", DELTA["d1"]);
DELTA["d3"]["TextWrapped"] = true;
DELTA["d3"]["ZIndex"] = 999999999;
DELTA["d3"]["TextScaled"] = true;
DELTA["d3"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["d3"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
DELTA["d3"]["TextSize"] = 14;
DELTA["d3"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["d3"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
DELTA["d3"]["Size"] = UDim2.new(0.7953082323074341, 0, 0.44124072790145874, 0);
DELTA["d3"]["Text"] = [[CLICK HERE]];
DELTA["d3"]["Name"] = [[Title]];
DELTA["d3"]["BackgroundTransparency"] = 1;
DELTA["d3"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);

-- StarterGui.Delta.Executor.Executor.Overlay.Reserved.SettingSwitch
DELTA["d4"] = Instance.new("Frame", DELTA["bf"]);
DELTA["d4"]["BackgroundColor3"] = Color3.fromRGB(38, 41, 50);
DELTA["d4"]["LayoutOrder"] = 1;
DELTA["d4"]["Size"] = UDim2.new(1, 0, 0.03193089738488197, 0);
DELTA["d4"]["Position"] = UDim2.new(0, 0, 0.0399135947227478, 0);
DELTA["d4"]["Visible"] = false;
DELTA["d4"]["Name"] = [[SettingSwitch]];

-- StarterGui.Delta.Executor.Executor.Overlay.Reserved.SettingSwitch.UICorner
DELTA["d5"] = Instance.new("UICorner", DELTA["d4"]);
DELTA["d5"]["CornerRadius"] = UDim.new(0.20000000298023224, 0);

-- StarterGui.Delta.Executor.Executor.Overlay.Reserved.SettingSwitch.Title
DELTA["d6"] = Instance.new("TextLabel", DELTA["d4"]);
DELTA["d6"]["TextWrapped"] = true;
DELTA["d6"]["TextScaled"] = true;
DELTA["d6"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["d6"]["TextXAlignment"] = Enum.TextXAlignment.Left;
DELTA["d6"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
DELTA["d6"]["TextSize"] = 14;
DELTA["d6"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["d6"]["AnchorPoint"] = Vector2.new(0, 0.5);
DELTA["d6"]["Size"] = UDim2.new(0.18567337095737457, 0, 0.31746408343315125, 0);
DELTA["d6"]["Text"] = [[Auto Execute]];
DELTA["d6"]["Name"] = [[Title]];
DELTA["d6"]["BackgroundTransparency"] = 1;
DELTA["d6"]["Position"] = UDim2.new(0, 0, 0.5, 0);

-- StarterGui.Delta.Executor.Executor.Overlay.Reserved.SettingSwitch.UIPadding
DELTA["d7"] = Instance.new("UIPadding", DELTA["d4"]);
DELTA["d7"]["PaddingRight"] = UDim.new(0.029999999329447746, 0);
DELTA["d7"]["PaddingLeft"] = UDim.new(0.029999999329447746, 0);

-- StarterGui.Delta.Executor.Executor.Overlay.Reserved.SettingSwitch.Desc
DELTA["d8"] = Instance.new("TextLabel", DELTA["d4"]);
DELTA["d8"]["TextWrapped"] = true;
DELTA["d8"]["TextScaled"] = true;
DELTA["d8"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["d8"]["TextXAlignment"] = Enum.TextXAlignment.Left;
DELTA["d8"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
DELTA["d8"]["TextSize"] = 14;
DELTA["d8"]["TextColor3"] = Color3.fromRGB(103, 109, 126);
DELTA["d8"]["AnchorPoint"] = Vector2.new(0, 0.5);
DELTA["d8"]["Size"] = UDim2.new(0.6590386629104614, 0, 0.23099972307682037, 0);
DELTA["d8"]["Text"] = [[automatically execute scripts in your autoexec file upon attached.]];
DELTA["d8"]["Name"] = [[Desc]];
DELTA["d8"]["BackgroundTransparency"] = 1;
DELTA["d8"]["Position"] = UDim2.new(0.18517163395881653, 0, 0.5, 0);

-- StarterGui.Delta.Executor.Executor.Overlay.Reserved.SettingSwitch.Switch
DELTA["d9"] = Instance.new("ImageButton", DELTA["d4"]);
DELTA["d9"]["BackgroundColor3"] = Color3.fromRGB(61, 66, 81);
DELTA["d9"]["AnchorPoint"] = Vector2.new(1, 0.5);
DELTA["d9"]["Image"] = [[rbxassetid://0]];
DELTA["d9"]["Size"] = UDim2.new(0.06560052931308746, 0, 0.473985493183136, 0);
DELTA["d9"]["Name"] = [[Switch]];
DELTA["d9"]["Position"] = UDim2.new(1, 0, 0.5, 0);

-- StarterGui.Delta.Executor.Executor.Overlay.Reserved.SettingSwitch.Switch.UICorner
DELTA["da"] = Instance.new("UICorner", DELTA["d9"]);
DELTA["da"]["CornerRadius"] = UDim.new(10, 0);

-- StarterGui.Delta.Executor.Executor.Overlay.Reserved.SettingSwitch.Switch.ImageButton
DELTA["db"] = Instance.new("ImageLabel", DELTA["d9"]);
DELTA["db"]["BackgroundColor3"] = Color3.fromRGB(136, 140, 151);
DELTA["db"]["Selectable"] = true;
DELTA["db"]["AnchorPoint"] = Vector2.new(0, 0.5);
DELTA["db"]["Image"] = [[rbxassetid://0]];
DELTA["db"]["Size"] = UDim2.new(0.34452590346336365, 0, 0.6585104465484619, 0);
DELTA["db"]["Active"] = true;
DELTA["db"]["Name"] = [[ImageButton]];
DELTA["db"]["Position"] = UDim2.new(0.11156979203224182, 0, 0.5, 0);

-- StarterGui.Delta.Executor.Executor.Overlay.Reserved.SettingSwitch.Switch.ImageButton.UICorner
DELTA["dc"] = Instance.new("UICorner", DELTA["db"]);
DELTA["dc"]["CornerRadius"] = UDim.new(10, 0);

-- StarterGui.Delta.Executor.Executor.Overlay.Reserved.SettingSwitch.Switch.ImageButton.UIAspectRatioConstraint
DELTA["dd"] = Instance.new("UIAspectRatioConstraint", DELTA["db"]);


-- StarterGui.Delta.Executor.Executor.Overlay.Reserved.SettingSwitch.Enabled
DELTA["de"] = Instance.new("BoolValue", DELTA["d4"]);
DELTA["de"]["Name"] = [[Enabled]];

-- StarterGui.Delta.Executor.Executor.Overlay.Reserved.SettingDropdown
DELTA["df"] = Instance.new("Frame", DELTA["bf"]);
DELTA["df"]["BackgroundColor3"] = Color3.fromRGB(38, 41, 50);
DELTA["df"]["LayoutOrder"] = 3;
DELTA["df"]["Size"] = UDim2.new(1, 0, 0.03193089738488197, 0);
DELTA["df"]["Position"] = UDim2.new(0, 0, 0.11974083632230759, 0);
DELTA["df"]["Visible"] = false;
DELTA["df"]["Name"] = [[SettingDropdown]];

-- StarterGui.Delta.Executor.Executor.Overlay.Reserved.SettingDropdown.UICorner
DELTA["e0"] = Instance.new("UICorner", DELTA["df"]);
DELTA["e0"]["CornerRadius"] = UDim.new(0.20000000298023224, 0);

-- StarterGui.Delta.Executor.Executor.Overlay.Reserved.SettingDropdown.Title
DELTA["e1"] = Instance.new("TextLabel", DELTA["df"]);
DELTA["e1"]["TextWrapped"] = true;
DELTA["e1"]["TextScaled"] = true;
DELTA["e1"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["e1"]["TextXAlignment"] = Enum.TextXAlignment.Left;
DELTA["e1"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
DELTA["e1"]["TextSize"] = 14;
DELTA["e1"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["e1"]["AnchorPoint"] = Vector2.new(0, 0.5);
DELTA["e1"]["Size"] = UDim2.new(0.18567337095737457, 0, 0.31746408343315125, 0);
DELTA["e1"]["Text"] = [[Themes]];
DELTA["e1"]["Name"] = [[Title]];
DELTA["e1"]["BackgroundTransparency"] = 1;
DELTA["e1"]["Position"] = UDim2.new(0, 0, 0.5, 0);

-- StarterGui.Delta.Executor.Executor.Overlay.Reserved.SettingDropdown.UIPadding
DELTA["e2"] = Instance.new("UIPadding", DELTA["df"]);
DELTA["e2"]["PaddingRight"] = UDim.new(0.029999999329447746, 0);
DELTA["e2"]["PaddingLeft"] = UDim.new(0.029999999329447746, 0);

-- StarterGui.Delta.Executor.Executor.Overlay.Reserved.SettingDropdown.Button
DELTA["e3"] = Instance.new("ImageButton", DELTA["df"]);
DELTA["e3"]["BackgroundColor3"] = Color3.fromRGB(38, 41, 50);
DELTA["e3"]["AnchorPoint"] = Vector2.new(1, 0.5);
DELTA["e3"]["Image"] = [[rbxassetid://0]];
DELTA["e3"]["Size"] = UDim2.new(0.12388666719198227, 0, 0.473985493183136, 0);
DELTA["e3"]["Name"] = [[Button]];
DELTA["e3"]["Position"] = UDim2.new(0.9995027780532837, 0, 0.5000000596046448, 0);

-- StarterGui.Delta.Executor.Executor.Overlay.Reserved.SettingDropdown.Button.UICorner
DELTA["e4"] = Instance.new("UICorner", DELTA["e3"]);
DELTA["e4"]["CornerRadius"] = UDim.new(0.30000001192092896, 0);

-- StarterGui.Delta.Executor.Executor.Overlay.Reserved.SettingDropdown.Button.Title
DELTA["e5"] = Instance.new("TextLabel", DELTA["e3"]);
DELTA["e5"]["TextWrapped"] = true;
DELTA["e5"]["ZIndex"] = 999999999;
DELTA["e5"]["TextScaled"] = true;
DELTA["e5"]["BackgroundColor3"] = Color3.fromRGB(38, 41, 50);
DELTA["e5"]["TextXAlignment"] = Enum.TextXAlignment.Left;
DELTA["e5"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
DELTA["e5"]["TextSize"] = 14;
DELTA["e5"]["TextColor3"] = Color3.fromRGB(138, 146, 167);
DELTA["e5"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
DELTA["e5"]["Size"] = UDim2.new(0.5571646094322205, 0, 0.44124072790145874, 0);
DELTA["e5"]["Text"] = [[DEFAULT]];
DELTA["e5"]["Name"] = [[Title]];
DELTA["e5"]["BackgroundTransparency"] = 1;
DELTA["e5"]["Position"] = UDim2.new(0.5609880685806274, 0, 0.5000001192092896, 0);

-- StarterGui.Delta.Executor.Executor.Overlay.Reserved.SettingDropdown.Button.Button
DELTA["e6"] = Instance.new("ImageButton", DELTA["e3"]);
DELTA["e6"]["BackgroundColor3"] = Color3.fromRGB(59, 139, 254);
DELTA["e6"]["AnchorPoint"] = Vector2.new(1, 0.5);
DELTA["e6"]["Image"] = [[rbxassetid://13441628967]];
DELTA["e6"]["Size"] = UDim2.new(0.07741968333721161, 0, 0.473985493183136, 0);
DELTA["e6"]["Name"] = [[Button]];
DELTA["e6"]["Position"] = UDim2.new(1, 0, 0.5, 0);
DELTA["e6"]["BackgroundTransparency"] = 1;

-- StarterGui.Delta.Executor.Executor.Overlay.Reserved.SettingDropdown.Dropdown
DELTA["e7"] = Instance.new("Frame", DELTA["df"]);
DELTA["e7"]["BackgroundColor3"] = Color3.fromRGB(41, 44, 52);
DELTA["e7"]["Size"] = UDim2.new(0.2331225425004959, 0, 1.7701293230056763, 0);
DELTA["e7"]["Position"] = UDim2.new(0.7665446996688843, 0, 1.0931282043457031, 0);
DELTA["e7"]["Visible"] = false;
DELTA["e7"]["ZIndex"] = 9999999999999;
DELTA["e7"]["Name"] = [[Dropdown]];

-- StarterGui.Delta.Executor.Executor.Overlay.Reserved.SettingDropdown.Dropdown.UIListLayout
DELTA["e8"] = Instance.new("UIListLayout", DELTA["e7"]);
DELTA["e8"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
DELTA["e8"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
DELTA["e8"]["Padding"] = UDim.new(0.029999999329447746, 0);
DELTA["e8"]["SortOrder"] = Enum.SortOrder.LayoutOrder;

-- StarterGui.Delta.Executor.Executor.Overlay.Reserved.SettingDropdown.Dropdown.Option2
DELTA["e9"] = Instance.new("ImageButton", DELTA["e7"]);
DELTA["e9"]["BackgroundColor3"] = Color3.fromRGB(59, 139, 254);
DELTA["e9"]["LayoutOrder"] = 1;
DELTA["e9"]["AnchorPoint"] = Vector2.new(1, 0.5);
DELTA["e9"]["Image"] = [[rbxassetid://0]];
DELTA["e9"]["Size"] = UDim2.new(0.8604854345321655, 0, 0.22047372162342072, 0);
DELTA["e9"]["Name"] = [[Option2]];
DELTA["e9"]["Position"] = UDim2.new(0.9302427172660828, 0, 0.5364913940429688, 0);
DELTA["e9"]["BackgroundTransparency"] = 1;

-- StarterGui.Delta.Executor.Executor.Overlay.Reserved.SettingDropdown.Dropdown.Option2.UICorner
DELTA["ea"] = Instance.new("UICorner", DELTA["e9"]);
DELTA["ea"]["CornerRadius"] = UDim.new(0.30000001192092896, 0);

-- StarterGui.Delta.Executor.Executor.Overlay.Reserved.SettingDropdown.Dropdown.Option2.Title
DELTA["eb"] = Instance.new("TextLabel", DELTA["e9"]);
DELTA["eb"]["TextWrapped"] = true;
DELTA["eb"]["ZIndex"] = 999999999;
DELTA["eb"]["TextScaled"] = true;
DELTA["eb"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["eb"]["TextXAlignment"] = Enum.TextXAlignment.Left;
DELTA["eb"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
DELTA["eb"]["TextSize"] = 14;
DELTA["eb"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["eb"]["AnchorPoint"] = Vector2.new(0, 0.5);
DELTA["eb"]["Size"] = UDim2.new(0.7953082323074341, 0, 0.8179191946983337, 0);
DELTA["eb"]["Text"] = [[Light]];
DELTA["eb"]["Name"] = [[Title]];
DELTA["eb"]["BackgroundTransparency"] = 1;
DELTA["eb"]["Position"] = UDim2.new(0, 0, 0.5, 0);

-- StarterGui.Delta.Executor.Executor.Overlay.Reserved.SettingDropdown.Dropdown.Option2.Checked
DELTA["ec"] = Instance.new("ImageButton", DELTA["e9"]);
DELTA["ec"]["BackgroundColor3"] = Color3.fromRGB(59, 139, 254);
DELTA["ec"]["AnchorPoint"] = Vector2.new(1, 0.5);
DELTA["ec"]["Image"] = [[rbxassetid://13441695981]];
DELTA["ec"]["Size"] = UDim2.new(0.0812797099351883, 0, 0.5769613981246948, 0);
DELTA["ec"]["Name"] = [[Checked]];
DELTA["ec"]["Visible"] = false;
DELTA["ec"]["Position"] = UDim2.new(1, 0, 0.5, 0);
DELTA["ec"]["BackgroundTransparency"] = 1;

-- StarterGui.Delta.Executor.Executor.Overlay.Reserved.SettingDropdown.Dropdown.Option2.Checked.UIAspectRatioConstraint
DELTA["ed"] = Instance.new("UIAspectRatioConstraint", DELTA["ec"]);


-- StarterGui.Delta.Executor.Executor.Overlay.Reserved.SettingDropdown.Dropdown.Divider
DELTA["ee"] = Instance.new("Frame", DELTA["e7"]);
DELTA["ee"]["BackgroundColor3"] = Color3.fromRGB(59, 63, 74);
DELTA["ee"]["LayoutOrder"] = 1;
DELTA["ee"]["Size"] = UDim2.new(0.8604854345321655, 0, 0.012410691007971764, 0);
DELTA["ee"]["Position"] = UDim2.new(0.06975728273391724, 0, 0.6603825688362122, 0);
DELTA["ee"]["Name"] = [[Divider]];

-- StarterGui.Delta.Executor.Executor.Overlay.Reserved.SettingDropdown.Dropdown.UICorner
DELTA["ef"] = Instance.new("UICorner", DELTA["e7"]);
DELTA["ef"]["CornerRadius"] = UDim.new(0.20000000298023224, 0);

-- StarterGui.Delta.Executor.Executor.Overlay.Reserved.SettingDropdown.Dropdown.Option1
DELTA["f0"] = Instance.new("ImageButton", DELTA["e7"]);
DELTA["f0"]["BackgroundColor3"] = Color3.fromRGB(59, 139, 254);
DELTA["f0"]["LayoutOrder"] = -1;
DELTA["f0"]["AnchorPoint"] = Vector2.new(1, 0.5);
DELTA["f0"]["Image"] = [[rbxassetid://0]];
DELTA["f0"]["Size"] = UDim2.new(0.8604854345321655, 0, 0.22047363221645355, 0);
DELTA["f0"]["Name"] = [[Option1]];
DELTA["f0"]["Position"] = UDim2.new(0.9302427172660828, 0, 0.276297390460968, 0);
DELTA["f0"]["BackgroundTransparency"] = 1;

-- StarterGui.Delta.Executor.Executor.Overlay.Reserved.SettingDropdown.Dropdown.Option1.UICorner
DELTA["f1"] = Instance.new("UICorner", DELTA["f0"]);
DELTA["f1"]["CornerRadius"] = UDim.new(0.30000001192092896, 0);

-- StarterGui.Delta.Executor.Executor.Overlay.Reserved.SettingDropdown.Dropdown.Option1.Title
DELTA["f2"] = Instance.new("TextLabel", DELTA["f0"]);
DELTA["f2"]["TextWrapped"] = true;
DELTA["f2"]["ZIndex"] = 999999999;
DELTA["f2"]["TextScaled"] = true;
DELTA["f2"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["f2"]["TextXAlignment"] = Enum.TextXAlignment.Left;
DELTA["f2"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
DELTA["f2"]["TextSize"] = 14;
DELTA["f2"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["f2"]["AnchorPoint"] = Vector2.new(0, 0.5);
DELTA["f2"]["Size"] = UDim2.new(0.7953082323074341, 0, 0.8179191946983337, 0);
DELTA["f2"]["Text"] = [[Default]];
DELTA["f2"]["Name"] = [[Title]];
DELTA["f2"]["BackgroundTransparency"] = 1;
DELTA["f2"]["Position"] = UDim2.new(0, 0, 0.5, 0);

-- StarterGui.Delta.Executor.Executor.Overlay.Reserved.SettingDropdown.Dropdown.Option1.Checked
DELTA["f3"] = Instance.new("ImageButton", DELTA["f0"]);
DELTA["f3"]["BackgroundColor3"] = Color3.fromRGB(59, 139, 254);
DELTA["f3"]["AnchorPoint"] = Vector2.new(1, 0.5);
DELTA["f3"]["Image"] = [[rbxassetid://13441695981]];
DELTA["f3"]["Size"] = UDim2.new(0.0812797099351883, 0, 0.5769613981246948, 0);
DELTA["f3"]["Name"] = [[Checked]];
DELTA["f3"]["Position"] = UDim2.new(1, 0, 0.5, 0);
DELTA["f3"]["BackgroundTransparency"] = 1;

-- StarterGui.Delta.Executor.Executor.Overlay.Reserved.SettingDropdown.Dropdown.Option1.Checked.UIAspectRatioConstraint
DELTA["f4"] = Instance.new("UIAspectRatioConstraint", DELTA["f3"]);


-- StarterGui.Delta.Executor.Executor.Overlay.Reserved.SettingDropdown.Dropdown.Divider
DELTA["f5"] = Instance.new("Frame", DELTA["e7"]);
DELTA["f5"]["BackgroundColor3"] = Color3.fromRGB(59, 63, 74);
DELTA["f5"]["Size"] = UDim2.new(0.8604854345321655, 0, 0.012410691007971764, 0);
DELTA["f5"]["Position"] = UDim2.new(0.06975728273391724, 0, 0.4001886248588562, 0);
DELTA["f5"]["Name"] = [[Divider]];

-- StarterGui.Delta.Executor.Executor.Overlay.Reserved.SettingDropdown.Dropdown.Option3
DELTA["f6"] = Instance.new("ImageButton", DELTA["e7"]);
DELTA["f6"]["BackgroundColor3"] = Color3.fromRGB(59, 139, 254);
DELTA["f6"]["LayoutOrder"] = 3;
DELTA["f6"]["AnchorPoint"] = Vector2.new(1, 0.5);
DELTA["f6"]["Image"] = [[rbxassetid://0]];
DELTA["f6"]["Size"] = UDim2.new(0.8604854345321655, 0, 0.2204737514257431, 0);
DELTA["f6"]["Name"] = [[Option3]];
DELTA["f6"]["Position"] = UDim2.new(0.9302427172660828, 0, 0.7966850399971008, 0);
DELTA["f6"]["BackgroundTransparency"] = 1;

-- StarterGui.Delta.Executor.Executor.Overlay.Reserved.SettingDropdown.Dropdown.Option3.UICorner
DELTA["f7"] = Instance.new("UICorner", DELTA["f6"]);
DELTA["f7"]["CornerRadius"] = UDim.new(0.30000001192092896, 0);

-- StarterGui.Delta.Executor.Executor.Overlay.Reserved.SettingDropdown.Dropdown.Option3.Title
DELTA["f8"] = Instance.new("TextLabel", DELTA["f6"]);
DELTA["f8"]["TextWrapped"] = true;
DELTA["f8"]["ZIndex"] = 999999999;
DELTA["f8"]["TextScaled"] = true;
DELTA["f8"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["f8"]["TextXAlignment"] = Enum.TextXAlignment.Left;
DELTA["f8"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
DELTA["f8"]["TextSize"] = 14;
DELTA["f8"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["f8"]["AnchorPoint"] = Vector2.new(0, 0.5);
DELTA["f8"]["Size"] = UDim2.new(0.7953082323074341, 0, 0.8179191946983337, 0);
DELTA["f8"]["Text"] = [[Amoled]];
DELTA["f8"]["Name"] = [[Title]];
DELTA["f8"]["BackgroundTransparency"] = 1;
DELTA["f8"]["Position"] = UDim2.new(0, 0, 0.5, 0);

-- StarterGui.Delta.Executor.Executor.Overlay.Reserved.SettingDropdown.Dropdown.Option3.Checked
DELTA["f9"] = Instance.new("ImageButton", DELTA["f6"]);
DELTA["f9"]["BackgroundColor3"] = Color3.fromRGB(59, 139, 254);
DELTA["f9"]["AnchorPoint"] = Vector2.new(1, 0.5);
DELTA["f9"]["Image"] = [[rbxassetid://13441695981]];
DELTA["f9"]["Size"] = UDim2.new(0.0812797099351883, 0, 0.5769613981246948, 0);
DELTA["f9"]["Name"] = [[Checked]];
DELTA["f9"]["Visible"] = false;
DELTA["f9"]["Position"] = UDim2.new(1, 0, 0.5, 0);
DELTA["f9"]["BackgroundTransparency"] = 1;

-- StarterGui.Delta.Executor.Executor.Overlay.Reserved.SettingDropdown.Dropdown.Option3.Checked.UIAspectRatioConstraint
DELTA["fa"] = Instance.new("UIAspectRatioConstraint", DELTA["f9"]);


-- StarterGui.Delta.Executor.Executor.Overlay.Reserved.SettingDropdown.Desc
DELTA["fb"] = Instance.new("TextLabel", DELTA["df"]);
DELTA["fb"]["TextWrapped"] = true;
DELTA["fb"]["TextScaled"] = true;
DELTA["fb"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["fb"]["TextXAlignment"] = Enum.TextXAlignment.Left;
DELTA["fb"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
DELTA["fb"]["TextSize"] = 14;
DELTA["fb"]["TextColor3"] = Color3.fromRGB(103, 109, 126);
DELTA["fb"]["AnchorPoint"] = Vector2.new(0, 0.5);
DELTA["fb"]["Size"] = UDim2.new(0.6590386629104614, 0, 0.23099972307682037, 0);
DELTA["fb"]["Text"] = [[select your desireable Delta theme below]];
DELTA["fb"]["Name"] = [[Desc]];
DELTA["fb"]["BackgroundTransparency"] = 1;
DELTA["fb"]["Position"] = UDim2.new(0.18517163395881653, 0, 0.5, 0);

-- StarterGui.Delta.Executor.Executor.Overlay.Reserved.SettingTextbox
DELTA["fc"] = Instance.new("Frame", DELTA["bf"]);
DELTA["fc"]["BackgroundColor3"] = Color3.fromRGB(38, 41, 50);
DELTA["fc"]["LayoutOrder"] = 2;
DELTA["fc"]["Size"] = UDim2.new(1, 0, 0.03193088620901108, 0);
DELTA["fc"]["Position"] = UDim2.new(0, 0, 0.079827219247818, 0);
DELTA["fc"]["Visible"] = false;
DELTA["fc"]["Name"] = [[SettingTextbox]];

-- StarterGui.Delta.Executor.Executor.Overlay.Reserved.SettingTextbox.UICorner
DELTA["fd"] = Instance.new("UICorner", DELTA["fc"]);
DELTA["fd"]["CornerRadius"] = UDim.new(0.20000000298023224, 0);

-- StarterGui.Delta.Executor.Executor.Overlay.Reserved.SettingTextbox.Title
DELTA["fe"] = Instance.new("TextLabel", DELTA["fc"]);
DELTA["fe"]["TextWrapped"] = true;
DELTA["fe"]["TextScaled"] = true;
DELTA["fe"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["fe"]["TextXAlignment"] = Enum.TextXAlignment.Left;
DELTA["fe"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
DELTA["fe"]["TextSize"] = 14;
DELTA["fe"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["fe"]["AnchorPoint"] = Vector2.new(0, 0.5);
DELTA["fe"]["Size"] = UDim2.new(0.18567337095737457, 0, 0.31746408343315125, 0);
DELTA["fe"]["Text"] = [[Kill ROBLOX]];
DELTA["fe"]["Name"] = [[Title]];
DELTA["fe"]["BackgroundTransparency"] = 1;
DELTA["fe"]["Position"] = UDim2.new(0, 0, 0.5, 0);

-- StarterGui.Delta.Executor.Executor.Overlay.Reserved.SettingTextbox.UIPadding
DELTA["ff"] = Instance.new("UIPadding", DELTA["fc"]);
DELTA["ff"]["PaddingRight"] = UDim.new(0.029999999329447746, 0);
DELTA["ff"]["PaddingLeft"] = UDim.new(0.029999999329447746, 0);

-- StarterGui.Delta.Executor.Executor.Overlay.Reserved.SettingTextbox.Desc
DELTA["100"] = Instance.new("TextLabel", DELTA["fc"]);
DELTA["100"]["TextWrapped"] = true;
DELTA["100"]["TextScaled"] = true;
DELTA["100"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["100"]["TextXAlignment"] = Enum.TextXAlignment.Left;
DELTA["100"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
DELTA["100"]["TextSize"] = 14;
DELTA["100"]["TextColor3"] = Color3.fromRGB(103, 109, 126);
DELTA["100"]["AnchorPoint"] = Vector2.new(0, 0.5);
DELTA["100"]["Size"] = UDim2.new(0.6590386629104614, 0, 0.23099972307682037, 0);
DELTA["100"]["Text"] = [[self explanitory function right here]];
DELTA["100"]["Name"] = [[Desc]];
DELTA["100"]["BackgroundTransparency"] = 1;
DELTA["100"]["Position"] = UDim2.new(0.18517163395881653, 0, 0.5, 0);

-- StarterGui.Delta.Executor.Executor.Overlay.Reserved.SettingTextbox.InputText
DELTA["101"] = Instance.new("TextBox", DELTA["fc"]);
DELTA["101"]["Active"] = true;
DELTA["101"]["BorderSizePixel"] = 0;
DELTA["101"]["TextSize"] = 17;
DELTA["101"]["TextWrapped"] = true;
DELTA["101"]["TextScaled"] = true;
DELTA["101"]["BackgroundColor3"] = Color3.fromRGB(31, 37, 47);
DELTA["101"]["TextColor3"] = Color3.fromRGB(162, 191, 212);
DELTA["101"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
DELTA["101"]["AnchorPoint"] = Vector2.new(0, 1);
DELTA["101"]["PlaceholderText"] = [[Input]];
DELTA["101"]["Size"] = UDim2.new(0.19835805892944336, 0, 0.4205845594406128, 0);
DELTA["101"]["Selectable"] = false;
DELTA["101"]["Text"] = [[]];
DELTA["101"]["Position"] = UDim2.new(0.7891961932182312, 0, 0.7077450752258301, 0);
DELTA["101"]["Name"] = [[InputText]];

-- StarterGui.Delta.Executor.Executor.Overlay.Reserved.SettingTextbox.InputText.UICorner
DELTA["102"] = Instance.new("UICorner", DELTA["101"]);
DELTA["102"]["CornerRadius"] = UDim.new(0.20000000298023224, 0);

-- StarterGui.Delta.Executor.Executor.Overlay.Reserved.SettingTextbox.InputText.UIStroke
DELTA["103"] = Instance.new("UIStroke", DELTA["101"]);
DELTA["103"]["Color"] = Color3.fromRGB(59, 71, 90);
DELTA["103"]["Thickness"] = 2;
DELTA["103"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

-- StarterGui.Delta.Executor.Executor.Overlay.Reserved.TabX
DELTA["104"] = Instance.new("ImageButton", DELTA["bf"]);
DELTA["104"]["Active"] = false;
DELTA["104"]["ZIndex"] = 300;
DELTA["104"]["BackgroundColor3"] = Color3.fromRGB(34, 41, 50);
DELTA["104"]["Selectable"] = false;
DELTA["104"]["LayoutOrder"] = 1;
DELTA["104"]["Size"] = UDim2.new(0.23816877603530884, 0, 0.8693817853927612, 0);
DELTA["104"]["Name"] = [[TabX]];
DELTA["104"]["Visible"] = false;
DELTA["104"]["Position"] = UDim2.new(0.016260094940662384, 0, 0.20600000023841858, 0);
DELTA["104"]["BackgroundTransparency"] = 1;

-- StarterGui.Delta.Executor.Executor.Overlay.Reserved.TabX.UICorner
DELTA["105"] = Instance.new("UICorner", DELTA["104"]);
DELTA["105"]["CornerRadius"] = UDim.new(0.30000001192092896, 0);

-- StarterGui.Delta.Executor.Executor.Overlay.Reserved.TabX.Title
DELTA["106"] = Instance.new("TextLabel", DELTA["104"]);
DELTA["106"]["TextWrapped"] = true;
DELTA["106"]["TextScaled"] = true;
DELTA["106"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["106"]["TextXAlignment"] = Enum.TextXAlignment.Left;
DELTA["106"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
DELTA["106"]["TextTransparency"] = 0.30000001192092896;
DELTA["106"]["TextSize"] = 14;
DELTA["106"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["106"]["AnchorPoint"] = Vector2.new(0, 0.5);
DELTA["106"]["Size"] = UDim2.new(0.6458646059036255, 0, 0.4000000059604645, 0);
DELTA["106"]["Text"] = [[script.lua]];
DELTA["106"]["Name"] = [[Title]];
DELTA["106"]["BackgroundTransparency"] = 1;
DELTA["106"]["Position"] = UDim2.new(0.11627907305955887, 0, 0.5, 0);

-- StarterGui.Delta.Executor.Executor.Overlay.Reserved.TabX.ImageButton
DELTA["107"] = Instance.new("ImageButton", DELTA["104"]);
DELTA["107"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["107"]["AnchorPoint"] = Vector2.new(1, 0.5);
DELTA["107"]["Image"] = [[rbxassetid://13387627918]];
DELTA["107"]["Size"] = UDim2.new(0.06472493708133698, 0, 0.19327585399150848, 0);
DELTA["107"]["Position"] = UDim2.new(0.9190940260887146, 0, 0.49999985098838806, 0);
DELTA["107"]["BackgroundTransparency"] = 1;

-- StarterGui.Delta.Executor.Executor.Overlay.Reserved.TabX.ImageButton.UIAspectRatioConstraint
DELTA["108"] = Instance.new("UIAspectRatioConstraint", DELTA["107"]);


-- StarterGui.Delta.Executor.Executor.Overlay.Reserved.Script
DELTA["109"] = Instance.new("ImageLabel", DELTA["bf"]);
DELTA["109"]["BackgroundColor3"] = Color3.fromRGB(38, 41, 50);
DELTA["109"]["LayoutOrder"] = 1;
DELTA["109"]["Size"] = UDim2.new(0.997948408126831, 0, 0.0462365560233593, 0);
DELTA["109"]["Position"] = UDim2.new(0, 0, 1.0919346493665216e-07, 0);
DELTA["109"]["Name"] = [[Script]];
DELTA["109"].Active = true;
DELTA["109"].Visible = false

-- StarterGui.Delta.Executor.Executor.Overlay.Reserved.Script.UICorner
DELTA["10a"] = Instance.new("UICorner", DELTA["109"]);
DELTA["10a"]["CornerRadius"] = UDim.new(0.20000000298023224, 0);

-- StarterGui.Delta.Executor.Executor.Overlay.Reserved.Script.Title
DELTA["10b"] = Instance.new("TextLabel", DELTA["109"]);
DELTA["10b"]["TextWrapped"] = true;
DELTA["10b"]["TextScaled"] = true;
DELTA["10b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["10b"]["TextXAlignment"] = Enum.TextXAlignment.Left;
DELTA["10b"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
DELTA["10b"]["TextSize"] = 14;
DELTA["10b"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["10b"]["AnchorPoint"] = Vector2.new(0, 0.5);
DELTA["10b"]["Size"] = UDim2.new(0.15939868986606598, 0, 0.31746405363082886, 0);
DELTA["10b"]["Text"] = [[Enter Your Script...]];
DELTA["10b"]["Name"] = [[Title]];
DELTA["10b"]["BackgroundTransparency"] = 1;
DELTA["10b"]["Position"] = UDim2.new(-0.01293666660785675, 0, 0.5000000596046448, 0);

-- StarterGui.Delta.Executor.Executor.Overlay.Reserved.Script.UIPadding
DELTA["10c"] = Instance.new("UIPadding", DELTA["109"]);
DELTA["10c"]["PaddingRight"] = UDim.new(0.029999999329447746, 0);
DELTA["10c"]["PaddingLeft"] = UDim.new(0.029999999329447746, 0);

-- StarterGui.Delta.Executor.Executor.Overlay.Reserved.Script.Button
DELTA["10d"] = Instance.new("ImageButton", DELTA["109"]);
DELTA["10d"]["BackgroundColor3"] = Color3.fromRGB(59, 64, 79);
DELTA["10d"]["AnchorPoint"] = Vector2.new(1, 0.5);
DELTA["10d"]["Image"] = [[rbxassetid://0]];
DELTA["10d"]["Size"] = UDim2.new(0.09953451156616211, 0, 0.473985493183136, 0);
DELTA["10d"]["Name"] = [[Button]];
DELTA["10d"]["Position"] = UDim2.new(1.0157949924468994, 0, 0.5000000596046448, 0);

-- StarterGui.Delta.Executor.Executor.Overlay.Reserved.Script.Button.UICorner
DELTA["10e"] = Instance.new("UICorner", DELTA["10d"]);
DELTA["10e"]["CornerRadius"] = UDim.new(0.30000001192092896, 0);

-- StarterGui.Delta.Executor.Executor.Overlay.Reserved.Script.Button.Title
DELTA["10f"] = Instance.new("TextLabel", DELTA["10d"]);
DELTA["10f"]["TextWrapped"] = true;
DELTA["10f"]["ZIndex"] = 999999999;
DELTA["10f"]["TextScaled"] = true;
DELTA["10f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["10f"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
DELTA["10f"]["TextSize"] = 14;
DELTA["10f"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["10f"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
DELTA["10f"]["Size"] = UDim2.new(0.7953082323074341, 0, 0.44124072790145874, 0);
DELTA["10f"]["Text"] = [[EXECUTE]];
DELTA["10f"]["Name"] = [[Title]];
DELTA["10f"]["BackgroundTransparency"] = 1;
DELTA["10f"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);




-- StarterGui.Delta.Executor.Executor.Overlay.Reserved.Script.Button1
DELTA["10da"] = Instance.new("ImageButton", DELTA["109"]);
DELTA["10da"]["BackgroundColor3"] = Color3.fromRGB(59, 64, 79);
DELTA["10da"]["AnchorPoint"] = Vector2.new(1, 0.5);
DELTA["10da"]["Image"] = [[rbxassetid://0]];
DELTA["10da"]["Size"] = UDim2.new(0.09953451156616211, 0, 0.473985493183136, 0);
DELTA["10da"]["Name"] = [[Button1]];
DELTA["10da"]["Position"] = UDim2.new(0.9, 0, 0.5000000596046448, 0);

-- StarterGui.Delta.Executor.Executor.Overlay.Reserved.Script.Button1.UICorner
DELTA["10ea"] = Instance.new("UICorner", DELTA["10da"]);
DELTA["10ea"]["CornerRadius"] = UDim.new(0.30000001192092896, 0);

-- StarterGui.Delta.Executor.Executor.Overlay.Reserved.Script.Button1.Title
DELTA["10fa"] = Instance.new("TextLabel", DELTA["10da"]);
DELTA["10fa"]["TextWrapped"] = true;
DELTA["10fa"]["ZIndex"] = 999999999;
DELTA["10fa"]["TextScaled"] = true;
DELTA["10fa"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["10fa"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
DELTA["10fa"]["TextSize"] = 14;
DELTA["10fa"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["10fa"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
DELTA["10fa"]["Size"] = UDim2.new(0.7953082323074341, 0, 0.44124072790145874, 0);
DELTA["10fa"]["Text"] = [[DELETE]];
DELTA["10fa"]["Name"] = [[Title]];
DELTA["10fa"]["BackgroundTransparency"] = 1;
DELTA["10fa"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.Delta.Executor.Executor.Overlay.Reserved.Script.Frame
DELTA["110"] = Instance.new("Frame", DELTA["109"]);
DELTA["110"]["BackgroundColor3"] = Color3.fromRGB(86, 173, 239);
DELTA["110"]["AnchorPoint"] = Vector2.new(0, 0.5);
DELTA["110"]["Size"] = UDim2.new(0.08429200947284698, 0, 0.3846021890640259, 0);
DELTA["110"]["Position"] = UDim2.new(0.14588697254657745, 0, 0.49755123257637024, 0);

-- StarterGui.Delta.Executor.Executor.Overlay.Reserved.Script.Frame.UICorner
DELTA["111"] = Instance.new("UICorner", DELTA["110"]);
DELTA["111"]["CornerRadius"] = UDim.new(1, 0);

-- StarterGui.Delta.Executor.Executor.Overlay.Reserved.Script.Frame.Title
DELTA["112"] = Instance.new("TextLabel", DELTA["110"]);
DELTA["112"]["TextWrapped"] = true;
DELTA["112"]["TextScaled"] = true;
DELTA["112"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["112"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
DELTA["112"]["TextSize"] = 14;
DELTA["112"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["112"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
DELTA["112"]["Size"] = UDim2.new(0.8315319418907166, 0, 0.5, 0);
DELTA["112"]["Text"] = [[UTILITY]];
DELTA["112"]["Name"] = [[Title]];
DELTA["112"]["BackgroundTransparency"] = 1;
DELTA["112"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);

-- StarterGui.Delta.Executor.Executor.Overlay.Code
DELTA["113"] = Instance.new("ScrollingFrame", DELTA["88"]);
DELTA["113"]["ZIndex"] = 200;
DELTA["113"]["BorderSizePixel"] = 0;
DELTA["113"]["CanvasSize"] = UDim2.new(0, 0, 0, 0);
DELTA["113"]["TopImage"] = [[rbxasset://textures/ui/Scroll/scroll-middle.png]];
DELTA["113"]["BackgroundColor3"] = Color3.fromRGB(22, 22, 30);
DELTA["113"]["HorizontalScrollBarInset"] = Enum.ScrollBarInset.Always;
DELTA["113"]["AnchorPoint"] = Vector2.new(0.5, 1);
DELTA["113"]["AutomaticCanvasSize"] = Enum.AutomaticSize.XY;
DELTA["113"]["BackgroundTransparency"] = 1;
DELTA["113"]["Size"] = UDim2.new(0.9764046669006348, 0, 0.6893500685691833, 0);
DELTA["113"]["Selectable"] = false;
DELTA["113"].ElasticBehavior = Enum.ElasticBehavior.Never
DELTA["113"]["ScrollBarThickness"] = 15;
DELTA["113"]["Position"] = UDim2.new(0.5117977261543274, 0, 0.8393499851226807, 0);
DELTA["113"]["Name"] = [[Code]];
DELTA["113"]["BottomImage"] = [[rbxasset://textures/ui/Scroll/scroll-middle.png]];

-- StarterGui.Delta.Executor.Executor.Overlay.Frame
DELTA["114"] = Instance.new("Frame", DELTA["88"]);
DELTA["114"]["ZIndex"] = 201;
DELTA["114"]["BorderSizePixel"] = 0;
DELTA["114"]["BackgroundColor3"] = Color3.fromRGB(34, 41, 50);
DELTA["114"]["Size"] = UDim2.new(1.0011208057403564, 0, 0.006693750154227018, 0);
DELTA["114"]["Position"] = UDim2.new(5.143397530105176e-08, 0, 0.14056874811649323, 0);

-- StarterGui.Delta.Executor.Executor.UICorner
DELTA["115"] = Instance.new("UICorner", DELTA["87"]);
DELTA["115"]["CornerRadius"] = UDim.new(0.05000000074505806, 0);

-- StarterGui.Delta.Executor.Sidemenu
DELTA["116"] = Instance.new("ImageLabel", DELTA["86"]);
DELTA["116"]["BorderSizePixel"] = 0;
DELTA["116"]["ScaleType"] = Enum.ScaleType.Crop;
DELTA["116"]["BackgroundColor3"] = Color3.fromRGB(36, 0, 0);
DELTA["116"]["AnchorPoint"] = Vector2.new(0, 0.5);
DELTA["116"]["Image"] = [[rbxassetid://0]];
DELTA["116"]["Size"] = UDim2.new(0.3273969292640686, 0, 0.9993020296096802, 0);
DELTA["116"]["ClipsDescendants"] = true;
DELTA["116"]["Name"] = [[Sidemenu]];
DELTA["116"]["BackgroundTransparency"] = 1;
DELTA["116"]["Position"] = UDim2.new(-0.004258748609572649, 0, 0.5005565881729126, 0);

-- StarterGui.Delta.Executor.Sidemenu.Script
DELTA["117"] = Instance.new("ImageLabel", DELTA["116"]);
DELTA["117"]["BackgroundColor3"] = Color3.fromRGB(26, 27, 36);
DELTA["117"]["Image"] = [[rbxassetid://0]];
DELTA["117"]["Size"] = UDim2.new(1.0000001192092896, 0, 0.4340279698371887, 0);
DELTA["117"]["ClipsDescendants"] = true;
DELTA["117"]["Name"] = [[Script]];
DELTA["117"]["Position"] = UDim2.new(-1.131473865711996e-07, 0, 0.09011479467153549, 0);

-- StarterGui.Delta.Executor.Sidemenu.Script.UICorner
DELTA["118"] = Instance.new("UICorner", DELTA["117"]);
DELTA["118"]["CornerRadius"] = UDim.new(0.05000000074505806, 0);

-- StarterGui.Delta.Executor.Sidemenu.Script.Overlay
DELTA["119"] = Instance.new("Frame", DELTA["117"]);
DELTA["119"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["119"]["BackgroundTransparency"] = 1;
DELTA["119"]["Size"] = UDim2.new(1, 0, 1, 0);
DELTA["119"]["Name"] = [[Overlay]];

-- StarterGui.Delta.Executor.Sidemenu.Script.Overlay.Holder
DELTA["11a"] = Instance.new("Frame", DELTA["119"]);
DELTA["11a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["11a"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
DELTA["11a"]["BackgroundTransparency"] = 1;
DELTA["11a"]["Size"] = UDim2.new(0.8012143969535828, 0, 0.7959624528884888, 0);
DELTA["11a"]["Position"] = UDim2.new(0.5, 0, 0.49274569749832153, 0);
DELTA["11a"]["Name"] = [[Holder]];

-- StarterGui.Delta.Executor.Sidemenu.Script.Overlay.Holder.Title
DELTA["11b"] = Instance.new("Frame", DELTA["11a"]);
DELTA["11b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["11b"]["BackgroundTransparency"] = 1;
DELTA["11b"]["Size"] = UDim2.new(1.0907094478607178, 0, 0.3451063930988312, 0);
DELTA["11b"]["Position"] = UDim2.new(-0.045354731380939484, 0, 0.041554853320121765, 0);
DELTA["11b"]["Name"] = [[Title]];

-- StarterGui.Delta.Executor.Sidemenu.Script.Overlay.Holder.Title.Title
DELTA["11c"] = Instance.new("TextLabel", DELTA["11b"]);
DELTA["11c"]["TextWrapped"] = true;
DELTA["11c"]["TextScaled"] = true;
DELTA["11c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["11c"]["TextXAlignment"] = Enum.TextXAlignment.Left;
DELTA["11c"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
DELTA["11c"]["TextSize"] = 14;
DELTA["11c"]["TextColor3"] = Color3.fromRGB(190, 206, 232);
DELTA["11c"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
DELTA["11c"]["Size"] = UDim2.new(0.9879999756813049, 0, 0.4830000102519989, 0);
DELTA["11c"]["Text"] = [[Check out this script!]];
DELTA["11c"]["Name"] = [[Title]];
DELTA["11c"]["BackgroundTransparency"] = 1;
DELTA["11c"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);

-- StarterGui.Delta.Executor.Sidemenu.Script.Overlay.Holder.Showcase
DELTA["11d"] = Instance.new("TextButton", DELTA["11a"]);
DELTA["11d"]["BackgroundColor3"] = Color3.fromRGB(32, 35, 46);
DELTA["11d"]["Selectable"] = false;
DELTA["11d"]["Size"] = UDim2.new(1.0907094478607178, 0, 0.48145753145217896, 0);
DELTA["11d"]["Name"] = [[Showcase]];
DELTA["11d"]["Text"] = [[]];
DELTA["11d"]["Position"] = UDim2.new(-0.0453546978533268, 0, 0.41410815715789795, 0);
DELTA["11d"]["BackgroundTransparency"] = 0.4000000059604645;

-- StarterGui.Delta.Executor.Sidemenu.Script.Overlay.Holder.Showcase.UICorner
DELTA["11e"] = Instance.new("UICorner", DELTA["11d"]);
DELTA["11e"]["CornerRadius"] = UDim.new(0.05000000074505806, 0);

-- StarterGui.Delta.Executor.Sidemenu.Script.Overlay.Holder.Showcase.UIListLayout
DELTA["11f"] = Instance.new("UIListLayout", DELTA["11d"]);
DELTA["11f"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
DELTA["11f"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
DELTA["11f"]["SortOrder"] = Enum.SortOrder.LayoutOrder;

-- StarterGui.Delta.Executor.Sidemenu.Script.Overlay.Holder.Showcase.Title
DELTA["120"] = Instance.new("TextLabel", DELTA["11d"]);
DELTA["120"]["TextWrapped"] = true;
DELTA["120"]["TextScaled"] = true;
DELTA["120"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["120"]["TextXAlignment"] = Enum.TextXAlignment.Left;
DELTA["120"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
DELTA["120"]["TextSize"] = 14;
DELTA["120"]["TextColor3"] = Color3.fromRGB(190, 206, 232);
DELTA["120"]["AnchorPoint"] = Vector2.new(0.5, 0);
DELTA["120"]["Size"] = UDim2.new(0.9109266400337219, 0, 0.2100510597229004, 0);
DELTA["120"]["Active"] = true;
DELTA["120"]["Text"] = [[INFINITE YIELD]];
DELTA["120"]["Name"] = [[Title]];
DELTA["120"]["Active"] = false;
DELTA["120"]["BackgroundTransparency"] = 1;
DELTA["120"]["Position"] = UDim2.new(0.5, 0, 0.24653124809265137, 0);

-- StarterGui.Delta.Executor.Sidemenu.Script.Overlay.Holder.Showcase.Description
DELTA["121"] = Instance.new("TextLabel", DELTA["11d"]);
DELTA["121"]["TextWrapped"] = true;
DELTA["121"]["TextScaled"] = true;
DELTA["121"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["121"]["TextXAlignment"] = Enum.TextXAlignment.Left;
DELTA["121"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
DELTA["121"]["TextSize"] = 14;
DELTA["121"]["TextColor3"] = Color3.fromRGB(157, 162, 199);
DELTA["121"]["AnchorPoint"] = Vector2.new(0.5, 1);
DELTA["121"]["Size"] = UDim2.new(0.9109266400337219, 0, 0.46432507038116455, 0);
DELTA["121"]["Active"] = true;
DELTA["121"]["Text"] = [[an admin script dedicated to provide the necessities of exploiting]];
DELTA["121"]["Active"] = false;
DELTA["121"]["Name"] = [[Description]];
DELTA["121"]["BackgroundTransparency"] = 1;
DELTA["121"]["Position"] = UDim2.new(0.5, 0, 0.9209074378013611, 0);

-- StarterGui.Delta.Executor.Sidemenu.Script.ScriptSuggestionHandler
DELTA["122"] = Instance.new("LocalScript", DELTA["117"]);
DELTA["122"]["Name"] = [[ScriptSuggestionHandler]];

-- StarterGui.Delta.Executor.Sidemenu.Network
DELTA["123"] = Instance.new("ImageLabel", DELTA["116"]);
DELTA["123"]["ZIndex"] = 99999;
DELTA["123"]["BackgroundColor3"] = Color3.fromRGB(26, 27, 36);
DELTA["123"]["Image"] = [[rbxassetid://0]];
DELTA["123"]["Size"] = UDim2.new(1.0000001192092896, 0, 0.3936704099178314, 0);
DELTA["123"]["ClipsDescendants"] = true;
DELTA["123"]["Name"] = [[Network]];
DELTA["123"]["Position"] = UDim2.new(-1.3669654208570137e-07, 0, 0.6052098870277405, 0);

-- StarterGui.Delta.Executor.Sidemenu.Network.UICorner
DELTA["124"] = Instance.new("UICorner", DELTA["123"]);
DELTA["124"]["CornerRadius"] = UDim.new(0.05000000074505806, 0);

-- StarterGui.Delta.Executor.Sidemenu.Network.Overlay
DELTA["125"] = Instance.new("Frame", DELTA["123"]);
DELTA["125"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["125"]["BackgroundTransparency"] = 1;
DELTA["125"]["Size"] = UDim2.new(1, 0, 1, 0);
DELTA["125"]["Name"] = [[Overlay]];

-- StarterGui.Delta.Executor.Sidemenu.Network.Overlay.Holder
DELTA["126"] = Instance.new("Frame", DELTA["125"]);
DELTA["126"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["126"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
DELTA["126"]["BackgroundTransparency"] = 1;
DELTA["126"]["Size"] = UDim2.new(0.8999999761581421, 0, 0.8310460448265076, 0);
DELTA["126"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
DELTA["126"]["Name"] = [[Holder]];

-- StarterGui.Delta.Executor.Sidemenu.Network.Overlay.Holder.UIListLayout
DELTA["127"] = Instance.new("UIListLayout", DELTA["126"]);
DELTA["127"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
DELTA["127"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
DELTA["127"]["Padding"] = UDim.new(0.15000000596046448, 0);
DELTA["127"]["SortOrder"] = Enum.SortOrder.LayoutOrder;

-- StarterGui.Delta.Executor.Sidemenu.Network.Overlay.Holder.Frame
DELTA["128"] = Instance.new("Frame", DELTA["126"]);
DELTA["128"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["128"]["BackgroundTransparency"] = 1;
DELTA["128"]["Size"] = UDim2.new(1, 0, 0.40413346886634827, 0);
DELTA["128"]["Position"] = UDim2.new(0, 0, 0.027302570641040802, 0);

-- StarterGui.Delta.Executor.Sidemenu.Network.Overlay.Holder.Frame.Description
DELTA["129"] = Instance.new("TextLabel", DELTA["128"]);
DELTA["129"]["TextWrapped"] = true;
DELTA["129"]["TextScaled"] = true;
DELTA["129"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["129"]["TextXAlignment"] = Enum.TextXAlignment.Left;
DELTA["129"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
DELTA["129"]["TextSize"] = 14;
DELTA["129"]["TextColor3"] = Color3.fromRGB(157, 162, 199);
DELTA["129"]["AnchorPoint"] = Vector2.new(0.5, 1);
DELTA["129"]["Size"] = UDim2.new(0.9877889156341553, 0, 0.33333709836006165, 0);
DELTA["129"]["Text"] = [[Arceus&Codex also has iOS & PC]];
DELTA["129"]["Name"] = [[Description]];
DELTA["129"]["BackgroundTransparency"] = 1;
DELTA["129"]["Position"] = UDim2.new(0.5, 0, 0.9999999403953552, 0);

-- StarterGui.Delta.Executor.Sidemenu.Network.Overlay.Holder.Frame.Title
DELTA["12a"] = Instance.new("TextLabel", DELTA["128"]);
DELTA["12a"]["TextWrapped"] = true;
DELTA["12a"]["TextScaled"] = true;
DELTA["12a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["12a"]["TextXAlignment"] = Enum.TextXAlignment.Left;
DELTA["12a"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
DELTA["12a"]["TextSize"] = 14;
DELTA["12a"]["TextColor3"] = Color3.fromRGB(190, 206, 232);
DELTA["12a"]["AnchorPoint"] = Vector2.new(0.5, 0);
DELTA["12a"]["Size"] = UDim2.new(0.9877890348434448, 0, 0.482876718044281, 0);
DELTA["12a"]["Text"] = [[Did you know?]];
DELTA["12a"]["Name"] = [[Title]];
DELTA["12a"]["BackgroundTransparency"] = 1;
DELTA["12a"]["Position"] = UDim2.new(0.5, 0, 0, 0);

-- StarterGui.Delta.Executor.Sidemenu.Network.Overlay.Holder.Information
DELTA["12b"] = Instance.new("Frame", DELTA["126"]);
DELTA["12b"]["BackgroundColor3"] = Color3.fromRGB(32, 35, 46);
DELTA["12b"]["BackgroundTransparency"] = 0.4000000059604645;
DELTA["12b"]["Size"] = UDim2.new(1, 0, 0.3164331018924713, 0);
DELTA["12b"]["Position"] = UDim2.new(0, 0, 0.6628726124763489, 0);
DELTA["12b"]["Name"] = [[Information]];

-- StarterGui.Delta.Executor.Sidemenu.Network.Overlay.Holder.Information.UICorner
DELTA["12c"] = Instance.new("UICorner", DELTA["12b"]);
DELTA["12c"]["CornerRadius"] = UDim.new(1, 0);

-- StarterGui.Delta.Executor.Sidemenu.Network.Overlay.Holder.Information.UIListLayout
DELTA["12d"] = Instance.new("UIListLayout", DELTA["12b"]);
DELTA["12d"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
DELTA["12d"]["FillDirection"] = Enum.FillDirection.Horizontal;
DELTA["12d"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
DELTA["12d"]["Padding"] = UDim.new(0.029999999329447746, 0);
DELTA["12d"]["SortOrder"] = Enum.SortOrder.LayoutOrder;

-- StarterGui.Delta.Executor.Sidemenu.Network.Overlay.Holder.Information.Memory
DELTA["12e"] = Instance.new("TextLabel", DELTA["12b"]);
DELTA["12e"]["TextWrapped"] = true;
DELTA["12e"]["RichText"] = true;
DELTA["12e"]["TextScaled"] = true;
DELTA["12e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["12e"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
DELTA["12e"]["TextSize"] = 14;
DELTA["12e"]["TextColor3"] = Color3.fromRGB(157, 162, 199);
DELTA["12e"]["AnchorPoint"] = Vector2.new(0.5, 1);
DELTA["12e"]["Size"] = UDim2.new(0.28310254216194153, 0, 0.2934793531894684, 0);
DELTA["12e"]["Text"] = [[<font color="#4FA4F2">68</font> MB]];
DELTA["12e"]["Name"] = [[Memory]];
DELTA["12e"]["BackgroundTransparency"] = 1;
DELTA["12e"]["Position"] = UDim2.new(0.05447632819414139, 0, 0.6467397809028625, 0);

-- StarterGui.Delta.Executor.Sidemenu.Network.Overlay.Holder.Information.Ping
DELTA["12f"] = Instance.new("TextLabel", DELTA["12b"]);
DELTA["12f"]["TextWrapped"] = true;
DELTA["12f"]["RichText"] = true;
DELTA["12f"]["TextScaled"] = true;
DELTA["12f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["12f"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
DELTA["12f"]["TextSize"] = 14;
DELTA["12f"]["TextColor3"] = Color3.fromRGB(157, 162, 199);
DELTA["12f"]["AnchorPoint"] = Vector2.new(0.5, 1);
DELTA["12f"]["LayoutOrder"] = 2;
DELTA["12f"]["Size"] = UDim2.new(0.3066037893295288, 0, 0.2934792935848236, 0);
DELTA["12f"]["Text"] = [[<font color="#4FA4F2">68</font> MS Ping]];
DELTA["12f"]["Name"] = [[Ping]];
DELTA["12f"]["BackgroundTransparency"] = 1;
DELTA["12f"]["Position"] = UDim2.new(0.2835494577884674, 0, 0.646739661693573, 0);

-- StarterGui.Delta.Executor.Sidemenu.Network.Overlay.Holder.Information.Players
DELTA["130"] = Instance.new("TextLabel", DELTA["12b"]);
DELTA["130"]["TextWrapped"] = true;
DELTA["130"]["RichText"] = true;
DELTA["130"]["TextScaled"] = true;
DELTA["130"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["130"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
DELTA["130"]["TextSize"] = 14;
DELTA["130"]["TextColor3"] = Color3.fromRGB(157, 162, 199);
DELTA["130"]["AnchorPoint"] = Vector2.new(0.5, 1);
DELTA["130"]["LayoutOrder"] = 3;
DELTA["130"]["Size"] = UDim2.new(0.3066039979457855, 0, 0.2934792935848236, 0);
DELTA["130"]["Text"] = [[<font color="#4FA4F2">11</font> players]];
DELTA["130"]["Name"] = [[Players]];
DELTA["130"]["BackgroundTransparency"] = 1;
DELTA["130"]["Position"] = UDim2.new(0.6138899326324463, 0, 0.646739661693573, 0);

-- StarterGui.Delta.Executor.Sidemenu.Network.NetworkStatsHandler
DELTA["131"] = Instance.new("LocalScript", DELTA["123"]);
DELTA["131"]["Name"] = [[NetworkStatsHandler]];

-- StarterGui.Delta.Executor.Sidemenu.UIListLayout
DELTA["132"] = Instance.new("UIListLayout", DELTA["116"]);
DELTA["132"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
DELTA["132"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Right;
DELTA["132"]["Padding"] = UDim.new(0.05000000074505806, 0);
DELTA["132"]["SortOrder"] = Enum.SortOrder.LayoutOrder;

-- StarterGui.Delta.Executor.Marker
DELTA["133"] = Instance.new("StringValue", DELTA["86"]);
DELTA["133"]["Value"] = [[Menu]];
DELTA["133"]["Name"] = [[Marker]];

-- StarterGui.Delta.Home
DELTA["134"] = Instance.new("Frame", DELTA["1"]);
DELTA["134"]["ZIndex"] = 100;
DELTA["134"]["BackgroundColor3"] = Color3.fromRGB(255, 0, 0);
DELTA["134"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
DELTA["134"]["BackgroundTransparency"] = 1;
DELTA["134"]["Size"] = UDim2.new(0.8483448028564453, 0, 0.8924814462661743, 0);
DELTA["134"]["Position"] = UDim2.new(0.47624671459198, 0, 0.5082324147224426, 0);
DELTA["134"]["Visible"] = false;
DELTA["134"]["Name"] = [[Home]];

-- StarterGui.Delta.Home.Searchbar
DELTA["135"] = Instance.new("Frame", DELTA["134"]);
DELTA["135"]["ZIndex"] = 2;
DELTA["135"]["BackgroundColor3"] = Color3.fromRGB(38, 41, 50);
DELTA["135"]["Size"] = UDim2.new(1, 0, 0.12585513293743134, 0);
DELTA["135"]["Name"] = [[Searchbar]];

-- StarterGui.Delta.Home.Searchbar.UICorner
DELTA["136"] = Instance.new("UICorner", DELTA["135"]);
DELTA["136"]["CornerRadius"] = UDim.new(0.20000000298023224, 0);

-- StarterGui.Delta.Home.Searchbar.ImageLabel
DELTA["137"] = Instance.new("ImageLabel", DELTA["135"]);
DELTA["137"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["137"]["AnchorPoint"] = Vector2.new(0, 0.5);
DELTA["137"]["Image"] = [[rbxassetid://13365156882]];
DELTA["137"]["Size"] = UDim2.new(0.025552265346050262, 0, 0.40771156549453735, 0);
DELTA["137"]["BackgroundTransparency"] = 1;
DELTA["137"]["Position"] = UDim2.new(0.01834862306714058, 0, 0.5, 0);

-- StarterGui.Delta.Home.Searchbar.ImageLabel.UIAspectRatioConstraint
DELTA["138"] = Instance.new("UIAspectRatioConstraint", DELTA["137"]);


-- StarterGui.Delta.Home.Searchbar.Input
DELTA["139"] = Instance.new("TextBox", DELTA["135"]);
DELTA["139"]["Active"] = true;
DELTA["139"]["TextSize"] = 14;
DELTA["139"]["TextXAlignment"] = Enum.TextXAlignment.Left;
DELTA["139"]["TextWrapped"] = true;
DELTA["139"]["TextScaled"] = true;
DELTA["139"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["139"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["139"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
DELTA["139"]["AnchorPoint"] = Vector2.new(0, 0.5);
DELTA["139"]["BackgroundTransparency"] = 1;
DELTA["139"]["PlaceholderText"] = [[Search for scripts...]];
DELTA["139"]["Size"] = UDim2.new(0.8766564130783081, 0, 0.35361653566360474, 0);
DELTA["139"]["Selectable"] = false;
DELTA["139"]["Text"] = [[]];
DELTA["139"]["Position"] = UDim2.new(0.061162080615758896, 0, 0.49999991059303284, 0);
DELTA["139"]["Name"] = [[Input]];

-- StarterGui.Delta.Home.Searchbar.Button
DELTA["13a"] = Instance.new("ImageButton", DELTA["135"]);
DELTA["13a"]["ZIndex"] = 999999999;
DELTA["13a"]["BackgroundColor3"] = Color3.fromRGB(59, 139, 254);
DELTA["13a"]["AnchorPoint"] = Vector2.new(1, 0.5);
DELTA["13a"]["Image"] = [[rbxassetid://0]];
DELTA["13a"]["Size"] = UDim2.new(0.08857108652591705, 0, 0.572917103767395, 0);
DELTA["13a"]["Name"] = [[Button]];
DELTA["13a"]["Position"] = UDim2.new(0.982576847076416, 0, 0.4999999701976776, 0);

-- StarterGui.Delta.Home.Searchbar.Button.UICorner
DELTA["13b"] = Instance.new("UICorner", DELTA["13a"]);
DELTA["13b"]["CornerRadius"] = UDim.new(0.15000000596046448, 0);

-- StarterGui.Delta.Home.Searchbar.Button.Title
DELTA["13c"] = Instance.new("TextLabel", DELTA["13a"]);
DELTA["13c"]["TextWrapped"] = true;
DELTA["13c"]["ZIndex"] = 999999999;
DELTA["13c"]["TextScaled"] = true;
DELTA["13c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["13c"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
DELTA["13c"]["TextSize"] = 14;
DELTA["13c"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["13c"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
DELTA["13c"]["Size"] = UDim2.new(0.7953082323074341, 0, 0.44124072790145874, 0);
DELTA["13c"]["Text"] = [[UPLOAD]];
DELTA["13c"]["Name"] = [[Title]];
DELTA["13c"]["BackgroundTransparency"] = 1;
DELTA["13c"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);

-- StarterGui.Delta.Home.Holder
DELTA["13d"] = Instance.new("ScrollingFrame", DELTA["134"]);
DELTA["13d"]["CanvasSize"] = UDim2.new(0, 0, 3, 0);
DELTA["13d"]["ScrollBarImageTransparency"] = 1;
DELTA["13d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["13d"]["VerticalScrollBarInset"] = Enum.ScrollBarInset.Always;
DELTA["13d"]["AnchorPoint"] = Vector2.new(0.5, 1);
DELTA["13d"]["BackgroundTransparency"] = 1;
DELTA["13d"]["Size"] = UDim2.new(1, 0, 0.8350700736045837, 0);
DELTA["13d"]["Selectable"] = false;
DELTA["13d"]["ScrollBarThickness"] = 0;
DELTA["13d"]["Position"] = UDim2.new(0.5, 0, 1, 0);
DELTA["13d"]["Name"] = [[Holder]];

-- StarterGui.Delta.Home.Holder.UIListLayout
DELTA["13e"] = Instance.new("UIListLayout", DELTA["13d"]);
DELTA["13e"]["Padding"] = UDim.new(0.004999999888241291, 0);
DELTA["13e"]["SortOrder"] = Enum.SortOrder.LayoutOrder;

-- StarterGui.Delta.Home.Holder.Script
DELTA["13f"] = Instance.new("Frame", DELTA["13d"]);
DELTA["13f"]["BackgroundColor3"] = Color3.fromRGB(38, 41, 50);
DELTA["13f"]["LayoutOrder"] = 1;
DELTA["13f"]["Size"] = UDim2.new(0.997948408126831, 0, 0.0462365560233593, 0);
DELTA["13f"]["Position"] = UDim2.new(0, 0, 1.0919346493665216e-07, 0);
DELTA["13f"]["Name"] = [[Script]];

-- StarterGui.Delta.Home.Holder.Script.UICorner
DELTA["140"] = Instance.new("UICorner", DELTA["13f"]);
DELTA["140"]["CornerRadius"] = UDim.new(0.20000000298023224, 0);

-- StarterGui.Delta.Home.Holder.Script.Title
DELTA["141"] = Instance.new("TextLabel", DELTA["13f"]);
DELTA["141"]["TextWrapped"] = true;
DELTA["141"]["TextScaled"] = true;
DELTA["141"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["141"]["TextXAlignment"] = Enum.TextXAlignment.Left;
DELTA["141"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
DELTA["141"]["TextSize"] = 14;
DELTA["141"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["141"]["AnchorPoint"] = Vector2.new(0, 0.5);
DELTA["141"]["Size"] = UDim2.new(0.15939868986606598, 0, 0.31746405363082886, 0);
DELTA["141"]["Text"] = [[Enter Your Title...]];
DELTA["141"]["Name"] = [[Title]];
DELTA["141"]["BackgroundTransparency"] = 1;
DELTA["141"]["Position"] = UDim2.new(-0.01293666660785675, 0, 0.5000000596046448, 0);

-- StarterGui.Delta.Home.Holder.Script.UIPadding
DELTA["142"] = Instance.new("UIPadding", DELTA["13f"]);
DELTA["142"]["PaddingRight"] = UDim.new(0.029999999329447746, 0);
DELTA["142"]["PaddingLeft"] = UDim.new(0.029999999329447746, 0);

-- StarterGui.Delta.Home.Holder.Script.Button
DELTA["143"] = Instance.new("ImageButton", DELTA["13f"]);
DELTA["143"]["BackgroundColor3"] = Color3.fromRGB(59, 64, 79);
DELTA["143"]["AnchorPoint"] = Vector2.new(1, 0.5);
DELTA["143"]["Image"] = [[rbxassetid://0]];
DELTA["143"]["Size"] = UDim2.new(0.09953451156616211, 0, 0.473985493183136, 0);
DELTA["143"]["Name"] = [[Button]];
DELTA["143"]["Position"] = UDim2.new(1.0157949924468994, 0, 0.5000000596046448, 0);

-- StarterGui.Delta.Home.Holder.Script.Button.UICorner
DELTA["144"] = Instance.new("UICorner", DELTA["143"]);
DELTA["144"]["CornerRadius"] = UDim.new(0.30000001192092896, 0);

-- StarterGui.Delta.Home.Holder.Script.Button.Title
DELTA["145"] = Instance.new("TextLabel", DELTA["143"]);
DELTA["145"]["TextWrapped"] = true;
DELTA["145"]["ZIndex"] = 999999999;
DELTA["145"]["TextScaled"] = true;
DELTA["145"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["145"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
DELTA["145"]["TextSize"] = 14;
DELTA["145"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["145"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
DELTA["145"]["Size"] = UDim2.new(0.7953082323074341, 0, 0.44124072790145874, 0);
DELTA["145"]["Text"] = [[OPTIONS]];
DELTA["145"]["Name"] = [[Title]];
DELTA["145"]["BackgroundTransparency"] = 1;
DELTA["145"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);

-- StarterGui.Delta.Home.Holder.Script.Frame
DELTA["146"] = Instance.new("Frame", DELTA["13f"]);
DELTA["146"]["BackgroundColor3"] = Color3.fromRGB(86, 173, 239);
DELTA["146"]["AnchorPoint"] = Vector2.new(0, 0.5);
DELTA["146"]["Size"] = UDim2.new(0.08429200947284698, 0, 0.3846021890640259, 0);
DELTA["146"]["Position"] = UDim2.new(0.14588697254657745, 0, 0.49755123257637024, 0);

-- StarterGui.Delta.Home.Holder.Script.Frame.UICorner
DELTA["147"] = Instance.new("UICorner", DELTA["146"]);
DELTA["147"]["CornerRadius"] = UDim.new(1, 0);

-- StarterGui.Delta.Home.Holder.Script.Frame.Title
DELTA["148"] = Instance.new("TextLabel", DELTA["146"]);
DELTA["148"]["TextWrapped"] = true;
DELTA["148"]["TextScaled"] = true;
DELTA["148"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["148"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
DELTA["148"]["TextSize"] = 14;
DELTA["148"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["148"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
DELTA["148"]["Size"] = UDim2.new(0.8315319418907166, 0, 0.5, 0);
DELTA["148"]["Text"] = [[UTILITY]];
DELTA["148"]["Name"] = [[Title]];
DELTA["148"]["BackgroundTransparency"] = 1;
DELTA["148"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);

-- StarterGui.Delta.Home.DarkOverlay
DELTA["149"] = Instance.new("Frame", DELTA["134"]);
DELTA["149"]["ZIndex"] = 99999;
DELTA["149"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
DELTA["149"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
DELTA["149"]["BackgroundTransparency"] = 0.5;
DELTA["149"]["Size"] = UDim2.new(10, 10, 2, 0);
DELTA["149"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
DELTA["149"]["Name"] = [[DarkOverlay]];

-- StarterGui.Delta.Home.Popup
DELTA["14a"] = Instance.new("Frame", DELTA["134"]);
DELTA["14a"]["ZIndex"] = 100000;
DELTA["14a"]["BackgroundColor3"] = Color3.fromRGB(38, 41, 49);
DELTA["14a"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
DELTA["14a"]["Size"] = UDim2.new(0.4596325159072876, 0, 0.9168577194213867, 0);
DELTA["14a"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
DELTA["14a"]["Name"] = [[Popup]];
DELTA["14a"].Active = true;

-- StarterGui.Delta.Home.Popup.Title
DELTA["14b"] = Instance.new("Frame", DELTA["14a"]);
DELTA["14b"]["ZIndex"] = 999999999;
DELTA["14b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["14b"]["AnchorPoint"] = Vector2.new(0.5, 0);
DELTA["14b"]["BackgroundTransparency"] = 1;
DELTA["14b"]["Size"] = UDim2.new(0.8193565607070923, 0, 0.23179079592227936, 0);
DELTA["14b"]["Position"] = UDim2.new(0.5, 0, 0.09408924728631973, 0);
DELTA["14b"]["Name"] = [[Title1]];

-- StarterGui.Delta.Home.Popup.Title.UIListLayout
DELTA["14c"] = Instance.new("UIListLayout", DELTA["14b"]);
DELTA["14c"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
DELTA["14c"]["SortOrder"] = Enum.SortOrder.LayoutOrder;

-- StarterGui.Delta.Home.Popup.Title.Title
DELTA["14d"] = Instance.new("TextLabel", DELTA["14b"]);
DELTA["14d"]["TextWrapped"] = true;
DELTA["14d"]["ZIndex"] = 999999999;
DELTA["14d"]["TextScaled"] = true;
DELTA["14d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["14d"]["TextXAlignment"] = Enum.TextXAlignment.Left;
DELTA["14d"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
DELTA["14d"]["TextSize"] = 14;
DELTA["14d"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["14d"]["AnchorPoint"] = Vector2.new(0.5, 0);
DELTA["14d"]["Size"] = UDim2.new(0.7438986301422119, 0, 0.2367609590291977, 0);
DELTA["14d"]["Text"] = [[Enter Details]];
DELTA["14d"]["Name"] = [[Title]];
DELTA["14d"]["BackgroundTransparency"] = 1;
DELTA["14d"]["Position"] = UDim2.new(0.37194931507110596, 0, 0.1145174577832222, 0);

-- StarterGui.Delta.Home.Popup.Title.Paragraph
DELTA["14e"] = Instance.new("TextLabel", DELTA["14b"]);
DELTA["14e"]["TextWrapped"] = true;
DELTA["14e"]["ZIndex"] = 999999999;
DELTA["14e"]["TextScaled"] = true;
DELTA["14e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["14e"]["TextXAlignment"] = Enum.TextXAlignment.Left;
DELTA["14e"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
DELTA["14e"]["TextSize"] = 14;
DELTA["14e"]["TextColor3"] = Color3.fromRGB(161, 167, 182);
DELTA["14e"]["AnchorPoint"] = Vector2.new(0.5, 1);
DELTA["14e"]["Size"] = UDim2.new(0.7438986897468567, 0, 0.5482637882232666, 0);
DELTA["14e"]["Text"] = [[Complete the necessary parameters to upload your client script]];
DELTA["14e"]["Name"] = [[Paragraph]];
DELTA["14e"]["BackgroundTransparency"] = 1;
DELTA["14e"]["Position"] = UDim2.new(0.37194934487342834, 0, 1.0482637882232666, 0);

-- StarterGui.Delta.Home.Popup.UICorner
DELTA["14f"] = Instance.new("UICorner", DELTA["14a"]);
DELTA["14f"]["CornerRadius"] = UDim.new(0.05000000074505806, 0);

-- StarterGui.Delta.Home.Popup.Close
DELTA["150"] = Instance.new("ImageButton", DELTA["14a"]);
DELTA["150"]["ZIndex"] = 999999999;
DELTA["150"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["150"]["AnchorPoint"] = Vector2.new(1, 0.5);
DELTA["150"]["Image"] = [[rbxassetid://13363121645]];
DELTA["150"]["Size"] = UDim2.new(0.04585733264684677, 0, 0.04716602712869644, 0);
DELTA["150"]["Name"] = [[Close]];
DELTA["150"]["Position"] = UDim2.new(0.8981863260269165, 0, 0.15145258605480194, 0);
DELTA["150"]["BackgroundTransparency"] = 1;

-- StarterGui.Delta.Home.Popup.Close.UIAspectRatioConstraint
DELTA["151"] = Instance.new("UIAspectRatioConstraint", DELTA["150"]);


-- StarterGui.Delta.Home.Popup.Title
DELTA["152"] = Instance.new("Frame", DELTA["14a"]);
DELTA["152"]["ZIndex"] = 999999999;
DELTA["152"]["BackgroundColor3"] = Color3.fromRGB(45, 50, 62);
DELTA["152"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
DELTA["152"]["Size"] = UDim2.new(0.8156777620315552, 0, 0.14276885986328125, 0);
DELTA["152"]["Position"] = UDim2.new(0.4967409074306488, 0, 0.4563864767551422, 0);
DELTA["152"]["Name"] = [[Title]];

-- StarterGui.Delta.Home.Popup.Title.UICorner
DELTA["153"] = Instance.new("UICorner", DELTA["152"]);
DELTA["153"]["CornerRadius"] = UDim.new(0.20000000298023224, 0);

-- StarterGui.Delta.Home.Popup.Title.UIStroke
DELTA["154"] = Instance.new("UIStroke", DELTA["152"]);
DELTA["154"]["Color"] = Color3.fromRGB(81, 92, 121);

-- StarterGui.Delta.Home.Popup.Title.TextLabel
DELTA["155"] = Instance.new("TextLabel", DELTA["152"]);
DELTA["155"]["TextWrapped"] = true;
DELTA["155"]["ZIndex"] = 999999999;
DELTA["155"]["TextScaled"] = true;
DELTA["155"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["155"]["TextXAlignment"] = Enum.TextXAlignment.Left;
DELTA["155"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
DELTA["155"]["TextSize"] = 14;
DELTA["155"]["TextColor3"] = Color3.fromRGB(129, 143, 164);
DELTA["155"]["Size"] = UDim2.new(0.9756902456283569, 0, 0.29466089606285095, 0);
DELTA["155"]["Text"] = [[Title]];
DELTA["155"]["BackgroundTransparency"] = 1;
DELTA["155"]["Position"] = UDim2.new(0.02430974505841732, 0, 0.09480518102645874, 0);

-- StarterGui.Delta.Home.Popup.Title.TextLabel
DELTA["156"] = Instance.new("TextBox", DELTA["152"]);
DELTA["156"]["Active"] = true;
DELTA["156"]["ZIndex"] = 999999999;
DELTA["156"]["TextSize"] = 14;
DELTA["156"]["TextXAlignment"] = Enum.TextXAlignment.Left;
DELTA["156"]["TextWrapped"] = true;
DELTA["156"]["TextScaled"] = true;
DELTA["156"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["156"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["156"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
DELTA["156"]["BackgroundTransparency"] = 1;
DELTA["156"]["Size"] = UDim2.new(0.9756902456283569, 0, 0.3262626826763153, 0);
DELTA["156"]["Selectable"] = false;
DELTA["156"]["Text"] = [[Enter Your Title...]];
DELTA["156"]["Position"] = UDim2.new(0.02430974505841732, 0, 0.4845598340034485, 0);
DELTA["156"]["Name"] = [[TextBox]];

-- StarterGui.Delta.Home.Popup.Source
DELTA["157"] = Instance.new("Frame", DELTA["14a"]);
DELTA["157"]["ZIndex"] = 999999999;
DELTA["157"]["BackgroundColor3"] = Color3.fromRGB(45, 50, 62);
DELTA["157"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
DELTA["157"]["Size"] = UDim2.new(0.8156777620315552, 0, 0.14276885986328125, 0);
DELTA["157"]["Position"] = UDim2.new(0.4967409074306488, 0, 0.6323444843292236, 0);
DELTA["157"]["Name"] = [[Source]];

-- StarterGui.Delta.Home.Popup.Source.UICorner
DELTA["158"] = Instance.new("UICorner", DELTA["157"]);
DELTA["158"]["CornerRadius"] = UDim.new(0.20000000298023224, 0);

-- StarterGui.Delta.Home.Popup.Source.UIStroke
DELTA["159"] = Instance.new("UIStroke", DELTA["157"]);
DELTA["159"]["Color"] = Color3.fromRGB(81, 92, 121);

-- StarterGui.Delta.Home.Popup.Source.TextLabel
DELTA["15a"] = Instance.new("TextLabel", DELTA["157"]);
DELTA["15a"]["TextWrapped"] = true;
DELTA["15a"]["ZIndex"] = 999999999;
DELTA["15a"]["TextScaled"] = true;
DELTA["15a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["15a"]["TextXAlignment"] = Enum.TextXAlignment.Left;
DELTA["15a"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
DELTA["15a"]["TextSize"] = 14;
DELTA["15a"]["TextColor3"] = Color3.fromRGB(129, 143, 164);
DELTA["15a"]["Size"] = UDim2.new(0.9756902456283569, 0, 0.29466089606285095, 0);
DELTA["15a"]["Text"] = [[Script]];
DELTA["15a"]["BackgroundTransparency"] = 1;
DELTA["15a"]["Position"] = UDim2.new(0.02430974505841732, 0, 0.09480518102645874, 0);

-- StarterGui.Delta.Home.Popup.Source.TextLabel
DELTA["15b"] = Instance.new("TextBox", DELTA["157"]);
DELTA["15b"]["Active"] = true;
DELTA["15b"]["ZIndex"] = 999999999;
DELTA["15b"]["TextSize"] = 14;
DELTA["15b"]["MultiLine"] = true;
DELTA["15b"]["TextXAlignment"] = Enum.TextXAlignment.Left;
DELTA["15b"]["TextWrapped"] = true;
DELTA["15b"]["TextScaled"] = true;
DELTA["15b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["15b"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["15b"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
DELTA["15b"]["BackgroundTransparency"] = 1;
DELTA["15b"]["Size"] = UDim2.new(0.9756902456283569, 0, 0.3262626528739929, 0);
DELTA["15b"]["Selectable"] = false;
DELTA["15b"]["Text"] = [[Enter Your Script...]];
DELTA["15b"]["Position"] = UDim2.new(0.02430974505841732, 0, 0.4845598340034485, 0);
DELTA["15b"]["Name"] = [[TextBox]];

-- StarterGui.Delta.Home.Popup.Add
DELTA["15c"] = Instance.new("ImageButton", DELTA["14a"]);
DELTA["15c"]["ZIndex"] = 999999999;
DELTA["15c"]["BackgroundColor3"] = Color3.fromRGB(59, 139, 254);
DELTA["15c"]["AnchorPoint"] = Vector2.new(0.5, 1);
DELTA["15c"]["Image"] = [[rbxassetid://0]];
DELTA["15c"]["Size"] = UDim2.new(0.8161376714706421, 0, 0.10715237259864807, 0);
DELTA["15c"]["Name"] = [[Add]];
DELTA["15c"]["Position"] = UDim2.new(0.4954189956188202, 0, 0.888956606388092, 0);

-- StarterGui.Delta.Home.Popup.Add.UICorner
DELTA["15d"] = Instance.new("UICorner", DELTA["15c"]);
DELTA["15d"]["CornerRadius"] = UDim.new(0.15000000596046448, 0);

-- StarterGui.Delta.Home.Popup.Add.Title
DELTA["15e"] = Instance.new("TextLabel", DELTA["15c"]);
DELTA["15e"]["TextWrapped"] = true;
DELTA["15e"]["ZIndex"] = 999999999;
DELTA["15e"]["TextScaled"] = true;
DELTA["15e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["15e"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
DELTA["15e"]["TextSize"] = 14;
DELTA["15e"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["15e"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
DELTA["15e"]["Size"] = UDim2.new(0.7953082323074341, 0, 0.44124072790145874, 0);
DELTA["15e"]["Text"] = [[Add Script]];
DELTA["15e"]["Name"] = [[Title]];
DELTA["15e"]["BackgroundTransparency"] = 1;
DELTA["15e"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);

-- StarterGui.Delta.Home.Marker
DELTA["15f"] = Instance.new("StringValue", DELTA["134"]);
DELTA["15f"]["Value"] = [[Menu]];
DELTA["15f"]["Name"] = [[Marker]];

-- StarterGui.Delta.UILibrary
DELTA["160"] = Instance.new("ModuleScript", DELTA["1"]);
DELTA["160"]["Name"] = [[UILibrary]];

-- StarterGui.Delta.IsTween
DELTA["161"] = Instance.new("BoolValue", DELTA["1"]);
DELTA["161"]["Value"] = true;
DELTA["161"]["Name"] = [[IsTween]];

-- StarterGui.Delta.Console
DELTA["162"] = Instance.new("Frame", DELTA["1"]);
DELTA["162"]["ZIndex"] = 100;
DELTA["162"]["BackgroundColor3"] = Color3.fromRGB(255, 0, 0);
DELTA["162"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
DELTA["162"]["BackgroundTransparency"] = 1;
DELTA["162"]["Size"] = UDim2.new(0.8483448028564453, 0, 0.8924814462661743, 0);
DELTA["162"]["Position"] = UDim2.new(0.47624671459198, 0, 0.5082324147224426, 0);
DELTA["162"]["Visible"] = false;
DELTA["162"]["Name"] = [[Console]];

-- StarterGui.Delta.Console.RobloxConsole
DELTA["163"] = Instance.new("Frame", DELTA["162"]);
DELTA["163"]["ZIndex"] = 100000;
DELTA["163"]["BackgroundColor3"] = Color3.fromRGB(38, 41, 49);
DELTA["163"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
DELTA["163"]["Size"] = UDim2.new(0.49088254570961, 0, 1.051314353942871, 0);
DELTA["163"]["Position"] = UDim2.new(0.20692352950572968, 0, 0.49035412073135376, 0);
DELTA["163"]["Name"] = [[RobloxConsole]];

-- StarterGui.Delta.Console.RobloxConsole.Buttons
DELTA["164"] = Instance.new("Frame", DELTA["163"]);
DELTA["164"]["ZIndex"] = 999999999;
DELTA["164"]["BorderSizePixel"] = 0;
DELTA["164"]["BackgroundColor3"] = Color3.fromRGB(22, 22, 30);
DELTA["164"]["AnchorPoint"] = Vector2.new(0.5, 1);
DELTA["164"]["BackgroundTransparency"] = 0.8999999761581421;
DELTA["164"]["Size"] = UDim2.new(0.9072632789611816, 0, 0.06977342814207077, 0);
DELTA["164"]["Position"] = UDim2.new(0.4903126060962677, 0, 0.9698548316955566, 0);
DELTA["164"]["Name"] = [[Buttons]];

-- StarterGui.Delta.Console.RobloxConsole.Buttons.UIListLayout
DELTA["165"] = Instance.new("UIListLayout", DELTA["164"]);
DELTA["165"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
DELTA["165"]["FillDirection"] = Enum.FillDirection.Horizontal;
DELTA["165"]["Padding"] = UDim.new(0.05000000074505806, 0);

-- StarterGui.Delta.Console.RobloxConsole.Buttons.Clear
DELTA["166"] = Instance.new("ImageButton", DELTA["164"]);
DELTA["166"]["Active"] = false;
DELTA["166"]["ZIndex"] = 999999999;
DELTA["166"]["BackgroundColor3"] = Color3.fromRGB(60, 137, 196);
DELTA["166"]["Selectable"] = false;
DELTA["166"]["Size"] = UDim2.new(0.29185107350349426, 0, 0.8751184344291687, 0);
DELTA["166"]["Name"] = [[Clear]];
DELTA["166"]["Position"] = UDim2.new(0, 0, -0.3320552110671997, 0);
DELTA["166"]["BackgroundTransparency"] = 0.8899999856948853;

-- StarterGui.Delta.Console.RobloxConsole.Buttons.Clear.UICorner
DELTA["167"] = Instance.new("UICorner", DELTA["166"]);
DELTA["167"]["CornerRadius"] = UDim.new(0.30000001192092896, 0);

-- StarterGui.Delta.Console.RobloxConsole.Buttons.Clear.Title
DELTA["168"] = Instance.new("TextLabel", DELTA["166"]);
DELTA["168"]["TextWrapped"] = true;
DELTA["168"]["ZIndex"] = 999999999;
DELTA["168"]["TextScaled"] = true;
DELTA["168"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["168"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
DELTA["168"]["TextSize"] = 14;
DELTA["168"]["TextColor3"] = Color3.fromRGB(140, 206, 255);
DELTA["168"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
DELTA["168"]["Size"] = UDim2.new(0.8766257762908936, 0, 0.3993089199066162, 0);
DELTA["168"]["Text"] = [[CLEAR]];
DELTA["168"]["Name"] = [[Title]];
DELTA["168"]["BackgroundTransparency"] = 1;
DELTA["168"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);

-- StarterGui.Delta.Console.RobloxConsole.Buttons.Clear.UIStroke
DELTA["169"] = Instance.new("UIStroke", DELTA["166"]);
DELTA["169"]["Color"] = Color3.fromRGB(60, 137, 196);
DELTA["169"]["Thickness"] = 2;

-- StarterGui.Delta.Console.RobloxConsole.UICorner
DELTA["16a"] = Instance.new("UICorner", DELTA["163"]);
DELTA["16a"]["CornerRadius"] = UDim.new(0.05000000074505806, 0);

-- StarterGui.Delta.Console.RobloxConsole.Console
DELTA["16b"] = Instance.new("Frame", DELTA["163"]);
DELTA["16b"]["ZIndex"] = 100000;
DELTA["16b"]["BackgroundColor3"] = Color3.fromRGB(24, 25, 33);
DELTA["16b"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
DELTA["16b"]["Size"] = UDim2.new(0.9083685874938965, 0, 0.6696294546127319, 0);
DELTA["16b"]["Position"] = UDim2.new(0.49789950251579285, 0, 0.5417348742485046, 0);
DELTA["16b"]["Name"] = [[Console]];

-- StarterGui.Delta.Console.RobloxConsole.Console.UICorner
DELTA["16c"] = Instance.new("UICorner", DELTA["16b"]);
DELTA["16c"]["CornerRadius"] = UDim.new(0.05000000074505806, 0);

-- StarterGui.Delta.Console.RobloxConsole.Console.ScrollingFrame
DELTA["16d"] = Instance.new("ScrollingFrame", DELTA["16b"]);
DELTA["16d"]["Active"] = true;
DELTA["16d"]["BorderSizePixel"] = 0;
DELTA["16d"]["CanvasSize"] = UDim2.new(0, 0, 0, 0);
DELTA["16d"]["TopImage"] = [[rbxasset://textures/ui/Scroll/scroll-middle.png]];
DELTA["16d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["16d"]["AutomaticCanvasSize"] = Enum.AutomaticSize.Y;
DELTA["16d"]["BackgroundTransparency"] = 1;
DELTA["16d"].ElasticBehavior = Enum.ElasticBehavior.Never;
DELTA["16d"]["Size"] = UDim2.new(0.9835176467895508, 0, 0.9677625298500061, 0);
DELTA["16d"]["ScrollBarImageColor3"] = Color3.fromRGB(0, 0, 0);
DELTA["16d"]["Position"] = UDim2.new(0.014219495467841625, 0, 0.016284499317407608, 0);
DELTA["16d"]["BottomImage"] = [[rbxasset://textures/ui/Scroll/scroll-middle.png]];

-- StarterGui.Delta.Console.RobloxConsole.Console.ScrollingFrame.Header
DELTA["16e"] = Instance.new("Frame", DELTA["16d"]);
DELTA["16e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["16e"]["BackgroundTransparency"] = 1;
DELTA["16e"]["Size"] = UDim2.new(0.9686747193336487, 0, 2.066622734069824, 0);
DELTA["16e"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
DELTA["16e"]["Position"] = UDim2.new(0, 0, 3.6679779213955044e-08, 0);
DELTA["16e"]["Name"] = [[Header]];

-- StarterGui.Delta.Console.RobloxConsole.Console.ScrollingFrame.Header.UIListLayout
DELTA["16f"] = Instance.new("UIListLayout", DELTA["16e"]);
DELTA["16f"]["SortOrder"] = Enum.SortOrder.LayoutOrder;

-- StarterGui.Delta.Console.RobloxConsole.Title
DELTA["170"] = Instance.new("Frame", DELTA["163"]);
DELTA["170"]["ZIndex"] = 999999999;
DELTA["170"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["170"]["AnchorPoint"] = Vector2.new(0.5, 0);
DELTA["170"]["BackgroundTransparency"] = 1;
DELTA["170"]["Size"] = UDim2.new(1.0044941902160645, 0, 0.15659764409065247, 0);
DELTA["170"]["Position"] = UDim2.new(0.5043055415153503, 0, 0.0041843606159091, 0);
DELTA["170"]["Name"] = [[Title]];

-- StarterGui.Delta.Console.RobloxConsole.Title.Title
DELTA["171"] = Instance.new("TextLabel", DELTA["170"]);
DELTA["171"]["TextWrapped"] = true;
DELTA["171"]["ZIndex"] = 999999999;
DELTA["171"]["TextScaled"] = true;
DELTA["171"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["171"]["TextXAlignment"] = Enum.TextXAlignment.Left;
DELTA["171"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
DELTA["171"]["TextSize"] = 14;
DELTA["171"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["171"]["AnchorPoint"] = Vector2.new(0.5, 0);
DELTA["171"]["Size"] = UDim2.new(0.7438986897468567, 0, 0.3096470236778259, 0);
DELTA["171"]["Text"] = [[Roblox Console]];
DELTA["171"]["Name"] = [[Title]];
DELTA["171"]["BackgroundTransparency"] = 1;
DELTA["171"]["Position"] = UDim2.new(0.4120405614376068, 0, 0.19299590587615967, 0);

-- StarterGui.Delta.Console.RobloxConsole.Title.Paragraph
DELTA["172"] = Instance.new("TextLabel", DELTA["170"]);
DELTA["172"]["TextWrapped"] = true;
DELTA["172"]["ZIndex"] = 999999999;
DELTA["172"]["TextScaled"] = true;
DELTA["172"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["172"]["TextXAlignment"] = Enum.TextXAlignment.Left;
DELTA["172"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
DELTA["172"]["TextSize"] = 14;
DELTA["172"]["TextColor3"] = Color3.fromRGB(161, 167, 182);
DELTA["172"]["AnchorPoint"] = Vector2.new(0.5, 1);
DELTA["172"]["Size"] = UDim2.new(0.9046008586883545, 0, 0.2446010410785675, 0);
DELTA["172"]["Text"] = [[Console that get outputs from ROBLOX console and display it in this menu.]];
DELTA["172"]["Name"] = [[Paragraph]];
DELTA["172"]["BackgroundTransparency"] = 1;
DELTA["172"]["Position"] = UDim2.new(0.4923916459083557, 0, 0.7393273115158081, 0);

-- StarterGui.Delta.Console.RobloxConsole.Searchbar
DELTA["173"] = Instance.new("TextBox", DELTA["163"]);
DELTA["173"]["Active"] = true
DELTA["173"]["ZIndex"] = 999999999;
DELTA["173"]["TextWrapped"] = true;
DELTA["173"]["TextScaled"] = true;
DELTA["173"]["BackgroundColor3"] = Color3.fromRGB(60, 137, 196);
DELTA["173"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["173"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
DELTA["173"]["BackgroundTransparency"] = 0.8899999856948853;
DELTA["173"]["Size"] = UDim2.new(0.3225496709346771, 0, 0.025502502918243408, 0);
DELTA["173"]["Selectable"] = false;
DELTA["173"]["Text"] = [[]];
DELTA["173"]["Position"] = UDim2.new(0.6109463572502136, 0, 0.16887244582176208, 0);
DELTA["173"]["Name"] = [[Searchbar]];

-- StarterGui.Delta.Console.RobloxConsole.Searchbar.UICorner
DELTA["174"] = Instance.new("UICorner", DELTA["173"]);
DELTA["174"]["CornerRadius"] = UDim.new(0.30000001192092896, 0);

-- StarterGui.Delta.Console.RobloxConsole.Searchbar.UIStroke
DELTA["175"] = Instance.new("UIStroke", DELTA["173"]);
DELTA["175"]["Color"] = Color3.fromRGB(69, 97, 119);
DELTA["175"]["Thickness"] = 2;
DELTA["175"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

-- StarterGui.Delta.Console.RobloxConsole.Searchbar.Title
DELTA["176"] = Instance.new("TextLabel", DELTA["173"]);
DELTA["176"]["TextWrapped"] = true;
DELTA["176"]["ZIndex"] = 999999999;
DELTA["176"]["TextScaled"] = true;
DELTA["176"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["176"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
DELTA["176"]["TextSize"] = 14;
DELTA["176"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["176"]["AnchorPoint"] = Vector2.new(0.5, 0);
DELTA["176"]["Size"] = UDim2.new(0.2933172583580017, 0, 1.001572847366333, 0);
DELTA["176"]["Text"] = [[Search:]];
DELTA["176"]["Name"] = [[Title]];
DELTA["176"]["BackgroundTransparency"] = 1;
DELTA["176"]["Position"] = UDim2.new(-0.17850913107395172, 0, 0.11472053080797195, 0);

-- StarterGui.Delta.Console.RobloxConsole.Searchbar.LocalScript
DELTA["177"] = Instance.new("LocalScript", DELTA["173"]);


-- StarterGui.Delta.Console.RobloxConsole.LocalScript
DELTA["178"] = Instance.new("LocalScript", DELTA["163"]);


-- StarterGui.Delta.Console.Marker
DELTA["179"] = Instance.new("StringValue", DELTA["162"]);
DELTA["179"]["Value"] = [[Menu]];
DELTA["179"]["Name"] = [[Marker]];

-- StarterGui.Delta.Console.ConsoleElements
DELTA["17a"] = Instance.new("Folder", DELTA["162"]);
DELTA["17a"]["Name"] = [[ConsoleElements]];

-- StarterGui.Delta.Console.ConsoleElements.Error
DELTA["17b"] = Instance.new("Frame", DELTA["17a"]);
DELTA["17b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["17b"]["BackgroundTransparency"] = 1;
DELTA["17b"]["Size"] = UDim2.new(1, 0, 0, 20);
DELTA["17b"]["AutomaticSize"] = Enum.AutomaticSize.Y;
DELTA["17b"]["Visible"] = false;
DELTA["17b"]["Name"] = [[Error]];

-- StarterGui.Delta.Console.ConsoleElements.Error.Content
DELTA["17c"] = Instance.new("TextLabel", DELTA["17b"]);
DELTA["17c"]["TextWrapped"] = true;
DELTA["17c"]["RichText"] = true;
DELTA["17c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["17c"]["TextXAlignment"] = Enum.TextXAlignment.Left;
DELTA["17c"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
DELTA["17c"]["TextSize"] = 14;
DELTA["17c"]["TextColor3"] = Color3.fromRGB(221, 42, 45);
DELTA["17c"]["AutomaticSize"] = Enum.AutomaticSize.Y;
DELTA["17c"]["Size"] = UDim2.new(1, 0, 1, 0);
DELTA["17c"]["Text"] = [[[Error] Oh No! Error Happened!]];
DELTA["17c"]["Name"] = [[Content]];
DELTA["17c"]["BackgroundTransparency"] = 1;
DELTA["17c"]["Position"] = UDim2.new(0.01421956717967987, 0, 0, 0);

-- StarterGui.Delta.Console.ConsoleElements.Warn
DELTA["17d"] = Instance.new("Frame", DELTA["17a"]);
DELTA["17d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["17d"]["BackgroundTransparency"] = 1;
DELTA["17d"]["Size"] = UDim2.new(1, 0, 0, 20);
DELTA["17d"]["AutomaticSize"] = Enum.AutomaticSize.Y;
DELTA["17d"]["Visible"] = false;
DELTA["17d"]["Name"] = [[Warn]];

-- StarterGui.Delta.Console.ConsoleElements.Warn.Content
DELTA["17e"] = Instance.new("TextLabel", DELTA["17d"]);
DELTA["17e"]["TextWrapped"] = true;
DELTA["17e"]["RichText"] = true;
DELTA["17e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["17e"]["TextXAlignment"] = Enum.TextXAlignment.Left;
DELTA["17e"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
DELTA["17e"]["TextSize"] = 14;
DELTA["17e"]["TextColor3"] = Color3.fromRGB(210, 221, 0);
DELTA["17e"]["AutomaticSize"] = Enum.AutomaticSize.Y;
DELTA["17e"]["Size"] = UDim2.new(1, 0, 1, 0);
DELTA["17e"]["Text"] = [[[Warn] You got warning!]];
DELTA["17e"]["Name"] = [[Content]];
DELTA["17e"]["BackgroundTransparency"] = 1;
DELTA["17e"]["Position"] = UDim2.new(0.01421956717967987, 0, 0, 0);

-- StarterGui.Delta.Console.ConsoleElements.Output
DELTA["17f"] = Instance.new("Frame", DELTA["17a"]);
DELTA["17f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["17f"]["BackgroundTransparency"] = 1;
DELTA["17f"]["Size"] = UDim2.new(1, 0, 0, 20);
DELTA["17f"]["AutomaticSize"] = Enum.AutomaticSize.Y;
DELTA["17f"]["Visible"] = false;
DELTA["17f"]["Name"] = [[Output]];

-- StarterGui.Delta.Console.ConsoleElements.Output.Content
DELTA["180"] = Instance.new("TextLabel", DELTA["17f"]);
DELTA["180"]["TextWrapped"] = true;
DELTA["180"]["RichText"] = true;
DELTA["180"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["180"]["TextXAlignment"] = Enum.TextXAlignment.Left;
DELTA["180"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
DELTA["180"]["TextSize"] = 14;
DELTA["180"]["TextColor3"] = Color3.fromRGB(221, 221, 221);
DELTA["180"]["AutomaticSize"] = Enum.AutomaticSize.Y;
DELTA["180"]["Size"] = UDim2.new(1, 0, 1, 0);
DELTA["180"]["Text"] = [[[Output] Hello World!]];
DELTA["180"]["Name"] = [[Content]];
DELTA["180"]["BackgroundTransparency"] = 1;
DELTA["180"]["Position"] = UDim2.new(0.01421956717967987, 0, 0, 0);

-- StarterGui.Delta.Console.ConsoleElements.Info
DELTA["181"] = Instance.new("Frame", DELTA["17a"]);
DELTA["181"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["181"]["BackgroundTransparency"] = 1;
DELTA["181"]["Size"] = UDim2.new(1, 0, 0, 20);
DELTA["181"]["AutomaticSize"] = Enum.AutomaticSize.Y;
DELTA["181"]["Visible"] = false;
DELTA["181"]["Name"] = [[Info]];

-- StarterGui.Delta.Console.ConsoleElements.Info.Content
DELTA["182"] = Instance.new("TextLabel", DELTA["181"]);
DELTA["182"]["TextWrapped"] = true;
DELTA["182"]["RichText"] = true;
DELTA["182"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["182"]["TextXAlignment"] = Enum.TextXAlignment.Left;
DELTA["182"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
DELTA["182"]["TextSize"] = 14;
DELTA["182"]["TextColor3"] = Color3.fromRGB(0, 118, 221);
DELTA["182"]["AutomaticSize"] = Enum.AutomaticSize.Y;
DELTA["182"]["Size"] = UDim2.new(1, 0, 1, 0);
DELTA["182"]["Text"] = [[[Info] Information.]];
DELTA["182"]["Name"] = [[Content]];
DELTA["182"]["BackgroundTransparency"] = 1;
DELTA["182"]["Position"] = UDim2.new(0.01421956717967987, 0, 0, 0);

-- StarterGui.Delta.Console.ConsoleElements.Input
DELTA["183"] = Instance.new("Frame", DELTA["17a"]);
DELTA["183"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["183"]["BackgroundTransparency"] = 1;
DELTA["183"]["Size"] = UDim2.new(1, 0, 0, 20);
DELTA["183"]["AutomaticSize"] = Enum.AutomaticSize.Y;
DELTA["183"]["Visible"] = false;
DELTA["183"]["Name"] = [[Input]];

-- StarterGui.Delta.Console.ConsoleElements.Input.Arrow
DELTA["184"] = Instance.new("TextLabel", DELTA["183"]);
DELTA["184"]["TextWrapped"] = true;
DELTA["184"]["RichText"] = true;
DELTA["184"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["184"]["TextXAlignment"] = Enum.TextXAlignment.Left;
DELTA["184"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
DELTA["184"]["TextSize"] = 16;
DELTA["184"]["TextColor3"] = Color3.fromRGB(221, 221, 221);
DELTA["184"]["AutomaticSize"] = Enum.AutomaticSize.Y;
DELTA["184"]["Size"] = UDim2.new(0.03482586517930031, 0, 1, 0);
DELTA["184"]["Text"] = [[>]];
DELTA["184"]["Name"] = [[Arrow]];
DELTA["184"]["BackgroundTransparency"] = 1;
DELTA["184"]["Position"] = UDim2.new(0, 7, 0, 0);

-- StarterGui.Delta.Console.ConsoleElements.Input.Content
DELTA["185"] = Instance.new("TextBox", DELTA["183"]);
DELTA["185"]["Active"] = true;
DELTA["185"]["RichText"] = true;
DELTA["185"]["TextSize"] = 14;
DELTA["185"]["TextXAlignment"] = Enum.TextXAlignment.Left;
DELTA["185"]["TextWrapped"] = true;
DELTA["185"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["185"]["TextColor3"] = Color3.fromRGB(221, 221, 221);
DELTA["185"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
DELTA["185"]["MultiLine"] = true;
DELTA["185"]["BackgroundTransparency"] = 1;
DELTA["185"]["Size"] = UDim2.new(0.9676616787910461, 0, 1, 0);
DELTA["185"]["Selectable"] = false;
DELTA["185"]["Text"] = [[]];
DELTA["185"]["Position"] = UDim2.new(0.04655786231160164, 0, 0, 0);
DELTA["185"]["AutomaticSize"] = Enum.AutomaticSize.Y;
DELTA["185"]["Name"] = [[Content]];

-- StarterGui.Delta.Console.RConsole
DELTA["186"] = Instance.new("Frame", DELTA["162"]);
DELTA["186"]["ZIndex"] = 100000;
DELTA["186"]["BackgroundColor3"] = Color3.fromRGB(38, 41, 49);
DELTA["186"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
DELTA["186"]["Size"] = UDim2.new(0.49088254570961, 0, 1.051314353942871, 0);
DELTA["186"]["Position"] = UDim2.new(0.7404356598854065, 0, 0.49035412073135376, 0);
DELTA["186"]["Name"] = [[RConsole]];

-- StarterGui.Delta.Console.RConsole.Buttons
DELTA["187"] = Instance.new("Frame", DELTA["186"]);
DELTA["187"]["ZIndex"] = 999999999;
DELTA["187"]["BorderSizePixel"] = 0;
DELTA["187"]["BackgroundColor3"] = Color3.fromRGB(22, 22, 30);
DELTA["187"]["AnchorPoint"] = Vector2.new(0.5, 1);
DELTA["187"]["BackgroundTransparency"] = 0.8999999761581421;
DELTA["187"]["Size"] = UDim2.new(0.9072632789611816, 0, 0.06977342814207077, 0);
DELTA["187"]["Position"] = UDim2.new(0.4903126060962677, 0, 0.9698548316955566, 0);
DELTA["187"]["Name"] = [[Buttons]];

-- StarterGui.Delta.Console.RConsole.Buttons.UIListLayout
DELTA["188"] = Instance.new("UIListLayout", DELTA["187"]);
DELTA["188"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
DELTA["188"]["FillDirection"] = Enum.FillDirection.Horizontal;
DELTA["188"]["Padding"] = UDim.new(0.05000000074505806, 0);

-- StarterGui.Delta.Console.RConsole.Buttons.Clear
DELTA["189"] = Instance.new("ImageButton", DELTA["187"]);
DELTA["189"]["Active"] = false;
DELTA["189"]["ZIndex"] = 999999999;
DELTA["189"]["BackgroundColor3"] = Color3.fromRGB(60, 137, 196);
DELTA["189"]["Selectable"] = false;
DELTA["189"]["Size"] = UDim2.new(0.29185107350349426, 0, 0.8751184344291687, 0);
DELTA["189"]["Name"] = [[Clear]];
DELTA["189"]["Position"] = UDim2.new(0, 0, -0.3320552110671997, 0);
DELTA["189"]["BackgroundTransparency"] = 0.8899999856948853;

-- StarterGui.Delta.Console.RConsole.Buttons.Clear.UICorner
DELTA["18a"] = Instance.new("UICorner", DELTA["189"]);
DELTA["18a"]["CornerRadius"] = UDim.new(0.30000001192092896, 0);

-- StarterGui.Delta.Console.RConsole.Buttons.Clear.Title
DELTA["18b"] = Instance.new("TextLabel", DELTA["189"]);
DELTA["18b"]["TextWrapped"] = true;
DELTA["18b"]["ZIndex"] = 999999999;
DELTA["18b"]["TextScaled"] = true;
DELTA["18b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["18b"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
DELTA["18b"]["TextSize"] = 14;
DELTA["18b"]["TextColor3"] = Color3.fromRGB(140, 206, 255);
DELTA["18b"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
DELTA["18b"]["Size"] = UDim2.new(0.8766257762908936, 0, 0.3993089199066162, 0);
DELTA["18b"]["Text"] = [[CLEAR]];
DELTA["18b"]["Name"] = [[Title]];
DELTA["18b"]["BackgroundTransparency"] = 1;
DELTA["18b"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);

-- StarterGui.Delta.Console.RConsole.Buttons.Clear.UIStroke
DELTA["18c"] = Instance.new("UIStroke", DELTA["189"]);
DELTA["18c"]["Color"] = Color3.fromRGB(60, 137, 196);
DELTA["18c"]["Thickness"] = 2;

-- StarterGui.Delta.Console.RConsole.UICorner
DELTA["18d"] = Instance.new("UICorner", DELTA["186"]);
DELTA["18d"]["CornerRadius"] = UDim.new(0.05000000074505806, 0);

-- StarterGui.Delta.Console.RConsole.Console
DELTA["18e"] = Instance.new("Frame", DELTA["186"]);
DELTA["18e"]["ZIndex"] = 100000;
DELTA["18e"]["BackgroundColor3"] = Color3.fromRGB(24, 25, 33);
DELTA["18e"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
DELTA["18e"]["Size"] = UDim2.new(0.9083685874938965, 0, 0.6696294546127319, 0);
DELTA["18e"]["Position"] = UDim2.new(0.49789950251579285, 0, 0.5417348742485046, 0);
DELTA["18e"]["Name"] = [[Console]];

-- StarterGui.Delta.Console.RConsole.Console.UICorner
DELTA["18f"] = Instance.new("UICorner", DELTA["18e"]);
DELTA["18f"]["CornerRadius"] = UDim.new(0.05000000074505806, 0);

-- StarterGui.Delta.Console.RConsole.Console.ScrollingFrame
DELTA["190"] = Instance.new("ScrollingFrame", DELTA["18e"]);
DELTA["190"]["Active"] = true;
DELTA["190"]["BorderSizePixel"] = 0;
DELTA["190"]["CanvasSize"] = UDim2.new(0, 0, 0, 0);
DELTA["190"].ElasticBehavior = Enum.ElasticBehavior.Never;
DELTA["190"]["TopImage"] = [[rbxasset://textures/ui/Scroll/scroll-middle.png]];
DELTA["190"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["190"]["AutomaticCanvasSize"] = Enum.AutomaticSize.Y;
DELTA["190"]["BackgroundTransparency"] = 1;
DELTA["190"]["Size"] = UDim2.new(0.9835176467895508, 0, 0.9677625298500061, 0);
DELTA["190"]["ScrollBarImageColor3"] = Color3.fromRGB(0, 0, 0);
DELTA["190"]["Position"] = UDim2.new(0.014219495467841625, 0, 0.016284499317407608, 0);
DELTA["190"]["BottomImage"] = [[rbxasset://textures/ui/Scroll/scroll-middle.png]];

-- StarterGui.Delta.Console.RConsole.Console.ScrollingFrame.Header
DELTA["191"] = Instance.new("Frame", DELTA["190"]);
DELTA["191"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["191"]["BackgroundTransparency"] = 1;
DELTA["191"]["Size"] = UDim2.new(0.9686747193336487, 0, 2.066622734069824, 0);
DELTA["191"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
DELTA["191"]["Position"] = UDim2.new(0, 0, 3.6679779213955044e-08, 0);
DELTA["191"]["Name"] = [[Header]];

-- StarterGui.Delta.Console.RConsole.Console.ScrollingFrame.Header.UIListLayout
DELTA["192"] = Instance.new("UIListLayout", DELTA["191"]);
DELTA["192"]["SortOrder"] = Enum.SortOrder.LayoutOrder;

-- StarterGui.Delta.Console.RConsole.Title
DELTA["193"] = Instance.new("Frame", DELTA["186"]);
DELTA["193"]["ZIndex"] = 999999999;
DELTA["193"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["193"]["AnchorPoint"] = Vector2.new(0.5, 0);
DELTA["193"]["BackgroundTransparency"] = 1;
DELTA["193"]["Size"] = UDim2.new(1.0044941902160645, 0, 0.15659764409065247, 0);
DELTA["193"]["Position"] = UDim2.new(0.5043055415153503, 0, 0.0041843606159091, 0);
DELTA["193"]["Name"] = [[Title]];

-- StarterGui.Delta.Console.RConsole.Title.Title
DELTA["194"] = Instance.new("TextLabel", DELTA["193"]);
DELTA["194"]["TextWrapped"] = true;
DELTA["194"]["ZIndex"] = 999999999;
DELTA["194"]["TextScaled"] = true;
DELTA["194"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["194"]["TextXAlignment"] = Enum.TextXAlignment.Left;
DELTA["194"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
DELTA["194"]["TextSize"] = 14;
DELTA["194"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["194"]["AnchorPoint"] = Vector2.new(0.5, 0);
DELTA["194"]["Size"] = UDim2.new(0.7438986897468567, 0, 0.3096470236778259, 0);
DELTA["194"]["Text"] = [[Delta Console]];
DELTA["194"]["Name"] = [[Title]];
DELTA["194"]["BackgroundTransparency"] = 1;
DELTA["194"]["Position"] = UDim2.new(0.4120405614376068, 0, 0.19299590587615967, 0);

-- StarterGui.Delta.Console.RConsole.Title.Paragraph
DELTA["195"] = Instance.new("TextLabel", DELTA["193"]);
DELTA["195"]["TextWrapped"] = true;
DELTA["195"]["ZIndex"] = 999999999;
DELTA["195"]["TextScaled"] = true;
DELTA["195"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["195"]["TextXAlignment"] = Enum.TextXAlignment.Left;
DELTA["195"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
DELTA["195"]["TextSize"] = 14;
DELTA["195"]["TextColor3"] = Color3.fromRGB(161, 167, 182);
DELTA["195"]["AnchorPoint"] = Vector2.new(0.5, 1);
DELTA["195"]["Size"] = UDim2.new(0.849057674407959, 0, 0.17429254949092865, 0);
DELTA["195"]["Text"] = [[Console that provides output, input from Delta API.]];
DELTA["195"]["Name"] = [[Paragraph]];
DELTA["195"]["BackgroundTransparency"] = 1;
DELTA["195"]["Position"] = UDim2.new(0.46462011337280273, 0, 0.7041730880737305, 0);

-- StarterGui.Delta.Console.RConsole.Searchbar
DELTA["196"] = Instance.new("TextBox", DELTA["186"]);
DELTA["196"]["Active"] = true;
DELTA["196"]["ZIndex"] = 999999999;
DELTA["196"]["TextWrapped"] = true;
DELTA["196"]["TextScaled"] = true;
DELTA["196"]["BackgroundColor3"] = Color3.fromRGB(60, 137, 196);
DELTA["196"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["196"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
DELTA["196"]["BackgroundTransparency"] = 0.8899999856948853;
DELTA["196"]["Size"] = UDim2.new(0.3225496709346771, 0, 0.025502502918243408, 0);
DELTA["196"]["Selectable"] = false;
DELTA["196"]["Text"] = [[]];
DELTA["196"]["Position"] = UDim2.new(0.6109463572502136, 0, 0.16887244582176208, 0);
DELTA["196"]["Name"] = [[Searchbar]];

-- StarterGui.Delta.Console.RConsole.Searchbar.UICorner
DELTA["197"] = Instance.new("UICorner", DELTA["196"]);
DELTA["197"]["CornerRadius"] = UDim.new(0.30000001192092896, 0);

-- StarterGui.Delta.Console.RConsole.Searchbar.UIStroke
DELTA["198"] = Instance.new("UIStroke", DELTA["196"]);
DELTA["198"]["Color"] = Color3.fromRGB(69, 97, 119);
DELTA["198"]["Thickness"] = 2;
DELTA["198"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

-- StarterGui.Delta.Console.RConsole.Searchbar.Title
DELTA["199"] = Instance.new("TextLabel", DELTA["196"]);
DELTA["199"]["TextWrapped"] = true;
DELTA["199"]["ZIndex"] = 999999999;
DELTA["199"]["TextScaled"] = true;
DELTA["199"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["199"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
DELTA["199"]["TextSize"] = 14;
DELTA["199"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
DELTA["199"]["AnchorPoint"] = Vector2.new(0.5, 0);
DELTA["199"]["Size"] = UDim2.new(0.2933172583580017, 0, 1.001572847366333, 0);
DELTA["199"]["Text"] = [[Search:]];
DELTA["199"]["Name"] = [[Title]];
DELTA["199"]["BackgroundTransparency"] = 1;
DELTA["199"]["Position"] = UDim2.new(-0.17850913107395172, 0, 0.11472053080797195, 0);

-- StarterGui.Delta.Console.RConsole.Searchbar.LocalScript
DELTA["19a"] = Instance.new("LocalScript", DELTA["196"]);


-- StarterGui.Delta.Console.RConsole.LocalScript
DELTA["19b"] = Instance.new("LocalScript", DELTA["186"]);


-- StarterGui.Delta.MainScript
DELTA["19c"] = Instance.new("LocalScript", DELTA["1"]);
DELTA["19c"]["Name"] = [[MainScript]];

-- Require DELTA wrapper
local DELTA_REQUIRE = require;
local DELTA_MODULES = {};
local function require(Module:ModuleScript)
local ModuleState = DELTA_MODULES[Module];
if ModuleState then
if not ModuleState.Required then
ModuleState.Required = true;
ModuleState.Value = ModuleState.Closure();
end
return ModuleState.Value;
end;
return DELTA_REQUIRE(Module);
end

getgenv().total_tabs = 0

DELTA_MODULES[DELTA["160"]] = {
    Closure = function()
    local script = DELTA["160"];
    local module = {}
    module.Console = {}
    module.Settings = {}
    module.SavedScripts = {}
    local reserved = script.Parent.Executor.Executor.Overlay.Reserved
    local ts = game:GetService("TweenService")
    local isTween = script.Parent.IsTween
    module.ScriptSearch = {}
    local executor = script.Parent.Executor.Executor.Overlay

    local function GetTotalTabs()
        return total_tabs
    end


    function module:AddTab(name: string, source: string)
    total_tabs +=1
    local newTab = script.Parent.Executor.Executor.Overlay.Reserved.TabX:Clone()
    local newTextbox = script.Parent.Executor.Executor.Overlay.Reserved.Textbox:Clone()

    newTextbox.Parent = script.Parent.Executor.Executor.Overlay.Code

    newTab.Parent = script.Parent.Executor.Executor.Overlay.Tabs
    newTab.Visible = true

    if type(name) == "string" then
    newTab.Title.Text = name
    newTab.Name = name

    newTextbox.Name = name
    else
        newTab.Title.Text = "script"..(GetTotalTabs())..'.lua'
    newTab.Name = "script"..(GetTotalTabs())..'.lua'
    newTextbox.Name = "script"..(GetTotalTabs())..'.lua'
    end

    if type(source) == "string" then
    newTextbox.Text = source
    end

    newTab.MouseButton1Click:Connect(function()
        for i,v in pairs(script.Parent.Executor.Executor.Overlay.Tabs:GetChildren()) do
        if v.Name ~= "AddTab" and v.Name ~= newTab.Name and v:IsA("ImageButton") then
        v.Transparency = 1
        elseif v.Name ~= "AddTab" and v.Name == newTab.Name and v:IsA("ImageButton") then
        v.Transparency = 0
        end
        end
        for i,v in pairs(script.Parent.Executor.Executor.Overlay.Code:GetChildren()) do
        if v.Name ~= "AddTab" and v.Name ~= newTab.Name and v:IsA("TextBox") then
        v.Visible = false
        elseif v.Name ~= "AddTab" and v.Name == newTab.Name and v:IsA("TextBox") then
        v.Visible = true
        end
        end
        newTextbox.Visible = true
        newTab.Visible = true
        end)
    newTab.ImageButton.MouseButton1Click:Connect(function()
        newTextbox:Destroy()
        newTab:Destroy()
        end)

    for i,v in pairs(executor.Code:GetChildren()) do
    if v.Name ~= newTextbox.Name then
    v.Visible = false
    end
    end
    for i,v in pairs(script.Parent.Executor.Executor.Overlay.Code:GetChildren()) do
    if v:IsA("TextBox") then
    if v.Name ~= newTab.Name then
    v.Visible = false
    elseif v.Name == newTab.Name then
    v.Visible = true
    end
    end
    end
    for i,v in pairs(script.Parent.Executor.Executor.Overlay.Tabs:GetChildren()) do
    if v.Name ~= "AddTab" and v.Name ~= newTab.Name and v:IsA("ImageButton") then
    v.Transparency = 1
    elseif v.Name ~= "AddTab" and v.Name == newTab.Name and v:IsA("ImageButton") then
    v.Transparency = 0
    end
    end
    end




    function module:SetCurrentSuggestionScript(title: string, desc: string, source: string)
    script.Parent.Executor.Sidemenu.Script.Overlay.Holder.Showcase.Title.Text = title
    script.Parent.Executor.Sidemenu.Script.Overlay.Holder.Showcase.Description.Text = desc
    getgenv().ExecuteSuggestedScript = function()
    executescript(source)
    end
    end

    function module.Console:GoToConsole()
    for i,v in pairs(script.Parent:GetChildren()) do
    if v:IsA("Frame") then
    if v:FindFirstChild("Menu") then
    if v.Name ~= "Console" then
    v.Visible = false
    end
    end
    end
    end
    script.Parent.Console.Visible = true
    end

    function module.Settings:AddSwitch(title: string, description: string, enabled: boolean, func, ...)
    if enabled == false then
    local newSwitch = reserved.SettingSwitch:Clone()
    local args = {
        ...
    }
    newSwitch.Parent = script.Parent.Settings.Holder

    newSwitch.Title.Text = title
    newSwitch.Desc.Text = description
    newSwitch.Visible = true
    newSwitch.Switch.MouseButton1Click:Connect(function()
        if enabled == true then
        ts:Create(newSwitch, TweenInfo.new(.2), {
            BackgroundColor3 = Color3.fromRGB(37, 40, 49)
        }):Play()
        ts:Create(newSwitch.Switch.ImageButton, TweenInfo.new(.2), {
            BackgroundColor3 = Color3.fromRGB(135, 139, 150)
        }):Play()
        ts:Create(newSwitch.Switch, TweenInfo.new(.2), {
            BackgroundColor3 = Color3.fromRGB(60, 65, 80)
        }):Play()
        ts:Create(newSwitch.Switch.ImageButton, TweenInfo.new(.2), {
            Position = UDim2.new(0.112, 0,0.5, 0)
        }):Play()

        ts:Create(newSwitch.Desc, TweenInfo.new(.2), {
            TextColor3 = Color3.fromRGB(102, 108, 125)
        }):Play()
        elseif enabled == false then
        ts:Create(newSwitch, TweenInfo.new(.2), {
            BackgroundColor3 = Color3.fromRGB(30, 50, 79)
        }):Play()
        ts:Create(newSwitch.Switch.ImageButton, TweenInfo.new(.2), {
            BackgroundColor3 = Color3.fromRGB(255,255,255)
        }):Play()
        ts:Create(newSwitch.Switch, TweenInfo.new(.2), {
            BackgroundColor3 = Color3.fromRGB(58, 138, 253)
        }):Play()
        ts:Create(newSwitch.Switch.ImageButton, TweenInfo.new(.2), {
            Position = UDim2.new(0.55, 0,0.5, 0)
        }):Play()

        ts:Create(newSwitch.Desc, TweenInfo.new(.2), {
            TextColor3 = Color3.fromRGB(125, 138, 175)
        }):Play()
        end
        enabled = not enabled
        newSwitch.Enabled.Value = enabled
        func(enabled, unpack(args))
        end)
    elseif enabled == true then
    local newSwitch = reserved.SettingSwitchOn:Clone()
    local args = {
        ...
    }
    newSwitch.Parent = script.Parent.Settings.Holder
    newSwitch.Visible = true
    newSwitch.Title.Text = title
    newSwitch.Desc.Text = description

    newSwitch.Switch.MouseButton1Click:Connect(function()
        if enabled == true then
        ts:Create(newSwitch, TweenInfo.new(.2), {
            BackgroundColor3 = Color3.fromRGB(37, 40, 49)
        }):Play()
        ts:Create(newSwitch.Switch.ImageButton, TweenInfo.new(.2), {
            BackgroundColor3 = Color3.fromRGB(135, 139, 150)
        }):Play()
        ts:Create(newSwitch.Switch, TweenInfo.new(.2), {
            BackgroundColor3 = Color3.fromRGB(60, 65, 80)
        }):Play()
        ts:Create(newSwitch.Switch.ImageButton, TweenInfo.new(.2), {
            Position = UDim2.new(0.46, 0,0.5, 0)
        }):Play()

        ts:Create(newSwitch.Desc, TweenInfo.new(.2), {
            TextColor3 = Color3.fromRGB(102, 108, 125)
        }):Play()
        elseif enabled == false then
        ts:Create(newSwitch, TweenInfo.new(.2), {
            BackgroundColor3 = Color3.fromRGB(30, 50, 79)
        }):Play()
        ts:Create(newSwitch.Switch.ImageButton, TweenInfo.new(.2), {
            BackgroundColor3 = Color3.fromRGB(255,255,255)
        }):Play()
        ts:Create(newSwitch.Switch, TweenInfo.new(.2), {
            BackgroundColor3 = Color3.fromRGB(58, 138, 253)
        }):Play()
        ts:Create(newSwitch.Switch.ImageButton, TweenInfo.new(.2), {
            Position = UDim2.new(0.888, 0,0.5, 0)
        }):Play()

        ts:Create(newSwitch.Desc, TweenInfo.new(.2), {
            TextColor3 = Color3.fromRGB(125, 138, 175)
        }):Play()
        end
        enabled = not enabled
        newSwitch.Enabled.Value = enabled
        func(enabled, unpack(args))
        end)
    end
    end

    function module.Settings:AddButton(title: string, description: string, func)
    local newButton = reserved.Button:Clone()
    newButton.Parent = script.Parent.Settings.Holder
    newButton.Visible = true
    newButton.Title.Text = title
    newButton.Desc.Text = description

    newButton.Button.MouseButton1Click:Connect(function()
        func()
        local color = ts:Create(newButton, TweenInfo.new(.13), {
            BackgroundColor3 = Color3.fromRGB(30, 50, 79)
        })
        color:Play()
        color.Completed:Wait()
        ts:Create(newButton, TweenInfo.new(.13), {
            BackgroundColor3 = Color3.fromRGB(37, 40, 49)
        }):Play()
        end)
    end

    function module.Settings:AddDropdown(title: string, description: string, defaulttext: string, options: SharedTable, func, ...)
    if #options > 3 then
    error("Please add 3 options (err: more than 3, expected 3)")
    elseif #options < 3 then
    error("Please add 3 options (err: below 3, expected 3)")
    end
    local newDropdown = reserved.SettingDropdown:Clone()
    local args = {
        ...
    }
    newDropdown.Visible = true
    newDropdown.Parent = script.Parent.Settings.Holder

    newDropdown.Title.Text = title
    newDropdown.Desc.Text = description
    newDropdown.Button.Title.Text = defaulttext

    local objLists = {}

    local function visible()
        for i, item in pairs(script.Parent.Settings.Holder:GetChildren()) do
            if not item:IsA("UIListLayout") and objLists[item.Title.Text] == true and item.Visible == false then
                    objLists[item.Title.Text] = false
                    item.Visible = true  
            end
        end
    end
    
    local function hide()
        for i, item in pairs(script.Parent.Settings.Holder:GetChildren()) do
            if not item:IsA("UIListLayout") then
                if item.AbsolutePosition.Y > newDropdown.AbsolutePosition.Y and item.Visible == true then
                    objLists[item.Title.Text] = true
                    item.Visible = false
                end
            end
        end
    end

    newDropdown.Button.MouseButton1Click:Connect(function()
        --close
        if newDropdown.Dropdown.Visible == true then
            visible()
            newDropdown.Dropdown.Visible = false
        elseif newDropdown.Dropdown.Visible == false then -- open
            hide()
            newDropdown.Dropdown.Visible = true

        end
    end)

    for i,v in ipairs(options) do
        
        if i == 1 then
            newDropdown.Dropdown.Option1.Title.Text = v
        elseif i == 2 then
            newDropdown.Dropdown.Option2.Title.Text = v
        elseif i == 3 then
            newDropdown.Dropdown.Option3.Title.Text = v
        end
    end

    newDropdown.Dropdown.Option1.MouseButton1Click:Connect(function()
        newDropdown.Dropdown.Option1.Checked.Visible = true
        newDropdown.Dropdown.Option2.Checked.Visible = false
        newDropdown.Dropdown.Option3.Checked.Visible = false
        newDropdown.Dropdown.Visible = false
        newDropdown.Button.Title.Text = newDropdown.Dropdown.Option1.Title.Text
        visible()
        func(newDropdown.Dropdown.Option1.Title.Text, unpack(args))
        end)
    newDropdown.Dropdown.Option2.MouseButton1Click:Connect(function()
        newDropdown.Dropdown.Option1.Checked.Visible = false
        newDropdown.Dropdown.Option2.Checked.Visible = true
        newDropdown.Dropdown.Option3.Checked.Visible = false
        newDropdown.Dropdown.Visible = false
        newDropdown.Button.Title.Text = newDropdown.Dropdown.Option2.Title.Text
        visible()
        func(newDropdown.Dropdown.Option2.Title.Text, unpack(args))
        end)

    newDropdown.Dropdown.Option3.MouseButton1Click:Connect(function()
        newDropdown.Dropdown.Option1.Checked.Visible = false
        newDropdown.Dropdown.Option2.Checked.Visible = false
        newDropdown.Dropdown.Option3.Checked.Visible = true
        newDropdown.Dropdown.Visible = false
        newDropdown.Button.Title.Text = newDropdown.Dropdown.Option3.Title.Text
        visible()
        func(newDropdown.Dropdown.Option3.Title.Text, unpack(args))
        end)
    end

    function module.Settings:AddTextbox(title: string, description: string, func, ...)
    local newTextbox = reserved.SettingTextbox:Clone()
    local args = {
        ...
    }

    newTextbox.Title.Text = title
    newTextbox.Desc.Text = description

    newTextbox.Visible = true
    newTextbox.Parent = script.Parent.Settings.Holder

    newTextbox.InputText.FocusLost:Connect(function()
        func(newTextbox.InputText.Text, unpack(args))
        end)
    end

    function module.ScriptSearch:OpenPopup()
    script.Parent.Scripthub.Popup.Visible = true
    script.Parent.Scripthub.DarkOverlay.Visible = true
    script.Parent.Scripthub.DarkOverlay.Transparency = 1
    if isTween.Value == true then
    script.Parent.Scripthub.Popup.Position = UDim2.new(0.5, 0,1.58, 0)
    ts:Create(script.Parent.Scripthub.Popup, TweenInfo.new(.2), {
        Position = UDim2.new(0.5, 0,0.5, 0)
    }):Play()
    end
    ts:Create(script.Parent.Scripthub.DarkOverlay, TweenInfo.new(.15), {
        Transparency = 0.5
    }):Play()
    end
    local Script = ''
    function module.ScriptSearch:Add(title: string, description: string, source: string, image, isverified: boolean, views)
    local newSc = script.Parent.Scripthub.Holder.Reserved.OldThumbnail:Clone()
    newSc.Parent = script.Parent.Scripthub.Holder
    newSc.Visible = true
    newSc.Overlay.Title.Title.Text = title
    newSc.Overlay.Title.Paragraph.Text = description
    newSc.Image = image
    newSc.Overlay.Title.Verified.Visible = isverified

    newSc.Overlay.Views.Title.Text = tostring(views).." Views"


    newSc.MouseButton1Click:Connect(function()
        module.ScriptSearch:OpenPopup()
        Script = source
        Title = title
        end)
    end

    function module:GetSelectedScript()
    return Script
    end
    function module:GetSelectedScriptTitle()
    return Title
    end

    function module:GoToExecutor()
    for i,v in pairs(script.Parent:GetChildren()) do
    if v:IsA("Frame") then
    if v:FindFirstChild("Marker") then
    if v.Marker.Value == "Menu" then
    v.Visible = false
    end
    end
    end
    end
    script.Parent.Executor.Visible = true
    script.Parent.Executor.Position = UDim2.new(0.4824247360229492, 0, 0.524213433265686, 0)
    end


--local _rpos = script.Parent.Home.Popup.Position

    function module.SavedScripts:OpenPopup()
    script.Parent.Home.Popup.Visible = true
    script.Parent.Home.DarkOverlay.Visible = true
    script.Parent.Home.DarkOverlay.Transparency = 1
    if isTween.Value == true then
    script.Parent.Home.Popup.Position = UDim2.new(0.5, 0,1.58, 0)
    ts:Create(script.Parent.Home.Popup, TweenInfo.new(.2), {
        Position = UDim2.new(0.5, 0,0.5, 0)
    }):Play()
    end
    ts:Create(script.Parent.Home.DarkOverlay, TweenInfo.new(.15), {
        Transparency = 0.5
    }):Play()
    end

    function module.SavedScripts:Add(title: string, source: string, tag: string)
    local newscript = reserved.Script:Clone()
    newscript.Visible = true
    newscript.Parent = script.Parent.Home.Holder
    newscript.Title.Text = title
    if type(tag) == "string" then
    newscript.Frame.Title.Text = tag
    if tag == "Built-In" then
    newscript.LayoutOrder = 999999999
    end

    else
        newscript.Frame.Visible = false

    end



    newscript.Button.MouseButton1Click:Connect(function()
        executescript(source)
        end)

        newscript.Button1.MouseButton1Click:Connect(function()
            newscript:Destroy()
            if isfile("d_android_script_dir/"..title) then
                delfile("d_android_script_dir/"..title)
            end
        end)
    end
    return module;

    end;
};
-- StarterGui.Delta.KeySystem.LocalScript
local function C_21()
local script = DELTA["21"];
local buttons = script.Parent.Holder
local KeyInput = buttons.Input.TextBox.Input
local tweenserv = game:GetService("TweenService")
local istween = script.Parent.Parent.IsTween

repeat

until game:IsLoaded()
getgenv().StartUp = function()


script.Parent.Visible = true
local twinfo = TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
if istween.Value == true then
script.Parent.Position = UDim2.new(1.3, 0, 0.5 ,0)
local tween = tweenserv:Create(script.Parent, twinfo, {
    Position = UDim2.new(1, 0,.5, 0)})
tween:Play()
end
--tween.Completed:Wait()

end
StartUp()

getgenv().is_unlocked = false

getgenv().GrantAccess = function()
    getgenv().rLib:End()
    DELTA["Ui"].Enabled = false
    if(not isfile("is_versx_beta")) then
		writefile("is_versx_beta", "true")
		wait()
	end
    getgenv().is_unlocked = true
    if istween.Value == true then
        -- tween closing key sys
        local twinfo = TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
        local tween = tweenserv:Create(script.Parent, twinfo, {Position = UDim2.new(1.3, 0, 0.5 ,0)})
        tween:Play()
        tween.Completed:Wait()
        script.Parent.Visible = false
        task.wait(.1)
        -- tween open main menu
        script.Parent.Parent.Sidebar.Position = UDim2.new(1.078, 0,0.474, 0)
        script.Parent.Parent.Sidebar.Visible = true
        local twinfo2 = TweenInfo.new(.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
        local tween2 = tweenserv:Create(script.Parent.Parent.Sidebar, twinfo2, {Position = UDim2.new(1, 0,0.474, 0)})
        tween2:Play()
    else
        script.Parent.Visible = false
        script.Parent.Parent.Sidebar.Visible = true
    end

    if(not isfile("disableautoexec")) then
        runautoexec()
    end
end
local visiblelists = {}
visiblelists.Home = false
visiblelists.Executor = false
visiblelists.Scripthub = false
visiblelists.Settings = false
visiblelists.Console = false

function OpenDelta()
    for i,v in pairs(script.Parent.Parent:GetChildren()) do
        if v:FindFirstChild("Marker") then
            if v.Marker.Value == "Menu" then
                v.Visible = visiblelists[v.Name]
            end
        end
    end

    script.Parent.Parent.Sidebar.Position = UDim2.new(1.078, 0,0.474, 0)
    script.Parent.Parent.Sidebar.Visible = true
    local twinfo = TweenInfo.new(.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
    local tweenMenu = tweenserv:Create(script.Parent.Parent.Sidebar, twinfo, {Position = UDim2.new(1, 0,0.474, 0)})
    
    script.Parent.Parent.DarkOverlay.Transparency = 1
    script.Parent.Parent.DarkOverlay.Visible = true
    local tweenBg = tweenserv:Create(script.Parent.Parent.DarkOverlay, TweenInfo.new(.25), {Transparency = .5})

    tweenMenu:Play()
    tweenBg:Play()
end

function CloseDelta()

    for i,v in pairs(script.Parent.Parent:GetChildren()) do
        if v:FindFirstChild("Marker") then
            if v.Marker.Value == "Menu" then
                visiblelists[v.Name] = v.Visible
                v.Visible = false
            end
        end
    end

    script.Parent.Parent.Sidebar.Position = UDim2.new(1, 0,0.474, 0)
    script.Parent.Parent.Sidebar.Visible = true
    local twinfo = TweenInfo.new(.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
    local tweenMenu = tweenserv:Create(script.Parent.Parent.Sidebar, twinfo, {Position = UDim2.new(1.078, 0,0.474, 0)})
    
    script.Parent.Parent.DarkOverlay.Transparency = .5
    script.Parent.Parent.DarkOverlay.Visible = true
    local tweenBg = tweenserv:Create(script.Parent.Parent.DarkOverlay, TweenInfo.new(.25), {Transparency = 1})

    tweenMenu:Play()
    tweenBg:Play()
    tweenBg.Completed:Wait()
    DELTA["Ui"].Enabled = true
end

-- Discord
buttons.Button2.MouseButton1Click:Connect(function()
    setclipboard("https://discord.gg/Wu9tFvVFaB")
    end)





if gethui():FindFirstChild("DeltaGui") then
    gethui():FindFirstChild("DeltaGui"):Destroy()
end



local AccountId = 8;


function GetLink()
    return string.format("https://gateway.platoboost.com/a/%i?id=%i", AccountId, game:GetService("Players").LocalPlayer.UserId);
end

local rateLimit = false;
local rateLimitCountdown = 0;
local errorWait = false;

function Verify()
    local key = KeyInput.Text;

    if errorWait or rateLimit then 
        return false
    end;

    DELTA["18"]["Text"] = "Checking key...";

    local response = request({
        Url = "https://api1.platoboost.com/v1/public/whitelist/8/" .. game:GetService("Players").LocalPlayer.UserId,
        Method = "GET"
    })

    if response.StatusCode == 200 then
        if string.find(response.Body, "true") then
            DELTA["18"]["Text"] = "Successfully whitelisted key!";
            return true
        else
            if (#key > 0) then
                local redeemResponse = request({
                    Url = "https://api1.platoboost.com/v1/authenticators/redeem/8/" .. game:GetService("Players").LocalPlayer.UserId .. "/" .. key,
                    Method = "POST"
                });

                if redeemResponse.StatusCode == 200 then
                    if string.find(redeemResponse.Body, "true") then
                        DELTA["18"]["Text"] = "Successfully redeemed key!";
                        return true
                    end
                end           
            end
            DELTA["18"]["Text"] = "Invalid key detected, please try again!";
            return false
        end
    elseif response.StatusCode == 204 then
		DELTA["18"]["Text"] = "Invalid key detected, please try again!";
        return false;
    elseif response.StatusCode == 429 then
        if not rateLimit then 
            rateLimit = true
            rateLimitCountdown = 10
            task.spawn(function() 
                --cloudflare limits for 10seconds.
                while rateLimit do
                    DELTA["18"]["Text"] = "You are being rate-limited, please slow down. Try again in " .. rateLimitCountdown .. " seconds.";
                    wait(1)
                    rateLimitCountdown = rateLimitCountdown - 1;
                    
                    if rateLimitCountdown < 0 then
                        rateLimit = false;
                        rateLimitCountdown = 0;
                        DELTA["18"]["Text"] = "Rate limit is over, please try again.";
                    end
                end
            end) 
        end
    elseif response.StatusCode == 500 then
        errorWait = true
        task.spawn(function() 
            DELTA["18"]["Text"] = "An error has occured in the server, please wait 3 seconds and try again.";
            wait(3) 
            errorWait = false 
        end)
    end
end



-- Continue
buttons.Buttons.Button1.MouseButton1Click:Connect(function()
    local key = KeyInput.Text
    
    
    -- whitelist test
    if key == "WHITELIST" then
        whitelist()
    elseif string.find(key, "BOOST") then
        boost_whitelist()
    end

    if Verify() then
        GrantAccess()
    end
end)


-- Get Key
buttons.Buttons.Button2.MouseButton1Click:Connect(function()
    setclipboard(GetLink())
    buttons.Buttons.Button2.Input.Text = "Copied Link"
    end)

-- Close
script.Parent.ImageButton.MouseButton1Click:Connect(function()
    gethui().Delta.Enabled = false
    end)
end;
task.spawn(C_21);

local function C_39()
local script = DELTA["39"]
local buttons = script.Parent
local inactivecolor = buttons.InactiveColor
local activecolor = buttons.ActiveColor
local ts = game.TweenService
local isTween = script.Parent.Parent.IsTween

for i, v in pairs(buttons:GetChildren()) do
    if v:IsA("ImageButton") then
        if v.Name ~= "ToggleUI" then
            originalPos = script.Parent.Parent[v.Name].Position
        end
        v.MouseButton1Click:Connect(function()
            if v.Name == "ToggleUI" then
                
                CloseDelta()
            elseif v.Name ~= "ToggleUI" then
                for _, btns in pairs(buttons:GetChildren()) do
                    if btns:IsA("ImageButton") and btns.Name ~= "ToggleUI" then
                        if btns.Name ~= v.Name then
                            ts:Create(btns.ImageLabel, TweenInfo.new(.3), {
                                ImageColor3 = Color3.fromRGB(137, 144, 163)
                            }):Play()
                            ts:Create(btns, TweenInfo.new(.3), {
                                BackgroundColor3 = inactivecolor.Value
                            }):Play()
                            script.Parent.Parent[btns.Name].Visible = false
                            if isTween.Value == true then
                                ts:Create(script.Parent.Parent[btns.Name], TweenInfo.new(.3, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {
                                    Position = UDim2.new(.4, originalPos.X.Offset, originalPos.Y.Scale, originalPos.Y.Offset)
                                }):Play()
                            end
                        else
                            ts:Create(btns.ImageLabel, TweenInfo.new(.3), {
                                ImageColor3 = Color3.fromRGB(255, 255, 255)
                            }):Play()
                            ts:Create(btns, TweenInfo.new(.3), {
                                BackgroundColor3 = activecolor.Value
                            }):Play()
                            script.Parent.Parent[btns.Name].Visible = true
                            if isTween.Value == true then
                                script.Parent.Parent[btns.Name].Position = UDim2.new(.4, originalPos.X.Offset, originalPos.Y.Scale, originalPos.Y.Offset)
                                ts:Create(script.Parent.Parent[btns.Name], TweenInfo.new(.3, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {
                                    Position = originalPos
                                }):Play()
                            end
                        end
                    end
                end
            end
        end)
    end
end

end

task.spawn(C_39)



DELTA["DaIcon"].MouseButton1Click:Connect(function()
    if(getgenv().is_unlocked) then
        OpenDelta()
    end
    
    DELTA["1"].Enabled = true
    DELTA["Ui"].Enabled = false
end)

DELTA["1e"].MouseButton1Click:Connect(function()
    DELTA["1"].Enabled = false
    DELTA["Ui"].Enabled = true
end)


-- StarterGui.Delta.Scripthub.Holder.ScriptBloxHandler
local function C_50()
local script = DELTA["50"];
local textbox = script.Parent.Parent.Searchbar.Input

local uilib = require(script.Parent.Parent.Parent.UILibrary)

makefolder("ImageCache")


textbox.FocusLost:Connect(function()
    for i,v in pairs(script.Parent:GetChildren()) do
    if v:IsA("ImageButton") then
    v:Destroy()
    end
    end
--print"Searching"
    local KeyWordSearch = textbox.Text
    local url = "https://scriptblox.com/api/script/search?q="..string.gsub(KeyWordSearch, " ", "%%20")
    local response = game:HttpGetAsync(url)
    local http = game:GetService("HttpService")
    local decoded = http:JSONDecode(response)
    for _, script in pairs(decoded.result.scripts) do
    --print"found"
    if script.scriptType == "free" and script.isPatched == false then
    if (script.isUniversal == true) then
    local random = math.random(0, 10000)
    local randomname = "ImageCache/image"..tostring(random)..".png"
    pcall(function()
        --writefile(randomname, game:HttpGet("https://scriptblox.com" .. script.game.imageUrl))
        end)
    wait(0.1)

    if isfile(randomname) then
    uilib.ScriptSearch:Add(script.title, script.game.name, script.script, randomname, script.verified, script.views)

    else
        uilib.ScriptSearch:Add(script.title, script.game.name, script.script, "", script.verified, script.views)
    end
--print'yey'

    else
        uilib.ScriptSearch:Add(script.title, script.game.name, script.script, "https://assetgame.roblox.com/Game/Tools/ThumbnailAsset.ashx?aid="..script.game.gameId.."&fmt=png&wd=420&ht=420", script.verified, script.views)
--parint"gamur"
    end
    --print"oki"
    end
    end
    end)


end;
task.spawn(C_50);
-- StarterGui.Delta.Scripthub.Popup.Buttons.ButtonsHandler
local function C_69()
local script = DELTA["69"];

local lib = require(script.Parent.Parent.Parent.Parent.UILibrary)
local btns = script.Parent
btns.Parent.Parent.Visible = false
btns.Button1.MouseButton1Click:Connect(function()
    executescript(lib:GetSelectedScript())

    if(not isfile("preventautoclose")) then
        btns.Parent.Visible = false
        btns.Parent.Parent.DarkOverlay.Visible = false
    end

    end)
btns.Button2.MouseButton1Click:Connect(function()
    lib:GoToExecutor()
    lib:AddTab(lib:GetSelectedScriptTitle(), lib:GetSelectedScript())

    if(not isfile("preventautoclose")) then
        btns.Parent.Visible = false
        btns.Parent.Parent.DarkOverlay.Visible = false
    end

    end)
btns.Button3.MouseButton1Click:Connect(function()
    lib.SavedScripts:Add(lib:GetSelectedScriptTitle(), lib:GetSelectedScript())
    writefile("d_android_script_dir/" .. lib:GetSelectedScriptTitle(), lib:GetSelectedScript())
    
    if(not isfile("preventautoclose")) then
        btns.Parent.Visible = false
        btns.Parent.Parent.DarkOverlay.Visible = false
    end

    end)
btns.Button4.MouseButton1Click:Connect(function()
    setclipboard(lib:GetSelectedScript())

    if(not isfile("preventautoclose")) then
        btns.Parent.Visible = false
        btns.Parent.Parent.DarkOverlay.Visible = false
    end

    end)
btns.Parent.ImageButton.MouseButton1Click:Connect(function()
    btns.Parent.Visible = false
    btns.Parent.Parent.DarkOverlay.Visible = false
    end)
end;
task.spawn(C_69);
-- StarterGui.Delta.Settings.Searchbar.SettingsSearchHandler
local function C_74()
local script = DELTA["74"];
local textbox = script.Parent.Input
textbox:GetPropertyChangedSignal("Text"):Connect(function()
    local matched = textbox.Text
    if matched ~= '' then
    for _,v in pairs(script.Parent.Parent.Holder:GetChildren()) do
    if v:IsA("Frame") then
    if v:FindFirstChild("Title") and v:FindFirstChild("Desc") then
    if string.find(string.lower(v.Title.Text), string.lower(matched)) or string.find(string.lower(v.Desc.Text), string.lower(matched)) then
    v.Visible = true
    else
        v.Visible = false
    end
    end
    end
    end
    else
        for _,v in pairs(script.Parent.Parent.Holder:GetChildren()) do
    if v:IsA("Frame") then
    v.Visible = true
    end
    end
    end
    end)
end;
task.spawn(C_74);
-- StarterGui.Delta.Settings.Sort.SettingsFilterHandler
local function C_81()
local script = DELTA["81"];
local btns = script.Parent
local reserved = script.Parent.Parent.Parent.Executor.Executor.Overlay.Reserved
local ts = game:GetService("TweenService")

btns.All.MouseButton1Click:Connect(function()
    ts:Create(btns.Disabled, TweenInfo.new(.15), {
        BackgroundTransparency = 1
    }):Play()
    ts:Create(btns.Enabled, TweenInfo.new(.15), {
        BackgroundTransparency = 1
    }):Play()
    ts:Create(btns.All, TweenInfo.new(.15), {
        BackgroundTransparency = 0
    }):Play()
    for i,v in pairs(btns.Parent.Holder:GetChildren()) do
    if v:IsA("Frame") then
    v.Visible = true
    end
    end
    end)
btns.Enabled.MouseButton1Click:Connect(function()
    ts:Create(btns.Disabled, TweenInfo.new(.15), {
        BackgroundTransparency = 1
    }):Play()
    ts:Create(btns.Enabled, TweenInfo.new(.15), {
        BackgroundTransparency = 0
    }):Play()
    ts:Create(btns.All, TweenInfo.new(.15), {
        BackgroundTransparency = 1
    }):Play()
    for i,v in pairs(btns.Parent.Holder:GetChildren()) do
    if v:IsA("Frame") then
    if v:FindFirstChild("Enabled") then
    if v.Enabled.value == true then
    v.Visible = true
    else
        v.Visible = false
    end
    else
        v.Visible = false
    end
    end
    end
    end)
btns.Disabled.MouseButton1Click:Connect(function()
    ts:Create(btns.Disabled, TweenInfo.new(.15), {
        BackgroundTransparency = 0
    }):Play()
    ts:Create(btns.Enabled, TweenInfo.new(.15), {
        BackgroundTransparency = 1
    }):Play()
    ts:Create(btns.All, TweenInfo.new(.15), {
        BackgroundTransparency = 1
    }):Play()
    for i,v in pairs(btns.Parent.Holder:GetChildren()) do
    if v:IsA("Frame") then
    if v:FindFirstChild("Enabled") then
    if v.Enabled.value == false then
    v.Visible = true
    else
        v.Visible = false
    end
    else
        v.Visible = false
    end
    end
    end
    end)
end;
task.spawn(C_81);
-- StarterGui.Delta.Executor.Executor.Overlay.Menu.LocalScript
local function C_a2()
local script = DELTA["a2"];
local btns = script.Parent.Dropdown

btns.Option1.MouseButton1Click:Connect(function()
    btns.Option1.Checked.Visible = true
    btns.Option2.Checked.Visible = false
    btns.Option3.Checked.Visible = false
    btns.Visible = false
    --print"Default"
    end)
btns.Option2.MouseButton1Click:Connect(function()
    btns.Option1.Checked.Visible = false
    btns.Option2.Checked.Visible = true
    btns.Option3.Checked.Visible = false
    btns.Visible = false
    --print"Light"
    end)
btns.Option3.MouseButton1Click:Connect(function()
    btns.Option1.Checked.Visible = false
    btns.Option2.Checked.Visible = false
    btns.Option3.Checked.Visible = true
    btns.Visible = false
    --print"Amoled"
    end)

script.Parent.MouseButton1Click:Connect(function()
    if btns.Visible == true then
    btns.Visible = false
    elseif btns.Visible == false then
    btns.Visible = true
    end
    end)
end;
task.spawn(C_a2);
-- StarterGui.Delta.Executor.Executor.Overlay.Buttons.ButtonHandlers
local function C_b2()
local script = DELTA["b2"];
local btns = script.Parent

local function getsize()
for i,v in pairs(script.Parent.Parent.Code:GetChildren()) do
if v:IsA("TextBox") then
return v.TextSize
end
end
end
--[[btns.Button3.Text = tostring(getsize())
	btns.Button3.FocusLost:Connect(function()
		for i,v in pairs(script.Parent.Parent.Code:GetChildren()) do
			if v:IsA("TextBox") then
				v.TextSize = tonumber(script.Parent.Text)
			end
		end
	end)]]
btns.Execute.MouseButton1Click:Connect(function()
    for i,v in pairs(btns.Parent.Code:GetChildren()) do
    if v:IsA("TextBox") then
    if v.Visible == true then
    executescript(v.Text)
    end
    end
    end
    end)

btns.Clear.MouseButton1Click:Connect(function()
    for i,v in pairs(btns.Parent.Code:GetChildren()) do
    if v:IsA("TextBox") then
    if v.Visible == true then
    v.Text = ""
    end
    end
    end
    end)
btns.ExecuteClipboard.MouseButton1Click:Connect(function()
    executeclipboard()
    end)
end;
task.spawn(C_b2);
-- StarterGui.Delta.Executor.Executor.Overlay.Tabs.AddTab.LocalScript
local function C_bd()
local script = DELTA["bd"];
local module = require(script.Parent.Parent.Parent.Parent.Parent.Parent.UILibrary)
script.Parent.MouseButton1Click:Connect(function()
    module:AddTab()
    end)
end;
task.spawn(C_bd);
-- StarterGui.Delta.Executor.Sidemenu.Script.ScriptSuggestionHandler
local function C_122()
local script = DELTA["122"];
local ScriptSuggestion = script.Parent
local uilib = require(script.Parent.Parent.Parent.Parent.UILibrary)
getgenv().is_iy = false


ScriptSuggestion.Overlay.Holder.Showcase.MouseButton1Click:Connect(function()
    print("showcase clicked")
    loadstring(game:HttpGet("https://gist.githubusercontent.com/lxnnydev/c533c374ca4c1dcef4e1e10e33fa4a0c/raw/03e74f184f801dad77d3ebe1e2f18c6ac87ca612/delta___IY.gistfile1.txt.lua",true))()

    end)
end;
task.spawn(C_122);
-- StarterGui.Delta.Executor.Sidemenu.Network.NetworkStatsHandler
local function C_131()
local script = DELTA["131"];
local Network = script.Parent
local localplr = game:GetService("Players").LocalPlayer

-- Get players in real-time
local function GetPlrs()
return #game.Players:GetPlayers()
end
local function SetTextForPlr()
Network.Overlay.Holder.Information.Players.Text = "<font color=\"#4FA4F2\">" .. tostring(GetPlrs()) .. "</font> players"
end
SetTextForPlr()

game.Players.PlayerAdded:Connect(function()
    SetTextForPlr()
    end)
game.Players.PlayerAdded:Connect(function()
    SetTextForPlr()
    end)

-- Get Real time ping
local function GetPing()
return localplr:GetNetworkPing()
end


local RunService = game:GetService("RunService")
local FpsLabel = Network.Overlay.Holder.Information.Memory
local TimeFunction = RunService:IsRunning() and time or os.clock

local LastIteration, Start
local FrameUpdateTable = {}

local function HeartbeatUpdate()
    LastIteration = TimeFunction()
    for Index = #FrameUpdateTable, 1, -1 do
        FrameUpdateTable[Index + 1] = FrameUpdateTable[Index] >= LastIteration - 1 and FrameUpdateTable[Index] or nil
    end

    FrameUpdateTable[1] = LastIteration

    local elapsedTime = TimeFunction() - Start
    local updateInterval = 1 -- Update interval in seconds (e.g., 0.5 or 1)
    if elapsedTime >= updateInterval then
        FpsLabel.Text = "<font color=\"#4FA4F2\">"..tostring(math.floor(#FrameUpdateTable / elapsedTime)) .. "</font> FPS"
        Start = TimeFunction()
    end
end

Start = TimeFunction()
RunService.Heartbeat:Connect(HeartbeatUpdate)



end;
task.spawn(C_131);
-- StarterGui.Delta.Console.RobloxConsole.Searchbar.LocalScript
local function C_177()
local script = DELTA["177"];
script.Parent:GetPropertyChangedSignal("Text"):Connect(function()
    if script.Parent.Text ~= '' then
    for i, v in pairs(script.Parent.Parent.Console.ScrollingFrame.Header:GetChildren()) do
    if v:IsA("Frame") then
    local lowered = string.lower(v.Content.Text)
    local lowered1 = string.lower(script.Parent.Text)

    local matched = string.find(lowered, lowered1)
    if matched then
    v.Visible = true
    else
        v.Visible = false
    end
    end
    end
    else
        for i, v in pairs(script.Parent.Parent.Console.ScrollingFrame.Header:GetChildren()) do
    if v:IsA("Frame") then
    v.Visible = true
    end
    end
    end
    end)

end;
task.spawn(C_177);
-- StarterGui.Delta.Console.RobloxConsole.LocalScript
local function C_178()
if not isfile("useconsole") then
    return -- This will exit the script
end

local script = DELTA["178"];
local logserv = game:GetService("LogService")
local elements = script.Parent.Parent.ConsoleElements

local function GetTotalOutputs()
local total = 0
for i,_ in pairs(script.Parent.Console.ScrollingFrame.Header:GetChildren()) do
if _:IsA("Frame") then
total += 1
end
end
return total
end

logserv.MessageOut:Connect(function(output, OutputType)
    if OutputType == Enum.MessageType.MessageOutput then
    local msg = elements.Output:Clone()
    msg.Parent = script.Parent.Console.ScrollingFrame.Header
    msg.Name = tostring(GetTotalOutputs())..msg.Name
    msg.Visible = true
    msg.Content.Text = output

    elseif OutputType == Enum.MessageType.MessageError then
    local msg = elements.Error:Clone()
    msg.Parent = script.Parent.Console.ScrollingFrame.Header
    msg.Name = tostring(GetTotalOutputs())..msg.Name
    msg.Visible = true
    msg.Content.Text = output
    elseif OutputType == Enum.MessageType.MessageWarning then
    local msg = elements.Warn:Clone()
    msg.Parent = script.Parent.Console.ScrollingFrame.Header
    msg.Name = tostring(GetTotalOutputs())..msg.Name
    msg.Visible = true
    msg.Content.Text = output
    elseif OutputType == Enum.MessageType.MessageInfo then
    local msg = elements.Info:Clone()
    msg.Parent = script.Parent.Console.ScrollingFrame.Header
    msg.Name = tostring(GetTotalOutputs())..msg.Name
    msg.Visible = true
    msg.Content.Text = output
    end
    end)
script.Parent.Buttons.Clear.MouseButton1Click:Connect(function()
    for i,v in pairs(script.Parent.Console.ScrollingFrame.Header:GetChildren()) do
    if v:IsA("Frame") then
    v:Destroy()
    end
    end
    end)
end;
task.spawn(C_178);
-- StarterGui.Delta.Console.RConsole.Searchbar.LocalScript
local function C_19a()
local script = DELTA["19a"];
script.Parent:GetPropertyChangedSignal("Text"):Connect(function()
    if script.Parent.Text ~= '' then
    for i, v in pairs(script.Parent.Parent.Console.ScrollingFrame.Header:GetChildren()) do
    if v:IsA("Frame") then
    local lowered = string.lower(v.Content.Text)
    local lowered1 = string.lower(script.Parent.Text)

    local matched = string.find(lowered, lowered1)
    if matched then
    v.Visible = true
    else
        v.Visible = false
    end
    end
    end
    else
        for i, v in pairs(script.Parent.Parent.Console.ScrollingFrame.Header:GetChildren()) do
    if v:IsA("Frame") then
    v.Visible = true
    end
    end
    end
    end)

end;
task.spawn(C_19a);
-- StarterGui.Delta.Console.RConsole.LocalScript
local function C_19b()
local script = DELTA["19b"];
local elements = script.Parent.Parent.ConsoleElements
local lib = require(script.Parent.Parent.Parent.UILibrary)

local function rprint(text: string)
local msg = elements.Output:Clone()
msg.Parent = script.Parent.Console.ScrollingFrame.Header
msg.Visible = true
msg.Content.Text = text
end
local function rerror(text: string)
local msg = elements.Error:Clone()
msg.Parent = script.Parent.Console.ScrollingFrame.Header
msg.Visible = true
msg.Content.Text = text
end
local function rwarn(text: string)
local msg = elements.Warn:Clone()
msg.Parent = script.Parent.Console.ScrollingFrame.Header
msg.Visible = true
msg.Content.Text = text
end
local function rinfo(text: string)
local msg = elements.Info:Clone()
msg.Parent = script.Parent.Console.ScrollingFrame.Header
msg.Visible = true
msg.Content.Text = text
end
local function rinput()
local msg = elements.Input:Clone()
msg.Parent = script.Parent.Console.ScrollingFrame.Header
msg.Visible = true
msg.Content:CaptureFocus()
lib.Console:GoToConsole()
msg.Content.FocusLost:Wait()
msg.Content.TextEditable = false
return msg.Content.Text
end
--[[
	local msg = elements.Info:Clone()
	msg.Parent = script.Parent.Console.ScrollingFrame.Header
	msg.Visible = true
	msg.Content.Text = output
	]]



-- Expose the function as global env
getgenv().rconsoleprint = rprint
getgenv().rconsoleerror = rerror
getgenv().rconsolewarn = rwarn
getgenv().rconsoleinfo = rinfo

getgenv().consoleprint = rprint
getgenv().consoleerror = rerror
getgenv().consolewarn = rwarn
getgenv().consoleinfo = rinfo

getgenv().rconsoleinput = rinput
getgenv().consoleinput = rinput

getgenv().rconsoleclear = function()
for i,v in pairs(script.Parent.Console.ScrollingFrame.Header:GetChildren()) do
if v:IsA("Frame") then
v:Destroy()
end

end
end
getgenv().consoleclear = function()
for i,v in pairs(script.Parent.Console.ScrollingFrame.Header:GetChildren()) do
if v:IsA("Frame") then
v:Destroy()
end

end
end
end;
task.spawn(C_19b);
-- StarterGui.Delta.MainScript
local function C_19c()
local script = DELTA["19c"];

----------------------------- Startup Configs (not important to change.) -----------------------------
local ts = game:GetService("TweenService")
local isTween = script.Parent.IsTween
--repeat until game:IsLoaded()
script.Parent.Home.Holder.Script:Destroy()

script.Parent.Scripthub.Popup.Visible = false
script.Parent.Scripthub.DarkOverlay.Visible = true
script.Parent.Scripthub.DarkOverlay.Transparency = 1
local UILib = require(script.Parent.UILibrary)


-- Actual Init stuffs

game.Players.LocalPlayer.Chatted:Connect(function(msg)
    if msg:match("/e sd") then
        
        if DELTA["1"].Enabled == true then
            DELTA["1"].Enabled = false
        elseif DELTA["Ui"] == true then
            DELTA["Ui"].Enabled = false
        end
    elseif msg:match("/e hd") then
        DELTA["1"].Enabled = false
    end
end)


---------------------------- Built-In configs ----------------------------
pcall(function() makefolder("DeltaConfigs") end)

UILib:AddTab()
UILib.Settings:AddSwitch("Auto Execute", "Toggle auto-execution of scripts in the autoexec folder", not isfile("disableautoexec"), function(state)

    if(state) then
        if(isfile("disableautoexec")) then
            delfile("disableautoexec")
        end
    else
        writefile("disableautoexec", "hi")
    end

end)

UILib.Settings:AddSwitch("Auto Close", "Toggle X button requirement to close popups", not isfile("preventautoclose"), function(state)

    if(state) then
        if(isfile("preventautoclose")) then
            delfile("preventautoclose")
        end
    else
        writefile("preventautoclose", "hi")
    end

end)

UILib.Settings:AddSwitch("Syn Env", "Uses Synapse X' naming standard", isfile("uses_syn"), function(state)

    if(state) then
        writefile("uses_syn", "hi")
        getgenv().syn = syn_backup
        
    else
        if(isfile("uses_syn")) then
            delfile("uses_syn")
            getgenv().syn = nil
        end
    end

end)

UILib.Settings:AddSwitch("Console", "Toggle roblox console logs in the GUI", isfile("useconsole"), function(state)

    if(state) then
        if(isfile("useconsole")) then
            delfile("useconsole")
        end
    else
        writefile("useconsole", "hi")
    end

end)

UILib.Settings:AddDropdown("FPS Cap", "Change the FPS cap for a smoother experience", "60 FPS", {"60 FPS", "120 FPS", "Max FPS"}, function(selection)
		if selection == "60 FPS" then
			setfpscap(60)
		elseif selection == "120 FPS" then
			setfpscap(120)
		elseif selection == "Max FPS" then
			setfpscap(getfpsmax())
		end
	end)

UILib.Settings:AddDropdown("Icon Size", "Change the floating Icon's size", readfile("iconsize"), {"Medium", "Small", "Large"}, function(selection)
		if selection == "Small" then
			DELTA["DaIcon"].Size = UDim2.new(0,30,0,30)
            writefile("iconsize", "Small")
		elseif selection == "Medium" then
			DELTA["DaIcon"].Size = UDim2.new(0,45,0,45)
            writefile("iconsize", "Medium")
		elseif selection == "Large" then
			DELTA["DaIcon"].Size = UDim2.new(0,60,0,60)
            writefile("iconsize", "Large")
		end
	end)

UILib.Settings:AddDropdown("Icon Shape", "Change the floating Icon's shape", readfile("iconshape"), {"Squircle", "Circle", "Square"}, function(selection)
		if selection == "Squircle" then
			DELTA["das"]["CornerRadius"] = UDim.new(0.20000000298023224, 0);
            writefile("iconshape", "Squircle")
		elseif selection == "Circle" then
			DELTA["das"]["CornerRadius"] = UDim.new(0.50000000298023224, 0);
            writefile("iconshape", "Circle")
		elseif selection == "Square" then
			DELTA["das"]["CornerRadius"] = UDim.new(0, 0);
            writefile("iconshape", "Square")
		end
	end)

UILib.Settings:AddDropdown("Icon Color", "Change the floating Icon's color", readfile("iconcolor"), {"Blue", "Green", "Purple"}, function(selection)
		if selection == "Blue" then
            DELTA["daStroke"].Color = Color3.fromRGB(65, 169, 255)
            writefile("iconcolor", "Blue")
		elseif selection == "Green" then
            DELTA["daStroke"].Color = Color3.fromRGB(55, 219, 69)
            writefile("iconcolor", "Green")
		elseif selection == "Purple" then
            DELTA["daStroke"].Color = Color3.fromRGB(125, 65, 255)
            writefile("iconcolor", "Purple")
		end
	end)

UILib.Settings:AddButton("Join Discord", "Copies our discord invite", function()
        setclipboard("https://discord.gg/deltaexploits")
        end)  

UILib.Settings:AddButton("Rejoin", "Rejoins your current server", function()
    game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
    end)  

    UILib.Settings:AddButton("Small Server", "Joins a server with a low playercount", function()
        local Http = game:GetService("HttpService")
local TPS = game:GetService("TeleportService")
local Api = "https://games.roblox.com/v1/games/"

local _place = game.PlaceId
local _servers = Api.._place.."/servers/Public?sortOrder=Asc&limit=100"
function ListServers(cursor)
   local Raw = game:HttpGet(_servers .. ((cursor and "&cursor="..cursor) or ""))
   return Http:JSONDecode(Raw)
end

local Server, Next; repeat
   local Servers = ListServers(Next)
   Server = Servers.data[1]
   Next = Servers.nextPageCursor
until Server

TPS:TeleportToPlaceInstance(_place,Server.id,game.Players.LocalPlayer)
        end)  

UILib.Settings:AddButton("Serverhop", "Teleport to a new server", function()
    local PlaceID = game.PlaceId
local AllIDs = {}
local foundAnything = ""
local actualHour = os.date("!*t").hour
local Deleted = false
local File = pcall(function()
    AllIDs = game:GetService('HttpService'):JSONDecode(readfile("NotSameServers.json"))
end)
if not File then
    table.insert(AllIDs, actualHour)
    writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
end
function TPReturner()
    local Site;
    if foundAnything == "" then
        Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
    else
        Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
    end
    local ID = ""
    if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
        foundAnything = Site.nextPageCursor
    end
    local num = 0;
    for i,v in pairs(Site.data) do
        local Possible = true
        ID = tostring(v.id)
        if tonumber(v.maxPlayers) > tonumber(v.playing) then
            for _,Existing in pairs(AllIDs) do
                if num ~= 0 then
                    if ID == tostring(Existing) then
                        Possible = false
                    end
                else
                    if tonumber(actualHour) ~= tonumber(Existing) then
                        local delFile = pcall(function()
                            delfile("NotSameServers.json")
                            AllIDs = {}
                            table.insert(AllIDs, actualHour)
                        end)
                    end
                end
                num = num + 1
            end
            if Possible == true then
                table.insert(AllIDs, ID)
                wait()
                pcall(function()
                    writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
                    wait()
                    game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
                end)
                wait(4)
            end
        end
    end
end

function Teleport()
    while wait() do
        pcall(function()
            TPReturner()
            if foundAnything ~= "" then
                TPReturner()
            end
        end)
    end
end

-- If you'd like to use a script before server hopping (Like a Automatic Chest collector you can put the Teleport() after it collected everything.
Teleport()
    end)

-- Built-In scripts
UILib.SavedScripts:Add("Keyboard", "loadstring(game:HttpGet('https://raw.githubusercontent.com/AZYsGithub/Delta-Scripts/main/MobileKeyboard.txt'))()","Built-In")
UILib.SavedScripts:Add("HoHo Hub", "loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_UI'))()","No Key")


-- Get all scripts and load em' (make sure Built-In scripts first otherwise Built-In scripts gonna under thr saved scripts) --nvm this shit
for _,file in ipairs(listfiles("d_android_script_dir")) do
UILib.SavedScripts:Add(file:sub(22, #file), readfile(file))
end



------------------------ Expose the modules as global env for plugins. -----------------------------------------getgenv().delta = {}

getgenv().delta = {}

function delta:AddTab(a,b)
    UILib:AddTab(a,b)
end

function delta:SetCurrentSuggestionScript(a,b)
    UILib:SetCurrentSuggestionScript(a,b)
end

delta.SavedScripts = {}

function delta:SaveScript(a,b,c)
    UILib.SavedScripts:Add(a,b,c)
end

delta.Settings = {}

function delta.Settings:AddButton(a,b,c)
    UILib.Settings:AddButton(a,b,c)
end

function delta.Settings:AddSwitch(a,b,c,d)
    UILib.Settings:AddSwitch(a,b,c,d)
end

function delta.Settings:AddInput(a,b,c)
    UILib.Settings:AddTextbox(a,b,c)
end

function delta.Settings:AddDropdown(a,b,c,d)
    UILib.Settings:AddDropdown(a,b,c,d)
end

makefolder("DeltaPlugins")
for _,file in pairs(listfiles("DeltaPlugins")) do
    loadstring(readfile(file))()
end

-------------------------------------------------------------------------
-- Home: Popup Handler
script.Parent.Home.Popup.Visible = false
script.Parent.Home.DarkOverlay.Visible = false

script.Parent.Home.Popup.Close.MouseButton1Click:Connect(function()
    if isTween.Value == true then

--ts:Create(script.Parent.Home.Popup, TweenInfo.new(.2), {Position = UDim2.new(0.5, 0,1.58, 0) })
--task.wait(.2)
    script.Parent.Home.Popup.Visible = false

    else
        script.Parent.Home.Popup.Visible = false
    end
    local tw2 = ts:Create(script.Parent.Home.DarkOverlay, TweenInfo.new(.15), {
        Transparency = 1
    })
    tw2:Play()
    tw2.Completed:Wait()
    script.Parent.Home.DarkOverlay.Visible = false
    end)
script.Parent.Home.Popup.Add.MouseButton1Click:Connect(function()
    UILib.SavedScripts:Add(script.Parent.Home.Popup.Title.TextBox.Text, script.Parent.Home.Popup.Source.TextBox.Text)
    writefile("d_android_script_dir/" .. script.Parent.Home.Popup.Title.TextBox.Text, script.Parent.Home.Popup.Source.TextBox.Text)

    if(not isfile("preventautoclose")) then
        script.Parent.Home.DarkOverlay.Visible = false
        script.Parent.Home.Popup.Visible = false
    end

    end)

script.Parent.Home.Searchbar.Button.MouseButton1Click:Connect(function()
    UILib.SavedScripts:OpenPopup()
    end)

script.Parent.Home.Searchbar.Input:GetPropertyChangedSignal("Text"):Connect(function()
    for i,v in pairs(script.Parent.Home.Holder:GetChildren()) do
    if v:IsA("ImageLabel") then
    if string.find(string.lower(v.Title.Text),string.lower(script.Parent.Home.Searchbar.Input.Text)) then
    v.Visible = true
    else
        v.Visible = false
    end
    end
    end
    if script.Parent.Home.Searchbar.Input.Text == "" then
    for i,v in pairs(script.Parent.Home.Holder:GetChildren()) do
    if v:IsA("ImageLabel") then
    v.Visible = true
    end
    end
    end
    end)

end;
task.spawn(C_19c);



local LOADER = {};


local GuiService2 = game:GetService("GuiService")

-- LOADERLoadingScreen
LOADER["1"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"));
LOADER["1"]["IgnoreGuiInset"] = true;
LOADER["1"]["Enabled"] = false;
LOADER["1"]["ScreenInsets"] = Enum.ScreenInsets.DeviceSafeInsets;
LOADER["1"]["Name"] = [[LOADERLoadingScreen]];
LOADER["1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;
LOADER["1"]["ResetOnSpawn"] = false;

-- LOADERLoadingScreen.DarkOverlay
LOADER["2"] = Instance.new("Frame", LOADER["1"]);
LOADER["2"]["ZIndex"] = -100;
LOADER["2"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
LOADER["2"]["BackgroundTransparency"] = 0.6600000262260437;
LOADER["2"]["Size"] = UDim2.new(2, 0, 2, 0);
LOADER["2"]["Position"] = UDim2.new(-1, 0, -1, 0);
LOADER["2"]["Name"] = [[DarkOverlay]];

-- LOADERLoadingScreen.MainFrame
LOADER["3"] = Instance.new("ImageLabel", LOADER["1"]);
LOADER["3"].BorderSizePixel = 0;
LOADER["3"].ScaleType = Enum.ScaleType.Crop;
LOADER["3"].BackgroundColor3 = Color3.fromRGB(255, 255, 255);
LOADER["3"].Image = "rbxassetid://13387419794";
LOADER["3"].LayoutOrder = 10;
LOADER["3"].Size = UDim2.new(0.32863849401474, 0, 0.31259891390800476, 0);
LOADER["3"].BorderColor3 = Color3.fromRGB(0, 0, 0);
LOADER["3"].Name = "MainFrame";

local DaIconSize = LOADER["3"].Size
local ScreenCenterX = GuiService2:GetScreenResolution().X / 2
local ScreenCenterY = GuiService2:GetScreenResolution().Y / 2

local DaIconPositionX = ScreenCenterX - DaIconSize.X.Offset / 2
local DaIconPositionY = ScreenCenterY - DaIconSize.Y.Offset / 2
LOADER["3"].Position = UDim2.new(0, DaIconPositionX, 0, DaIconPositionY/20)


-- LOADERLoadingScreen.MainFrame.UICorner
LOADER["4"] = Instance.new("UICorner", LOADER["3"]);
LOADER["4"]["CornerRadius"] = UDim.new(0.07000000029802322, 0);

-- LOADERLoadingScreen.MainFrame.Overlay
LOADER["5"] = Instance.new("ImageLabel", LOADER["3"]);
LOADER["5"]["BackgroundColor3"] = Color3.fromRGB(26, 27, 36);
LOADER["5"]["Image"] = [[rbxassetid://13387657138]];
LOADER["5"]["LayoutOrder"] = 10;
LOADER["5"]["Size"] = UDim2.new(1, 0, 1, 0);
LOADER["5"]["Name"] = [[Overlay]];
LOADER["5"]["BackgroundTransparency"] = 0.800000011920929;

-- LOADERLoadingScreen.MainFrame.Overlay.UICorner
LOADER["6"] = Instance.new("UICorner", LOADER["5"]);
LOADER["6"]["CornerRadius"] = UDim.new(0.07000000029802322, 0);

-- LOADERLoadingScreen.MainFrame.Overlay.Title
LOADER["7"] = Instance.new("TextLabel", LOADER["5"]);
LOADER["7"]["TextWrapped"] = true;
LOADER["7"]["TextScaled"] = true;
LOADER["7"]["BackgroundColor3"] = Color3.fromRGB(118, 192, 255);
LOADER["7"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
LOADER["7"]["TextSize"] = 14;
LOADER["7"]["TextColor3"] = Color3.fromRGB(203, 244, 255);
LOADER["7"]["AnchorPoint"] = Vector2.new(0, 0.5);
LOADER["7"]["Size"] = UDim2.new(0.6451469659805298, 0, 0.1418459564447403, 0);
LOADER["7"]["Text"] = [[Use Codex or Arceus]];
LOADER["7"]["Name"] = [[Title]];
LOADER["7"]["BackgroundTransparency"] = 1;
LOADER["7"]["Position"] = UDim2.new(0.1773512363433838, 0, 0.4073548913002014, 0);

-- LOADERLoadingScreen.MainFrame.Overlay.Desc
LOADER["8"] = Instance.new("TextLabel", LOADER["5"]);
LOADER["8"]["TextWrapped"] = true;
LOADER["8"]["TextScaled"] = true;
LOADER["8"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
LOADER["8"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
LOADER["8"]["TextSize"] = 14;
LOADER["8"]["TextColor3"] = Color3.fromRGB(199, 220, 255);
LOADER["8"]["AnchorPoint"] = Vector2.new(0, 0.5);
LOADER["8"]["Size"] = UDim2.new(0.8879498243331909, 0, 0.1277613639831543, 0);
LOADER["8"]["Text"] = [[We warned Lenny, he didnt listen]];
LOADER["8"]["Name"] = [[Desc]];
LOADER["8"]["BackgroundTransparency"] = 1;
LOADER["8"]["Position"] = UDim2.new(0.06185942143201828, 0, 0.5393086075782776, 0);

-- LOADERLoadingScreen.MainFrame.DropShadowHolder
LOADER["9"] = Instance.new("Frame", LOADER["3"]);
LOADER["9"]["ZIndex"] = 0;
LOADER["9"]["BorderSizePixel"] = 0;
LOADER["9"]["BackgroundTransparency"] = 1;
LOADER["9"]["Size"] = UDim2.new(1, 0, 1, 0);
LOADER["9"]["Name"] = [[DropShadowHolder]];

-- LOADERLoadingScreen.MainFrame.DropShadowHolder.DropShadow
LOADER["a"] = Instance.new("ImageLabel", LOADER["9"]);
LOADER["a"]["ZIndex"] = 0;
LOADER["a"]["BorderSizePixel"] = 0;
LOADER["a"]["SliceCenter"] = Rect.new(49, 49, 450, 450);
LOADER["a"]["ScaleType"] = Enum.ScaleType.Slice;
LOADER["a"]["ImageColor3"] = Color3.fromRGB(0, 0, 0);
LOADER["a"]["ImageTransparency"] = 0.699999988079071;
LOADER["a"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
LOADER["a"]["Image"] = [[rbxassetid://6014261993]];
LOADER["a"]["Size"] = UDim2.new(1, 47, 1, 47);
LOADER["a"]["Name"] = [[DropShadow]];
LOADER["a"]["BackgroundTransparency"] = 1;
LOADER["a"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);

-- LOADERLoadingScreen.MainFrame.UIAspectRatioConstraint
LOADER["b"] = Instance.new("UIAspectRatioConstraint", LOADER["3"]);
LOADER["b"]["AspectRatio"] = 1.8712739944458008;

-- LOADERLoadingScreen.LoadingModule
LOADER["c"] = Instance.new("ModuleScript", LOADER["1"]);
LOADER["c"]["Name"] = [[LoadingModule]];


-- Require LOADER wrapper
local LOADER_REQUIRE = require;
local LOADER_MODULES = {};
local function require(Module:ModuleScript)
    local ModuleState = LOADER_MODULES[Module];
    if ModuleState then
        if not ModuleState.Required then
            ModuleState.Required = true;
            ModuleState.Value = ModuleState.Closure();
        end
        return ModuleState.Value;
    end;
    return LOADER_REQUIRE(Module);
end

LOADER_MODULES[LOADER["c"]] = {
    Closure = function()
        local script = LOADER["c"];
        local lib = {}

        local tweenserv = game:GetService("TweenService")
        local frame = script.Parent.MainFrame
        local DarkOverlay = script.Parent.DarkOverlay

        local isLoading = false
        local delayz = 0.6

        local function TextFadeLoop()
            local title = frame.Overlay.Title
            local desc = frame.Overlay.Desc

            local timeToFade = 1

            local titleStart = tweenserv:Create(title, TweenInfo.new(timeToFade, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextTransparency = 0.8})
            local titleEnd = tweenserv:Create(title, TweenInfo.new(timeToFade, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextTransparency = 0})

            local descStart = tweenserv:Create(desc, TweenInfo.new(timeToFade, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextTransparency = 0.8})
            local descEnd = tweenserv:Create(desc, TweenInfo.new(timeToFade, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextTransparency = 0})

            while isLoading == true do
                titleStart:Play()
                descStart:Play()
                titleStart.Completed:Wait()
                titleEnd:Play()
                descEnd:Play()
                titleEnd.Completed:Wait()
            end
        end

        function lib:Start()
            isLoading = true

            script.Parent.Enabled = true
            frame.Position = UDim2.new(0.336, 0, -0.372, 0)
            DarkOverlay.Transparency = 1

            local tw1 = tweenserv:Create(frame, TweenInfo.new(delayz, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Position = UDim2.new(0.336, 0, 0.322, 0)})
            local tw2 = tweenserv:Create(DarkOverlay, TweenInfo.new(delayz, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Transparency = 0.66})
            tw1:Play()
            tw2:Play()
            tw2.Completed:Wait()
            TextFadeLoop()
        end

        function lib:End()
            isLoading = false

            DarkOverlay.Transparency = 1

            local tw1 = tweenserv:Create(frame, TweenInfo.new(delayz, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Position = UDim2.new(0.336, 0, -0.372, 0)})
            local tw2 = tweenserv:Create(DarkOverlay, TweenInfo.new(delayz, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Transparency = 1})
            tw1:Play()
            tw2:Play()
        end

        return lib
    end;
}

getgenv().rLib = require(LOADER["c"])

-- Create a coroutine to run the loading animation asynchronously
coroutine.wrap(function()
    getgenv().rLib:Start()
end)()


function whitelist()
    local username = game.Players.LocalPlayer.Name
    local response = game:HttpGet("https://whitelist.deltaexploits.net/api/whitelisted?username=" .. username)
    local success, data = pcall(function()
        return game:GetService('HttpService'):JSONDecode(response)
    end)
    if success and data and data["data"] and data["data"]["whitelisted"] == true then
        --print("whitelisted")
        writefile("dsigfiureikuger.txt", "WHITELIST")
        GrantAccess()
        return true
    end
    return false
end

function boost_whitelist()
    local username = game.Players.LocalPlayer.Name
    local response = game:HttpGet("https://deltafunny.dosware.repl.co/checkKey/" .. username)
    if string.find(response, "true") then
        writefile("dsigfiureikuger.txt", "BOOST")
        GrantAccess()
        return true
    end
    return false
end





if not isfile("dsigfiureikuger.txt") then
    writefile("dsigfiureikuger.txt", "hi")
end




function checkkey()

    local savedkey = readfile("dsigfiureikuger.txt")

	local keyless = "true"
	if string.find(keyless, "true") then
		GrantAccess()
        return true
	end

    if Verify() then
        GrantAccess()
        return true
    end

    if(savedkey == "WHITELIST") then
        if whitelist() then
            GrantAccess()
            return true
        end
    end

    if(savedkey == "BOOST") then
        if boost_whitelist() then
            GrantAccess()
            return true
        end
    end

end


coroutine.wrap(function()
    --print("starting up")
	local bool = checkkey()
    
    -- This is being ran when no saved key is found
    if not bool then
        --print("no valid key")
        wait(1)
	    getgenv().rLib:End()
        DELTA["1"].Enabled = true
        StartUp()
    else
        DELTA["1"].Enabled = true
    end
end)()

return DELTA["1"], require;
