# Mint-Lib
# Free To Use No Credits Needed

### Docs

Get Lib
```lua
local lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/Lunar-Eclipse111/Mint-Lib/main/source.lua"))()
```
make UI
```lua
local UI = lib:Make("MINT")
```
Make Tab
```lua
local TAB = UI:Tab("Tab")
```

Labels

```lua
local label = TAB:Label("Silent Aim")
```

Toggles
```lua
local toggle = TAB:Toggle(Text,function(v)
print(v)
end)
```

Slider
```lua
local slider = TAB:Slider(Text,MIN,Max,function(e)
	print(e)
end)
```

Color Picker
```lua
TAB:ColorPicker(Text,function(a)
print(a)
end)
