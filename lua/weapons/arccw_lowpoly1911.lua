SWEP.Base = "arccw_base"
SWEP.Spawnable = true
SWEP.Category = "ArcCW - Low Poly"
SWEP.AdminOnly = false
SWEP.UseHands = true

-- Muzzle and shell effects --

SWEP.MuzzleEffect = "muzzleflash_1"
SWEP.ShellModel = "models/shells/shell_9mm.mdl"
SWEP.ShellScale = 2
SWEP.ShellMaterial = "models/weapons/arcticcw/shell_9mm"
SWEP.ShellPitch = 90

SWEP.MuzzleEffectAttachment = 1
SWEP.CaseEffectAttachment = 2
SWEP.TracerNum = 1
SWEP.TracerWidth = 1
SWEP.ShootPitch = 100

-- Fake name --

SWEP.PrintName = "Mk 1924"

-- Real name --

SWEP.TrueName = "M1911A1" 

-- Trivia --

SWEP.Trivia_Class = "Pistol"
SWEP.Trivia_Desc = "One of the most iconic pistols of all time in low poly."
SWEP.Trivia_Manufacturer = "Browning Arms"
SWEP.Trivia_Calibre = ".45 ACP"
SWEP.Trivia_Mechanism = "Short Recoil"
SWEP.Trivia_Country = "USA"
SWEP.Trivia_Year = 1924

-- Weapon slot --

SWEP.Slot = 1

-- Weapon's manufacturer real name --

if GetConVar("arccw_truenames"):GetBool() then
    SWEP.PrintName = SWEP.TrueName
    SWEP.Trivia_Manufacturer = "Colt Manufacturing Company"
end

-- Viewmodel / Worldmodel / Model FOV / Animations --

SWEP.ViewModel = "models/weapons/arccw/c_lowpolym1911.mdl"
SWEP.WorldModel = "models/weapons/w_pist_usp.mdl"
SWEP.ViewModelFOV = 70
SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_REVOLVER
 
SWEP.MirrorVMWM = true
SWEP.WorldModelOffset = {
    pos        =    Vector(-19, 3, -7),
    ang        =    Angle(0, -5, 180),
    bone    =    "ValveBiped.Bip01_R_Hand",
}

-- Damage parameters --

SWEP.Damage = 37
SWEP.DamageMin = 20
SWEP.Range = 40
SWEP.Penetration = 3
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = nil
SWEP.MuzzleVelocity = 250

-- Mag size --

SWEP.ChamberSize = 1 
SWEP.Primary.ClipSize = 7 
SWEP.ExtendedClipSize = 14
SWEP.ReducedClipSize = 5

-- Recoil --

SWEP.Recoil = 0.8
SWEP.RecoilSide = 0.2

SWEP.MaxRecoilBlowback = 5
SWEP.VisualRecoilMult = 1
SWEP.RecoilPunch = 0

-- Firerate / Firemodes --

SWEP.Delay = 80 / 500
SWEP.Num = 1 
SWEP.Firemodes = {
    {
        Mode = 1,
    },
    {
        Mode = 0
    }
}

SWEP.ReloadInSights = true

SWEP.BulletBones = {
    [1] = "Bullet1",    [2] = "Bullet2"
}

-- NPC stuff -- 

SWEP.NPCWeaponType = "weapon_pistol"
SWEP.NPCWeight = 78

-- Accuracy --

SWEP.AccuracyMOA = 7
SWEP.HipDispersion = 300
SWEP.MoveDispersion = 350

SWEP.Primary.Ammo = "pistol"
SWEP.MagID = "m1911"

-- Speed mult --

SWEP.SpeedMult = 1
SWEP.SightedSpeedMult = 0.86 
SWEP.SightTime = 0.2

-- Gun length --

SWEP.BarrelLength = 15
SWEP.ExtraSightDist = 13

-- Ironsight / Customization pos ang --

SWEP.IronSightStruct = {
    Pos = Vector(-2.64, 2, 2),
    Ang = Angle(0.699, 0, 0),
    Magnification = 1.1,
    SwitchToSound = "",
}

SWEP.ActivePos = Vector(0, 1, 0)

SWEP.CustomizePos = Vector(0, 2, 0)
SWEP.CustomizeAng = Angle(0, 0, 0)

SWEP.CrouchPos = Vector(-3.78, 0, -0.64)
SWEP.CrouchAng = Angle(0.699, -0.5, -12.2)

SWEP.HolsterPos = Vector(-0.603, -2.814, -6.52)
SWEP.HolsterAng = Angle(21.106, -3.518, -1.601)

SWEP.BarrelOffsetSighted = Vector(0, 0, -1)
SWEP.BarrelOffsetHip = Vector(2, 0, -2)

-- Weapon sounds --

SWEP.ShootSound = "weapons/arccw/1911/lowpoly1911_shot.ogg"
SWEP.ShootSoundSilenced = "weapons/arccw/1911/lowpoly1911_supp.ogg"
SWEP.DistantShootSound = "weapons/arccw/1911/lowpoly1911_dist.ogg"

-- Animations --

SWEP.Animations = {
    ["idle"] = false,
    ["idle_empty"] = false,
    ["ready"] = {
        Source = "ready",
        Framerate = 60,
        Time = 75 / 60,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.25,
    },
    ["draw"] = {
        Source = "draw",
        Framerate = 60,
        Time = 25 / 60,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.25,
    },
    ["draw_empty"] = {
        Source = "draw_empty",
        Framerate = 60,
        Time = 25 / 60,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.25,
    },

    -- Default fire --

    ["fire"] = {
        Source = "fire",
        Framerate = 60,
        Time = 30 / 60,
        ShellEjectAt = 0.04,
    },
    ["fire_empty"] = {
        Source = "fire_empty",
        Framerate = 60,
        Time = 30 / 60,
        ShellEjectAt = 0.04,
    },
    ["fire_iron"] = {
        Source = "fire_iron",
        Framerate = 60,
        Time = 30 / 60,
        ShellEjectAt = 0.04,
    },
    ["fire_iron_empty"] = {
        Source = "fire_iron_empty",
        Framerate = 60,
        Time = 30 / 60,
        ShellEjectAt = 0.04,
    },

    -- Stock fire  --

    ["fire_stock"] = {
        Source = "fire_stock",
        Framerate = 60,
        Time = 30 / 60,
        ShellEjectAt = 0.04,
    },
    ["fire_empty_stock"] = {
        Source = "fire_empty_stock",
        Framerate = 60,
        Time = 30 / 60,
        ShellEjectAt = 0.04,
    },
    ["fire_iron_stock"] = {
        Source = "fire_iron_stock",
        Framerate = 60,
        Time = 30 / 60,
        ShellEjectAt = 0.04,
    },
    ["fire_iron_empty_stock"] = {
        Source = "fire_iron_empty_stock",
        Framerate = 60,
        Time = 30 / 60,
        ShellEjectAt = 0.04,
    },

    -- I know this is shit but whatever --

    ["fire_extended_stock"] = {
        Source = "fire_stock",
        Framerate = 60,
        Time = 30 / 60,
        ShellEjectAt = 0.04,
    },
    ["fire_empty_extended_stock"] = {
        Source = "fire_empty_stock",
        Framerate = 60,
        Time = 30 / 60,
        ShellEjectAt = 0.04,
    },
    ["fire_iron_extended_stock"] = {
        Source = "fire_iron_stock",
        Framerate = 60,
        Time = 30 / 60,
        ShellEjectAt = 0.04,
    },
    ["fire_iron_empty_extended_stock"] = {
        Source = "fire_iron_empty_stock",
        Framerate = 60,
        Time = 30 / 60,
        ShellEjectAt = 0.04,
    },

    -- Default reload  --

    ["reload"] = {
        Source = "reload",
        Time = 103 / 60,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        Framerate = 60,
        LHIK = true,
        LHIKIn = 0.1,
        LHIKOut = 0.13,
        LastClip1OutTime = 1,
    },
    ["reload_empty"] = {
        Source = "reload_empty",
        Time = 126 / 60,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        Framerate = 60,
        LHIK = true,
        LHIKIn = 0.3,
        LHIKOut = 0.1,
        LastClip1OutTime = 0.8,
    },
    ["reload_iron"] = {
        Source = "reload_iron",
        Time = 103 / 60,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        Framerate = 60,
        LHIK = true,
        LHIKIn = 0.1,
        LHIKOut = 0.13,
        LastClip1OutTime = 1,
    },
    ["reload_empty_iron"] = {
        Source = "reload_empty_iron",
        Time = 126 / 60,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        Framerate = 60,
        LHIK = true,
        LHIKIn = 0.3,
        LHIKOut = 0.1,
        LastClip1OutTime = 0.8,
    },

    -- Stock reload  --

    ["reload_stock"] = {
        Source = "reload_iron",
        Time = 103 / 60,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        Framerate = 60,
        LHIK = true,
        LHIKIn = 0.1,
        LHIKOut = 0.13,
        LastClip1OutTime = 1,
    },
    ["reload_empty_stock"] = {
        Source = "reload_empty_iron",
        Time = 126 / 60,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        Framerate = 60,
        LHIK = true,
        LHIKIn = 0.3,
        LHIKOut = 0.1,
        LastClip1OutTime = 0.8,
    },
    ["reload_iron_stock"] = {
        Source = "reload_iron",
        Time = 103 / 60,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        Framerate = 60,
        LHIK = true,
        LHIKIn = 0.1,
        LHIKOut = 0.13,
        LastClip1OutTime = 1,
    },
    ["reload_empty_iron_stock"] = {
        Source = "reload_empty_iron",
        Time = 126 / 60,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        Framerate = 60,
        LHIK = true,
        LHIKIn = 0.3,
        LHIKOut = 0.1,
        LastClip1OutTime = 0.8,
    },
    ["reload_extended_stock"] = {
        Source = "reload_iron_extended",
        Time = 118 / 60,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        Framerate = 60,
        LHIK = true,
        LHIKIn = 0.1,
        LHIKOut = 0.13,
        LastClip1OutTime = 1,
    },
    ["reload_empty_extended_stock"] = {
        Source = "reload_empty_extended_iron",
        Time = 136 / 60,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        Framerate = 60,
        LHIK = true,
        LHIKIn = 0.1,
        LHIKOut = 0.13,
        LastClip1OutTime = 1,
    },
    ["reload_extended_iron_stock"] = {
        Source = "reload_iron_extended",
        Time = 118 / 60,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        Framerate = 60,
        LHIK = true,
        LHIKIn = 0.1,
        LHIKOut = 0.13,
        LastClip1OutTime = 1,
    },
    ["reload_empty_extended_iron_stock"] = {
        Source = "reload_empty_extended_iron",
        Time = 136 / 60,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        Framerate = 60,
        LHIK = true,
        LHIKIn = 0.1,
        LHIKOut = 0.13,
        LastClip1OutTime = 1,
    },

    -- Extended reload --

    ["reload_extended"] = {
        Source = "reload_extended",
        Time = 118 / 60,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        Framerate = 60,
        LHIK = true,
        LHIKIn = 0.1,
        LHIKOut = 0.13,
        LastClip1OutTime = 1,
    },
    ["reload_empty_extended"] = {
        Source = "reload_empty_extended",
        Time = 136 / 60,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        Framerate = 60,
        LHIK = true,
        LHIKIn = 0.3,
        LHIKOut = 0.1,
        LastClip1OutTime = 0.8,
    },
    ["reload_extended_iron"] = {
        Source = "reload_iron_extended",
        Time = 118 / 60,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        Framerate = 60,
        LHIK = true,
        LHIKIn = 0.1,
        LHIKOut = 0.13,
        LastClip1OutTime = 1,
    },
    ["reload_empty_extended_iron"] = {
        Source = "reload_empty_extended_iron",
        Time = 118 / 60,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        Framerate = 60,
        LHIK = true,
        LHIKIn = 0.1,
        LHIKOut = 0.13,
        LastClip1OutTime = 1,
    },

    -- Default inspect --

    ["enter_inspect"] = {
        Source = "enter_inspect",
        time = 30 / 60,
        Framerate = 60,
        LHIK = true,
        LHIKIn = 0.1,
        LHIKOut = 0,
    },
    ["idle_inspect"] = {
        Source = "idle_inspect",
        time = 120 / 60,
        Framerate = 60,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0,
    },
    ["exit_inspect"] = {
        Source = "exit_inspect",
        time = 120 / 60,
        Framerate = 60,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.32,
    },

    -- Empty inspect --

    ["enter_inspect_empty"] = {
        Source = "enter_inspect_empty",
        time = 30 / 60,
        Framerate = 60,
        LHIK = true,
        LHIKIn = 0.1,
        LHIKOut = 0,
    },
    ["idle_inspect_empty"] = {
        Source = "idle_inspect_empty",
        time = 120 / 60,
        Framerate = 60,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0,
    },
    ["exit_inspect_empty"] = {
        Source = "exit_inspect_empty",
        time = 120 / 60,
        Framerate = 60,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.4,
    },
}

SWEP.ProceduralRegularFire = false
SWEP.ProceduralIronFire = false

SWEP.HoldtypeHolstered = "normal"
SWEP.HoldtypeActive = "pistol"
SWEP.HoldtypeSights = "revolver"

-- Bodygroups --

SWEP.DefaultBodygroups = "000000000000"

SWEP.AttachmentElements = {
    -- Classic --
    ["Classic22Mag"] = {
        VMBodygroups = {{ind = 2, bg = 0},{ind = 10, bg = 1}},
    },
    ["50Mag"] = {
        VMBodygroups = {{ind = 2, bg = 4},{ind = 10, bg = 2}},
    },

    -- M45A1 --

    ["MercBody"] = {
        VMBodygroups = {{ind = 0, bg = 1}},
        TrueNameChange = "M45A1",
        NameChange = "Mercenary MK-24",
        AttPosMods = {
            [10] = {
                vpos = Vector(0, -3, 7.3),
            }
        },
    },
    ["MercSlide"] = {
        VMBodygroups = {{ind = 3, bg = 1}},
    },
    ["MercTrigger"] = {
        VMBodygroups = {{ind = 8, bg = 2},{ind = 9, bg = 2}},
    },
    ["MercMag"] = {
        VMBodygroups = {{ind = 2, bg = 2}},
    },
    ["MercBarrel"] = {
        VMBodygroups = {{ind = 1, bg = 2},{ind = 5, bg = 1}},
        AttPosMods = {
            [3] = {
                vpos = Vector(0, 0, 0.5),
            }
        },
    },
    ["noth"] = {
        VMBodygroups = {{ind = 5, bg = 0}},
    },

    -- Peters Stahl --

    ["ModernizedTrigger"] = {
        VMBodygroups = {{ind = 8, bg = 1},{ind = 9, bg = 1}},
    },
    ["ModernizedSlide"] = {
        VMBodygroups = {{ind = 3, bg = 2}},
    },
    ["ModernizedMag"] = {
        VMBodygroups = {{ind = 2, bg = 1}},
    },
    ["ModernizedBody"] = {
        VMBodygroups = {{ind = 0, bg = 2}},
        TrueNameChange = "Peters Stahl M1911A1",
        NameChange = "Modernized MK-24",
        AttPosMods = {
            [10] = {
                vpos = Vector(0, -3.2, 7),
            }
        },
    },
    ["ModernizedBarrel"] = {
        VMBodygroups = {{ind = 1, bg = 1}},
        AttPosMods = {
            [3] = {
                vpos = Vector(0, 0, 1.2),
            }
        },
    },

    -- Stocks --
    
    ["LightStock"] = {
        VMBodygroups = {{ind = 4, bg = 1}},
        Override_IronSightStruct = {
            Pos = Vector(-2.626, -3, 2.07),
            Ang = Angle(0.6, 0, 0),
            Magnification = 1,
        },
    },
    ["HeavyStock"] = {
        VMBodygroups = {{ind = 4, bg = 2}},
        Override_IronSightStruct = {
            Pos = Vector(-2.626, -3, 2.07),
            Ang = Angle(0.6, 0, 0),
            Magnification = 1,
        },
    },

    -- Fictional --
    
    ["LightSlide"] = {
        VMBodygroups = {{ind = 3, bg = 4}},
    },
    ["ErgoGrip"] = {
        VMBodygroups = {{ind = 7, bg = 1}},
    },

    -- Carbine --

    ["CarbineForegrip"] = {
        VMBodygroups = {{ind = 6, bg = 1}},
    },
    ["ErgoForegrip"] = {
        VMBodygroups = {{ind = 6, bg = 2}},
    },
    ["CarbineBarrel"] = {
        VMBodygroups = {{ind = 1, bg = 3}},
    },
    ["CarbineMag"] = {
        VMBodygroups = {{ind = 2, bg = 3}},
    },

    -- Skins --

    ["skin_wireframe"] = {
        VMSkin = 1,
    },
    ["skin_black"] = {
        VMSkin = 2,
    },
}

-- LUA --

-- SWEP.Hook_TranslateAnimation = function(wep, anim)
--     if wep:GetState() == ArcCW.STATE_SIGHTS && wep.Attachments[11].Installed != "lp1911_lightstock" && wep.Attachments[11].Installed != "lp1911_heavystock" then
--         return anim .. "_iron"
--     end
-- end

SWEP.Hook_Think = function(wep)
	wep:GetOwner():GetViewModel():SetPoseParameter( "sights", 1 - wep:GetSightDelta() ) -- This is entirely possible thanks to Fesiug
end

SWEP.RejectAttachments = {
  ["perk_extendedmags"] = true,
  ["muzz_hbar"] = true,
  ["muzz_lbar"] = true,
}

SWEP.Attachments = {
    {
        PrintName = "Optic",
        DefaultAttName = "Iron Sights",
        Slot = {"optic_lp","mw_optic_lp"},
        Bone = "Slide",
        VMScale = Vector(0.7,0.7,0.7),
        Offset = {
            vpos = Vector(0.015, -0.4, -1),
            vang = Angle(90, 0, -90),
        },
    },
    {
        PrintName = "Barrel",
        DefaultAttName = "Classic Barrel",
        Slot = {"lp1911_barrel"},
		DefaultAttIcon = Material("entities/att/1911/acwatt_lp1911defbarrel.png")
    },
    {
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Slot = {"muzzle", "mw_muzzle"},
        Bone = "Barrel",
        Offset = {
            vpos = Vector(0, 0, 0),
            vang = Angle(90, 0, -90),
        },
        InstalledEles = {"noth"},
		ExcludeFlags = {"1911B"},
    },
    {
        PrintName = "Body",
        DefaultAttName = "Classic Barrel",
        Slot = {"lp1911_body"},
		DefaultAttIcon = Material("entities/att/1911/acwatt_lp1911defbody.png")
    },
    {
        PrintName = "Slide",
        DefaultAttName = "Classic Slide",
        Slot = {"lp1911_slide"},
		DefaultAttIcon = Material("entities/att/1911/acwatt_lp1911defslide.png")
    },
    {
        PrintName = "Mag",
        DefaultAttName = "7 Round Mag (Classic)",
        Slot = {"lp1911_mag"},
		DefaultAttIcon = Material("entities/att/1911/acwatt_lp1911defmag.png")
    },
    {
        PrintName = "Trigger",
        Slot = "lp1911_trigger",
        DefaultAttName = "Classic Trigger",
		DefaultAttIcon = Material("entities/att/1911/acwatt_lp1911deftrigger.png")
    },
    {
        PrintName = "Grip",
        Slot = "lp1911_grip",
        DefaultAttName = "Standard Grip",
		DefaultAttIcon = Material("entities/att/1911/acwatt_lp1911defgrip.png")
    },
    {
        PrintName = "Underbarrel",
        Slot = {"foregrip_pistol", "style_pistol","lp1911_foregrip"},
        Bone = "Body",
        Offset = {
            vpos = Vector(0.1, -3, 5.2),
            vang = Angle(90, 0, -90),
        },
    },
    {
        PrintName = "Tactical",
        Slot = {"tac_pistol", "mw_tac"},
        Bone = "Body",
        VMScale = Vector(0.8,0.8,0.8),
        Offset = {
            vpos = Vector(0, -3.3, 7),
            vang = Angle(90, 0, -90),
        },
		ExcludeFlags = {"1911Fg"},
    },
    {
        PrintName = "Stock",
        Slot = "lp1911_stock",
        DefaultAttName = "No Stock",
    },
    {
        PrintName = "Perk",
        Slot = "go_perk"
    },
    {
        PrintName = "Charm",
        Slot = {"charm", "fml_charm"},
        FreeSlot = true,
        Bone = "Slide", 
        Offset = {
            vpos = Vector(0.4, 0.4, 5),
            vang = Angle(90, 0, -90),
        },
    },
    {
        PrintName = "Skins",
        PrintName = "Skin",
        Slot = {"skin_lpak"},
        DefaultAttName = "Default",
        FreeSlot = true
    },
}