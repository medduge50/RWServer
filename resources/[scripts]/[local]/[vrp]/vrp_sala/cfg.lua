Config = {}

Config.Exercises = {
    ["팔굽혀펴기"] = {
        ["idleDict"] = "amb@world_human_push_ups@male@idle_a",
        ["idleAnim"] = "idle_c",
        ["actionDict"] = "amb@world_human_push_ups@male@base",
        ["actionAnim"] = "base",
        ["actionTime"] = 1100,
        ["enterDict"] = "amb@world_human_push_ups@male@enter",
        ["enterAnim"] = "enter",
        ["enterTime"] = 3050,
        ["exitDict"] = "amb@world_human_push_ups@male@exit",
        ["exitAnim"] = "exit",
        ["exitTime"] = 3400,
        ["actionProcent"] = 1,
        ["actionProcentTimes"] = 3,
    },
    ["윗몸일으키기"] = {
        ["idleDict"] = "amb@world_human_sit_ups@male@idle_a",
        ["idleAnim"] = "idle_a",
        ["actionDict"] = "amb@world_human_sit_ups@male@base",
        ["actionAnim"] = "base",
        ["actionTime"] = 3400,
        ["enterDict"] = "amb@world_human_sit_ups@male@enter",
        ["enterAnim"] = "enter",
        ["enterTime"] = 4200,
        ["exitDict"] = "amb@world_human_sit_ups@male@exit",
        ["exitAnim"] = "exit", 
        ["exitTime"] = 3700,
        ["actionProcent"] = 1,
        ["actionProcentTimes"] = 10,
    },
    ["턱걸이"] = {
        ["idleDict"] = "amb@prop_human_muscle_chin_ups@male@idle_a",
        ["idleAnim"] = "idle_a",
        ["actionDict"] = "amb@prop_human_muscle_chin_ups@male@base",
        ["actionAnim"] = "base",
        ["actionTime"] = 3000,
        ["enterDict"] = "amb@prop_human_muscle_chin_ups@male@enter",
        ["enterAnim"] = "enter",
        ["enterTime"] = 1600,
        ["exitDict"] = "amb@prop_human_muscle_chin_ups@male@exit",
        ["exitAnim"] = "exit",
        ["exitTime"] = 3700,
        ["actionProcent"] = 1,
        ["actionProcentTimes"] = 10,
    },
}

Config.Locations = {
    {["x"] = -1200.08, ["y"] = -1571.15, ["z"] = 4.6115 - 0.98, ["h"] = 214.37, ["exercise"] = "턱걸이"},
    {["x"] = -1204.7182617188, ["y"] = -1564.3562011719, ["z"] = 4.6095600128174 - 0.98, ["h"] = 44.260753631592, ["exercise"] = "턱걸이"},
	
    {["x"] = -1203.3094482422, ["y"] = -1570.6759033203, ["z"] = 4.6079330444336 - 0.98, ["h"] = nil, ["exercise"] = "팔굽혀펴기"},
	
    {["x"] = -1206.9396972656, ["y"] = -1561.0675048828, ["z"] = 5.017777442931 - 0.98, ["h"] = 33.56797409056, ["exercise"] = "윗몸일으키기"},
    {["x"] = -1200.8350830078, ["y"] = -1562.3353271484, ["z"] = 5.0096755027771 - 0.98, ["h"] = 302.19412231445, ["exercise"] = "윗몸일으키기"},
    {["x"] = -1199.3092041016, ["y"] = -1565.3266601563, ["z"] = 5.0202946662903 - 0.98, ["h"] = 308.81399536133, ["exercise"] = "윗몸일으키기"},
    {["x"] = -1201.4001464844, ["y"] = -1566.4625244141, ["z"] = 5.015811920166 - 0.98, ["h"] = 219.00923156738, ["exercise"] = "윗몸일으키기"},
    {["x"] = -1203.1086425781, ["y"] = -1568.0439453125, ["z"] = 5.0092525482178 - 0.98, ["h"] = 35.627471923828, ["exercise"] = "윗몸일으키기"},
    {["x"] = -1197.8819580078, ["y"] = -1568.0546875, ["z"] = 5.0169696807861 - 0.98, ["h"] = 125.81580352783, ["exercise"] = "윗몸일으키기"},
    {["x"] = -1201.0426025391, ["y"] = -1575.2745361328, ["z"] = 5.0062808990479 - 0.98, ["h"] = 30.414096832275, ["exercise"] = "윗몸일으키기"},
    {["x"] = -1205.0118408203, ["y"] = -1560.0671386719, ["z"] = 4.614236831665 - 0.98, ["h"] = nil, ["exercise"] = "윗몸일으키기"},
    
    {["x"] = 1769.6912841797, ["y"] = 2590.1252441406, ["z"] = 46.209873199463 - 0.98, ["h"] = 90.00, ["exercise"] = "윗몸일으키기"},
    {["x"] = 1769.5102539063, ["y"] = 2598.857421875, ["z"] = 45.79801940918 - 0.98, ["h"] = nil, ["exercise"] = "윗몸일으키기"},
    {["x"] = 1773.2215576172, ["y"] = 2596.8022460938, ["z"] = 45.79806137085 - 0.98, ["h"] = 270.00, ["exercise"] = "턱걸이"},
    {["x"] = 1773.1354980469, ["y"] = 2594.9868164063, ["z"] = 45.79801940918 - 0.98, ["h"] = 270.00, ["exercise"] = "턱걸이"},
    {["x"] = 1765.9592285156, ["y"] = 2592.0373535156, ["z"] = 45.798023223877 - 0.98, ["h"] = nil, ["exercise"] = "팔굽혀펴기"},
}