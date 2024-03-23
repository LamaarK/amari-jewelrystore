
Config = {}

Config.Notifications = "qb"  -- Options: "ps", "qb"
Config.Job = "jewelry" -- Job
Config.Target = "qb-target" -- supports ox_target / qb-target / qtarget
Config.InvLink = "ps-inventory/html/images/"
Config.InventorySystem = "ps-inventory"  -- Options: "qb-inventory" or "ps-inventory"


Config.Blip = {
	Enable = true,
	Location = vector3(-1371.29, -292.32, 43.7),
	Sprite = 617,
	Display = 2,
	Scale = 0.8,
	Colour = 28,
	Name = "Vankov Jewelry",
}


Config.Stashes = {
    ["stash1"] = {
        stashName = "Safe",
        coords = vector3(-1372.55, -302.74, 43.7),
        --jobrequired = true,
        stashSize = 1000000,
        stashSlots = 125,
        heading = 301.19,
        length = 2.0,
        width = 2.0,
        minZ = 43.14,
        maxZ = 45.14,
    },
    ["stash2"] = {
        stashName = "Counter1",
        coords = vector3(-1362.46, -294.84, 44.47),
        --jobrequired = false, -- REMOVED DUE TO ERROR ON CLIENT SIDE
        stashSize = 1250000,
        stashSlots = 8,
        heading = 39.16,
        length = 2.5,
        width = 2.5,
        minZ = 43.14,
        maxZ = 45.14,
    },
    ["stash3"] = {
        stashName = "Counter2",
        coords = vector3(-1362.27, -291.47, 44.47),
        --jobrequired = false, -- REMOVED DUE TO ERROR ON CLIENT SIDE
        stashSize = 1250000,
        stashSlots = 8,
        heading = 127.49,
        length = 2.5,
        width = 2.5,
        minZ = 43.14,
        maxZ = 45.14,
    },
    ["stash4"] = {
        stashName = "Counter3",
        coords = vector3(-1364.93, -288.45, 44.47),
        --jobrequired = false, -- REMOVED DUE TO ERROR ON CLIENT SIDE
        stashSize = 1250000,
        stashSlots = 8,
        heading = 127.49,
        length = 2.5,
        width = 2.5,
        minZ = 43.14,
        maxZ = 45.14,
    },
    ["stash5"] = {
        stashName = "Counter4",
        coords = vector3(-1367.52, -285.81, 44.47),
        --jobrequired = false, -- REMOVED DUE TO ERROR ON CLIENT SIDE
        stashSize = 1250000,
        stashSlots = 8,
        heading = 127.49,
        length = 2.5,
        width = 2.5,
        minZ = 43.14,
        maxZ = 45.14,
    },
    ["stash6"] = {
        stashName = "Counter5",
        coords = vector3(-1369.58, -294.1, 44.49),
        --jobrequired = false, -- REMOVED DUE TO ERROR ON CLIENT SIDE
        stashSize = 1250000,
        stashSlots = 8,
        heading = 227.6,
        length = 2.5,
        width = 2.5,
        minZ = 43.14,
        maxZ = 45.14,
    },
    -- Add more stashes here with same format
}

Config.Lockers = {
    MaxWeight = 100000,  
    Slots = 30          
}

Config.CraftingZone = {
    name = "Crafting",
    coords = vector3(-1368.08, -307.8, 42.7),
    length = 1,
    width = 4,
    heading = 208.75,
    minZ = 42.00,
    maxZ = 43.00,
    options = {
        {
            action = function() CraftMenu() end,
            icon = "fa-solid fa-hammer",
            label = "Craft",
            job = Config.Job
        }
    },
    distance = 2.0
}

Config.BillingZone = {
    name = "Billing",
    coords = vector3(-1369.54, -300.48, 43.7),
    length = 0.7,
    width = 0.7,
    heading = 345,
    minZ = 43.00,
    maxZ = 45.00,
    options = {
        {
            event = "amari-jewel:Client:Invoicing",
            icon = "fa-solid fa-money-bill",
            label = "Bill",
            job = Config.Job
        }
    },
    distance = 2.0
}

Config.DutyZone = {
    name = "Duty",
    coords = vector3(-1360.41, -302.9, 43.7),
    size = { x = 1.0, y = 3.0 },
    heading = 226.35,
    debugPoly = false,
    minZ= 42.00,
    maxZ= 44.00,
    options = {
        {
            action = function() Duty() end,
            icon = "fa-solid fa-clipboard-list",
            label = "Duty",
            job = Config.Job
        }
    },
    distance = 2.0
}

Config.BossMenuZone = {
    name = "BossMenu",
    coords = vector3(-1373.83, -304.6, 44.5),
    size = { x = 1, y = 2.5 },
    heading = 213.91,
    debugPoly = false,
    minZ = 43.14,
    maxZ = 45.14,
    options = {
        {
            event = "qb-bossmenu:client:OpenMenu",
            icon = "fa-solid fa-clipboard-list",
            label = "Boss Menu",
            job = Config.Job
        }
    },
    distance = 2.0
}

Config.MoneyWashZone = {
    coords = vector3(-1375.17, -306.53, 43.7),  
    length = 1.4,
    width = 2.5,
    heading = 65,
    minZ = 43.14,
    maxZ = 45.14,  
    label = "Wash Money",
    icon = "fas fa-money-bill-wave",
    distance = 2.0
}


Config.JimPayments = true -- if using [jim-payments](https://github.com/jimathy/jim-payments) set to true , otherwise set it to false


Config.BreakerItems = {
    ["gold_ring"] = {
        { material = "gold", amount = 10 },
        { material = "iron", amount = 5 }
        -- Add more materials if needed
    },
    ["diamond_ring"] = {
        { material = "diamond", amount = 3 },
        { material = "iron", amount = 2 }
        -- Add more materials if needed
    }, 
    ["ruby_ring"] = {
        { material = "ruby", amount = 10 },
        { material = "iron", amount = 5 }
        -- Add more materials if needed
    },
    ["sapphire_ring"] = {
        { material = "sapphire", amount = 10 },
        { material = "iron", amount = 5 }
        -- Add more materials if needed
    },
    ["emerald_ring"] = {
        { material = "emerald", amount = 10 },
        { material = "iron", amount = 5 }
        -- Add more materials if needed
    },
    ["silver_ring"] = {
        { material = "steel", amount = 10 },
        { material = "iron", amount = 5 }
        -- Add more materials if needed
    },
    ["diamond_ring_silver"] = {
        { material = "diamond", amount = 10 },
        { material = "iron", amount = 5 }
        -- Add more materials if needed
    },
    ["weapon_bat"] = {
        { material = "steel", amount = 10 },
        { material = "iron", amount = 5 }
        -- Add more materials if needed
    },
    ["weapon_bat"] = {
        { material = "steel", amount = 10 },
        { material = "iron", amount = 5 }
        -- Add more materials if needed
    },
    ["weapon_bat"] = {
        { material = "steel", amount = 10 },
        { material = "iron", amount = 5 }
        -- Add more materials if needed
    },
    ["weapon_bat"] = {
        { material = "steel", amount = 10 },
        { material = "iron", amount = 5 }
        -- Add more materials if needed
    },
    ["weapon_bat"] = {
        { material = "steel", amount = 10 },
        { material = "iron", amount = 5 }
        -- Add more materials if needed
    },
    ["weapon_bat"] = {
        { material = "steel", amount = 10 },
        { material = "iron", amount = 5 }
        -- Add more materials if needed
    },
    ["weapon_bat"] = {
        { material = "steel", amount = 10 },
        { material = "iron", amount = 5 }
        -- Add more materials if needed
    },
    ["weapon_bat"] = {
        { material = "steel", amount = 10 },
        { material = "iron", amount = 5 }
        -- Add more materials if needed
    },
    ["weapon_bat"] = {
        { material = "steel", amount = 10 },
        { material = "iron", amount = 5 }
        -- Add more materials if needed
    },
    ["weapon_bat"] = {
        { material = "steel", amount = 10 },
        { material = "iron", amount = 5 }
        -- Add more materials if needed
    },
    ["weapon_bat"] = {
        { material = "steel", amount = 10 },
        { material = "iron", amount = 5 }
        -- Add more materials if needed
    },
    ["weapon_bat"] = {
        { material = "steel", amount = 10 },
        { material = "iron", amount = 5 }
        -- Add more materials if needed
    },
    ["weapon_bat"] = {
        { material = "steel", amount = 10 },
        { material = "iron", amount = 5 }
        -- Add more materials if needed
    },   
    ["weapon_bat"] = {
        { material = "steel", amount = 10 },
        { material = "iron", amount = 5 }
        -- Add more materials if needed
    },
    ["weapon_bat"] = {
        { material = "steel", amount = 10 },
        { material = "iron", amount = 5 }
        -- Add more materials if needed
    },
    ["weapon_bat"] = {
        { material = "steel", amount = 10 },
        { material = "iron", amount = 5 }
        -- Add more materials if needed
    },
    ["weapon_bat"] = {
        { material = "steel", amount = 10 },
        { material = "iron", amount = 5 }
        -- Add more materials if needed
    },
    ["weapon_bat"] = {
        { material = "steel", amount = 10 },
        { material = "iron", amount = 5 }
        -- Add more materials if needed
    },
    ["weapon_bat"] = {
        { material = "steel", amount = 10 },
        { material = "iron", amount = 5 }
        -- Add more materials if needed
    },
    ["weapon_bat"] = {
        { material = "steel", amount = 10 },
        { material = "iron", amount = 5 }
        -- Add more materials if needed
    },
    ["weapon_bat"] = {
        { material = "steel", amount = 10 },
        { material = "iron", amount = 5 }
        -- Add more materials if needed
    },
    ["weapon_bat"] = {
        { material = "steel", amount = 10 },
        { material = "iron", amount = 5 }
        -- Add more materials if needed
    },
    ["weapon_bat"] = {
        { material = "steel", amount = 10 },
        { material = "iron", amount = 5 }
        -- Add more materials if needed
    },
    -- Add more items here
}
Config.BreakerZone = {
    coords = vector3(-1369.85, -306.11, 42.7),  
    length = 0.8,
    width = 3.0,  
    heading = 48.29,
    minZ = 42.00,  
    maxZ = 43.00,  
    label = "Use Breaker",
    icon = "fas fa-hammer",
    distance = 2.0
}

Config.CraftingSettings = {
    UseMinigame = true,  -- Set to false to disable minigames for crafting
    MinigameType = 'Circle',  -- Options: 'Circle', 'Maze', 'VarHack', 'Thermite'
}

Config.Crafting = {
    ["gallery_aquamarine-ring"] = { 
        hash = "gallery_aquamarine-ring", 
        label = "Aquamarine Ring",
        materials = {
            [1] = { item = "iron",       amount = 25 },
            [2] = { item = "steel",        amount = 50 },
        }
    },
    ["gallery_citrine-ring"] = { 
        hash = "gallery_citrine-ring", 
        label = "Citrine Ring",
        materials = {
            [1] = { item = "iron",       amount = 25 },
            [2] = { item = "steel",        amount = 50 },
        }
    },
    ["gallery_diamond-ring"] = { 
        hash = "gallery_diamond-ring", 
        label = "Diamond Ring",
        materials = {
            [1] = { item = "iron",       amount = 25 },
            [2] = { item = "steel",        amount = 50 },
            [3] = { item = "diamond",        amount = 50 },
        }
    },
    ["gallery_jade-ring"] = { 
        hash = "gallery_jade-ring", 
        label = "Jade Ring",
        materials = {
            [1] = { item = "iron",       amount = 25 },
            [2] = { item = "steel",        amount = 50 },
        }
    },
    ["gallery_onyx-ring"] = { 
        hash = "gallery_onyx-ring", 
        label = "Onyx Ring",
        materials = {
            [1] = { item = "iron",       amount = 25 },
            [2] = { item = "steel",        amount = 50 },
        }
    },
    ["gallery_ruby-ring"] = { 
        hash = "gallery_ruby-ring", 
        label = "Ruby Ring",
        materials = {
            [1] = { item = "iron",       amount = 25 },
            [2] = { item = "steel",        amount = 50 },
        }
    },
    ["gallery_sapphire-ring"] = { 
        hash = "gallery_sapphire-ring", 
        label = "Sapphire Ring",
        materials = {
            [1] = { item = "iron",       amount = 25 },
            [2] = { item = "steel",        amount = 50 },
        }
    },
    ["gallery_tanzanite-ring"] = { 
        hash = "gallery_tanzanite-ring", 
        label = "Tanzanite Ring",
        materials = {
            [1] = { item = "iron",       amount = 25 },
            [2] = { item = "steel",        amount = 50 },
        }
    },
}

