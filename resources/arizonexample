    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/laderite/siernlib/main/library.lua"))()

    local win = Library:Create({
        Name = "UI Library",
    })

    local maintab = win:Tab('Main')
    local charactertab = win:Tab('Local Player')
    local uitab = win:Tab('UI')

    local main = maintab:Section('AUTOFARM')
    local character = charactertab:Section('LOCAL')
    local ui = uitab:Section('UI SETTINGS')
    main:Label('This is a label')
    main:Toggle('Level Farm',function(v)
        print(v)
    end)
    main:Toggle('Spin Farm',function(v)
        print(v)
    end)
    main:Button('Ya',function()
        print('clicked')
    end)
    main:Textbox('Textbox',function(v)
    print(v)
    end)

    local slider = main:Slider("Slider", 0,25,0,2.5,function(t)
    end)

    character:Label('This is the localplayer settings')
    ui:Label('This is the UI Settings')

    local dropdown = main:Dropdown("Dropdown", {"a","b","c","d","e","e","e"},"", function(t)
        print(t)
    end)    
