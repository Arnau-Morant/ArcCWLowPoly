SWEP.Base = "arccw_base"
SWEP.Spawnable = true
SWEP.Category = "ArcCW - Low Poly"
SWEP.AdminOnly = false
SWEP.UseHands = true

-- Muzzle and shell effects --

SWEP.MuzzleEffect = "muzzleflash_1"
SWEP.ShellModel = "models/shells/shell_9mm.mdl"
SWEP.ShellScale = 1.2
SWEP.ShellMaterial = "models/weapons/arcticcw/shell_9mm"
SWEP.ShellPitch = 90

SWEP.MuzzleEffectAttachment = 1
SWEP.CaseEffectAttachment = 2
SWEP.TracerNum = 1
SWEP.TracerWidth = 1
SWEP.ShootPitch = 94

-- Fake name --

SWEP.PrintName = "5.7"

-- Real name --

SWEP.TrueName = "Five-seveN" 

-- Trivia --

SWEP.Trivia_Class = "Pistol"
SWEP.Trivia_Desc = "Semi-automatic pistol capable of firing armor piercing rounds."
SWEP.Trivia_Manufacturer = "WI"
SWEP.Trivia_Calibre = "5.7x28mm FN"
SWEP.Trivia_Mechanism = "Delayed blowback"
SWEP.Trivia_Country = "Belgium"
SWEP.Trivia_Year = 1998

-- Weapon slot --

SWEP.Slot = 1

-- Weapon's manufacturer real name --

if GetConVar("arccw_truenames"):GetBool() then
    SWEP.PrintName = SWEP.TrueName
    SWEP.Trivia_Manufacturer = "FN Herstal"
end

-- Viewmodel / Worldmodel / Model FOV / Animations --

SWEP.ViewModel = "models/weapons/arccw/c_lowpolyfiveseven.mdl"
SWEP.WorldModel = "models/weapons/w_pist_usp.mdl"
SWEP.ViewModelFOV = 60
SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_REVOLVER
 
SWEP.MirrorVMWM = true
SWEP.WorldModelOffset = {
    pos        =    Vector(-11, -0.5, -6.3),
    ang        =    Angle(0, -5, 200),
    bone    =    "ValveBiped.Bip01_R_Hand",
}

-- Damage parameters --

SWEP.Damage = 28
SWEP.DamageMin = 20
SWEP.Range = 80
SWEP.Penetration = 11
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = nil
SWEP.MuzzleVelocity = 520

-- Mag size --

SWEP.ChamberSize = 1
SWEP.Primary.ClipSize = 20
SWEP.ExtendedClipSize = 30
SWEP.ReducedClipSize = 10

-- Recoil --

SWEP.Recoil = 0.7
SWEP.RecoilSide = 0.5

SWEP.MaxRecoilBlowback = 5
SWEP.VisualRecoilMult = 1
SWEP.RecoilPunch = 1

-- Firerate / Firemodes --

SWEP.Delay = 60 / 550
SWEP.Num = 1 
SWEP.Firemodes = {
    {
        Mode = 1,
    },
    {
        Mode = 0
    }
}

SWEP.BulletBones = {
    [1] = "Bullet1",    [2] = "Bullet2",    [3] = "Bullet3"
}

-- NPC stuff -- 

SWEP.NPCWeaponType = "weapon_pistol"
SWEP.NPCWeight = 78

-- Accuracy --

SWEP.AccuracyMOA = 6
SWEP.HipDispersion = 350
SWEP.MoveDispersion = 400

SWEP.Primary.Ammo = "pistol"
SWEP.MagID = "fiveseven"

-- Speed mult --

SWEP.SpeedMult = 1
SWEP.SightedSpeedMult = 0.86 
SWEP.SightTime = 0.2

-- Gun length --

SWEP.BarrelLength = 15
SWEP.ExtraSightDist = 13

-- Ironsight / Customization pos ang --

SWEP.IronSightStruct = {
    Pos = Vector(-1.28, 0, 1.26),
    Ang = Angle(0.2, 0, 0),
    Magnification = 1.1,
    SwitchToSound = "",
}

SWEP.ActivePos = Vector(0.3, 3, 0)
SWEP.ActiveAng = Angle(0, 0, 8)

SWEP.CustomizePos = Vector(-2, 2, 0)
SWEP.CustomizeAng = Angle(0, 0, 0)

SWEP.CrouchPos = Vector(2, 1, 1)
SWEP.CrouchAng = Angle(0, 0, 18)

SWEP.HolsterPos = Vector(1.799, 3, 3)
SWEP.HolsterAng = Angle(-15, 8.5, 0)

-- Weapon sounds --

SWEP.ShootSound = "weapons/arccw/fiveseven/lowpolyfiveseven_fire.ogg"
SWEP.ShootSoundSilenced = "weapons/arccw/fiveseven/lowpolyfiveseven_supp.ogg"
SWEP.DistantShootSound = "weapons/arccw/fiveseven/lowpolyfiveseven_dist.ogg"

-- Animations --

SWEP.ReloadInSights = true

SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
        Framerate = 60,
        Time = 500 / 60,
    },
    ["draw"] = {
        Source = "draw",
        time = 40 / 60,
        Framerate = 60,
    },
    ["idle_empty"] = {
        Source = "idle_empty",
        Framerate = 60,
        Time = 500 / 60,
    },
    ["ready"] = {
        Source = "ready",
        Framerate = 60,
        Time = 74 / 60,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.2,
    },

    -- Default fire --

    ["fire"] = {
        Source = "fire",
        Framerate = 60,
        Time = 50 / 60,
        ShellEjectAt = 0.04,
    },
    ["fire_empty"] = {
        Source = "fire_empty",
        Framerate = 60,
        Time = 50 / 60,
        ShellEjectAt = 0.04,
        SoundTable = {{ s = "weapons/arccw/fiveseven/lowpolyfiveseven_empty.ogg", t = 0.01 }},
    },
    ["fire_iron"] = {
        Source = "fire_iron",
        Framerate = 60,
        Time = 50 / 60,
        ShellEjectAt = 0.04,
    },
    ["fire_iron_empty"] = {
        Source = "fire_iron_empty",
        Framerate = 60,
        Time = 50 / 60,
        ShellEjectAt = 0.04,
        SoundTable = {{ s = "weapons/arccw/fiveseven/lowpolyfiveseven_empty.ogg", t = 0.01 }},
    },

    -- Default reload  --

    ["reload"] = {
        Source = "reload",
        Time = 115 / 60,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        Framerate = 60,
        LHIK = true,
        LHIKIn = 0.1,
        LHIKEaseOut = 0.2,
        LHIKOut = 0.5,
        LastClip1OutTime = 2,
    },

    ["reload_empty"] = {
        Source = "reload_empty",
        Time = 133 / 60,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        Framerate = 60,
        LHIK = true,
        LHIKIn = 0.1,
        LHIKEaseOut = 0.2,
        LHIKOut = 0.34,
        LastClip1OutTime = 0.5,
    },

    -- Extended reload  --

    ["reload_ext"] = {
        Source = "reload_ext",
        Time = 123 / 60,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        Framerate = 60,
        LHIK = true,
        LHIKIn = 0.1,
        LHIKEaseOut = 0.2,
        LHIKOut = 0.5,
        LastClip1OutTime = 2,
    },

    ["reload_empty_ext"] = {
        Source = "reload_empty_ext",
        Time = 140 / 60,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        Framerate = 60,
        LHIK = true,
        LHIKIn = 0.1,
        LHIKEaseOut = 0.2,
        LHIKOut = 0.34,
        LastClip1OutTime = 0.5,
    },

    -- Idle sights --
    
    ["enter_sight"] = {
        Source = "enter_sights",
        Framerate = 60,
        Time = 1 / 60,
    },
    ["idle_sights"] = {
        Source = "idle_sights",
        Framerate = 60,
        Time = 1 / 60,
    },
    ["exit_sight"] = {
        Source = "exit_sights",
        Framerate = 60,
        Time = 1 / 60,
    },
    
    ["enter_sight_empty"] = {
        Source = "enter_sights_empty",
        Framerate = 60,
        Time = 1 / 60,
    },
    ["idle_sights_empty"] = {
        Source = "idle_sights_empty",
        Framerate = 60,
        Time = 1 / 60,
    },
    ["exit_sight_empty"] = {
        Source = "exit_sights_empty",
        Framerate = 60,
        Time = 1 / 60,
    },

    -- Inspecc --
    
    ["enter_inspect"] = {
        Source = "enter_inspect",
        Framerate = 60,
        Time = 40 / 60,
        LHIK = true,
        LHIKIn = 0.2,
        LHIKOut = 0,
    },
    ["idle_inspect"] = {
        Source = "idle_inspect",
        Framerate = 60,
        Time = 240 / 60,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0,
    },
    ["exit_inspect"] = {
        Source = "exit_inspect",
        Framerate = 60,
        Time = 150 / 60,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.35,
    },

    -- Inspecc empty --
    
    ["enter_inspect_empty"] = {
        Source = "enter_inspect_empty",
        Framerate = 60,
        Time = 40 / 60,
        LHIK = true,
        LHIKIn = 0.2,
        LHIKOut = 0,
    },
    ["idle_inspect_empty"] = {
        Source = "idle_inspect_empty",
        Framerate = 60,
        Time = 240 / 60,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0,
    },
    ["exit_inspect_empty"] = {
        Source = "exit_inspect_empty",
        Framerate = 60,
        Time = 150 / 60,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.35,
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
    ["nois"] = {
        VMBodygroups = {{ind = 1, bg = 1}},
    },
    ["apmag"] = {
        VMBodygroups = {{ind = 2, bg = 1}},
    },
    ["extmag"] = {
        VMBodygroups = {{ind = 2, bg = 2}},
    },
    ["reducedbarrel"] = {
        VMBodygroups = {{ind = 3, bg = 1},{ind = 1, bg = 2}},
        AttPosMods = {
            [4] = {
                vpos = Vector(-0.05, 0, -2),
            },
        },
    },
    ["extendedbarrel"] = {
        VMBodygroups = {{ind = 3, bg = 2},{ind = 1, bg = 3}},
        AttPosMods = {
            [4] = {
                vpos = Vector(-0.05, 0, 1.4),
            },
            [7] = {
                vpos = Vector(0, -1.4, 7),
            },
        },
        Override_IronSightStruct = {
            Pos = Vector(-1.28, 0, 1.3),
            Ang = Angle(0.2, 0, 0),
            Magnification = 1.1,
        },
    },
    
    ["skin_wireframe"] = {
        VMSkin = 1,
    },
    ["skin_black"] = {
        VMSkin = 2,
    },
}

-- LUA --

SWEP.Hook_Think = function(wep)
	wep:GetOwner():GetViewModel():SetPoseParameter( "sights", 1 - wep:GetSightDelta() ) -- This is entirely possible thanks to Fesiug
end

-- Attachments --

SWEP.Attachments = {
    {
        PrintName = "Optic",
        DefaultAttName = "Iron Sights",
        MergeSlots = {3},
    },
    {
        PrintName = "Barrel",
        DefaultAttName = "Standard barrel (122mm)",
        Slot = {"lpfiveseven_barrel"},
		DefaultAttIcon = Material("entities/att/acwatt_lowpolyfivesevenstbar.png"),
    },
    {
        Slot = {"optic_lp"},
        Bone = "Slide",
        Offset = {
            vpos = Vector(-0.04, -0.5, -3),
            vang = Angle(90, 0, -90),
        },
        InstalledEles = {"nois"},
        CorrectivePos = Vector(-0.52, -0.5, 0),
		CorrectiveAng = Angle(0, -0.1, -20),
        ExtraSightDist = 7,
        Hidden = true,
    },
    {
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Slot = {"muzzle", "mw_muzzle"},
        Bone = "Barrel",
        Offset = {
            vpos = Vector(-0.05, 0, 0),
            vang = Angle(90, 0, -90),
        },
    },
    {
        PrintName = "Mag",
        Slot = "lpfiveseven_mag",
        DefaultAttName = "20 Round 5.7 Mag (SS197)",
		DefaultAttIcon = Material("entities/att/acwatt_lowpolyfivesevenstmag.png"),
    },
    {
        PrintName = "Underbarrel",
        Slot = {"foregrip_pistol", "style_pistol"},
        Bone = "Body",
        Offset = {
            vpos = Vector(0.1, -1, 4),
            vang = Angle(90, 0, -90),
        },
    },
    {
        PrintName = "Tactical",
        Slot = {"tac_pistol", "mw_tac"},
        Bone = "Body",
        VMScale = Vector(0.8,0.8,0.8),
        Offset = {
            vpos = Vector(0, -1.4, 6),
            vang = Angle(90, 0, -90),
        },
		ExcludeFlags = {"reducedbarrel"},
    },
    {
        PrintName = "Stock",
        Slot = "go_stock_pistol_bt",
        DefaultAttName = "No Stock",
        Bone = "Body",
        Offset = {
            vpos = Vector(0.1, -1, 1),
            vang = Angle(90, 0, -90),
        }
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
            vpos = Vector(0.4, 0.2, 0),
            vang = Angle(90, 0, -90),
        },
    },
    {
        PrintName = "Skins",
        PrintName = "Skin",
        Slot = {"skin_lpak"},
        DefaultAttName = "Tan",
        FreeSlot = true,
    },
}