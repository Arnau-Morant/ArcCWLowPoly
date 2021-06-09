SWEP.Base = "arccw_base"
SWEP.Spawnable = true
SWEP.Category = "ArcCW - Low Poly"
SWEP.AdminOnly = false
SWEP.UseHands = true

-- Muzzle and shell effects --

SWEP.MuzzleEffect = "muzzleflash_3"
SWEP.ShellModel = "models/shells/shell_556.mdl"
SWEP.ShellScale = 1.7
SWEP.ShellMaterial = "models/weapons/arcticcw/shell_556mm"
SWEP.ShellPitch = 90

SWEP.MuzzleEffectAttachment = 1
SWEP.CaseEffectAttachment = 2
SWEP.TracerNum = 5
SWEP.TracerCol = Color(25, 255, 25)
SWEP.TracerWidth = 2

-- Fake name --

SWEP.PrintName = "Spandau"

-- Real name --

SWEP.TrueName = "MG-42" 

-- Trivia --

SWEP.Trivia_Class = "MaschinenGewehr"
SWEP.Trivia_Desc = "Inaccurate, bulky and hard to operate, designed for offensive/deffensive area denial."
SWEP.Trivia_Manufacturer = "Whermatch Militär-Programm"
SWEP.Trivia_Calibre = "7.92×57mm Mauser"
SWEP.Trivia_Mechanism = "Recoil-operated, roller-locked"
SWEP.Trivia_Country = "Nazi Germany"
SWEP.Trivia_Year = 1942

-- Weapon slot --

SWEP.Slot = 2

-- Weapon's manufacturer real name --

if GetConVar("arccw_truenames"):GetBool() then
    SWEP.PrintName = SWEP.TrueName
    SWEP.Trivia_Manufacturer = "Mauser"
end

-- Viewmodel / Worldmodel / Model FOV / Animations --

SWEP.ViewModel = "models/weapons/arccw/c_lowpolymg42.mdl"
SWEP.WorldModel = "models/weapons/w_mach_m249para.mdl"
SWEP.ViewModelFOV = 70
SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
 
SWEP.MirrorVMWM = true
SWEP.WorldModelOffset = {
    pos        =    Vector(-4, 6, -9),
    ang        =    Angle(-6, 0, 180),
    bone    =    "ValveBiped.Bip01_R_Hand",
}

-- Damage parameters --

SWEP.Damage = 66
SWEP.DamageMin = 34
SWEP.Range = 100
SWEP.Penetration = 28
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = nil
SWEP.MuzzleVelocity = 740

-- Mag size --

SWEP.ChamberSize = 0
SWEP.Primary.ClipSize = 50
SWEP.ExtendedClipSize = 150
SWEP.ReducedClipSize = 35

-- Recoil --

SWEP.Recoil = 0.55
SWEP.RecoilSide = 0.4

SWEP.MaxRecoilBlowback = 0
SWEP.VisualRecoilMult = 0.2
SWEP.RecoilPunch = 0.5

-- Firerate / Firemodes --

SWEP.Delay = 60 / 1200
SWEP.Num = 1
SWEP.Firemodes = {
    {
        Mode = 2,
    },
    {
        Mode = 0
    }
}

-- NPC stuff -- 

SWEP.NPCWeaponType = "weapon_ar2"
SWEP.NPCWeight = 128

-- Accuracy --

SWEP.AccuracyMOA = 2.4
SWEP.HipDispersion = 600
SWEP.MoveDispersion = 900

SWEP.Primary.Ammo = "ar2"
SWEP.MagID = "maschinengewehr"

-- Speed mult --

SWEP.SpeedMult = 0.58
SWEP.SightedSpeedMult = 0.5 
SWEP.SightTime = 1

-- Gun length --

SWEP.BarrelLength = 60
SWEP.ExtraSightDist = 10

-- Ironsight / Customization / Active pos ang --

SWEP.HolsterPos = Vector(12, -1, -1)

SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "ar2"
SWEP.HoldtypeSights = "rpg"

SWEP.IronSightStruct = {
     Pos = Vector(-5.421, 0, 3),
     Ang = Angle(0, 0, 0),
     Magnification = 1,
     SwitchToSound = "",
}


SWEP.CustomizePos = Vector(12, -1, -1)
SWEP.CustomizeAng = Angle(6, 44, -2)

SWEP.ActivePos = Vector(0, 5.5, 0)
SWEP.ActiveAng = Angle(0, 0, 0)

-- Weapon sounds --

SWEP.ShootSound = "weapons/arccw/mg42/lowpolymg42_shot.ogg"
SWEP.ShootSoundSilenced = "weapons/arccw/mg42/lowpolymg42_supp.ogg"
SWEP.DistantShootSound = "weapons/arccw/mg42/lowpolymg42_dist.ogg"

-- Bodygroups --

SWEP.BulletBones = {
    [1] = "Bullets.1",
    [2] = "Bullets.2",
    [3] = "Bullets.3",
    [4] = "Bullets.4",
    [5] = "Bullets.5",
    [6] = "Bullets.6",
    [7] = "Bullets.7"
}

SWEP.AttachmentElements = {
    ["irons"] = {
        VMBodygroups = {{ind = 1, bg = 0}},
        WMBodygroups = {{ind = 1, bg = 0}},
    },
    ["picatinny"] = {
        VMBodygroups = {{ind = 1, bg = 1}},
        WMBodygroups = {{ind = 1, bg = 1}},
    },
    ["front"] = {
        VMBodygroups = {{ind = 2, bg = 0}},
        WMBodygroups = {{ind = 2, bg = 0}},
    },
    ["muzz_lbar"] = {
        VMBodygroups = {{ind = 2, bg = 0}},
        WMBodygroups = {{ind = 2, bg = 0}},
    },
    ["muzz_hbar"] = {
        VMBodygroups = {{ind = 2, bg = 0}},
        WMBodygroups = {{ind = 2, bg = 0}},
    },
    ["frontempty"] = {
        VMBodygroups = {{ind = 2, bg = 1}},
        WMBodygroups = {{ind = 2, bg = 1}},
    },
    ["laserempty"] = {
        VMBodygroups = {{ind = 3, bg = 0}},
        WMBodygroups = {{ind = 3, bg = 0}},
    },
    ["laserpicatinny"] = {
        VMBodygroups = {{ind = 3, bg = 1}},
        WMBodygroups = {{ind = 3, bg = 1}},
    },
    ["trigger"] = {
        VMBodygroups = {{ind = 4, bg = 0}},
        WMBodygroups = {{ind = 4, bg = 0}},
    },
    ["dualstagetrigger"] = {
        VMBodygroups = {{ind = 4, bg = 1}},
        WMBodygroups = {{ind = 4, bg = 1}},
    },
    ["skin_wireframe"] = {
        VMSkin = 1,
        WMSkin = 1,
    },
}

-- Animations --

SWEP.Animations = {
    ["ready"] = {
        Source = "ready",
        Framerate = 60,
        Time = 2,
        LHIK = true,
        LHIKIn = 5,
        LHIKOut = 5,
    },
    ["draw"] = {
        Source = "draw",
        time = 1,
        SoundTable = {{ s = "weapons/arccw/mg42/lowpolymg42_hold.ogg", t = 0 }},
        Framerate = 60,
    },
    ["draw_empty"] = {
        Source = "draw",
        time = 1,
        SoundTable = {{ s = "weapons/arccw/mg42/lowpolymg42_hold.ogg", t = 0 }},
        Framerate = 60,
    },
    ["idle"] = false,
    ["fire_iron"] = {
        Source = "fireiron",
        Framerate = 60,
        Time = 0.4,
        ShellEjectAt = 0,
    },
    ["fire"] = {
        Source = "fire",
        Framerate = 60,
        Time = 30 / 60,
        ShellEjectAt = 0.05,
    },
    ["fire_bipod"] = {
        Source = "fireiron",
        Framerate = 60,
        Time = 0.4,
        ShellEjectAt = 0,
    },
    ["fire_bipod_empty"] = {
        Source = "fireironempty",
        Framerate = 60,
        Time = 0.4,
        ShellEjectAt = 0,
    },
    ["reload"] = {
        Source = "reload",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Time = 5.4,
        Framerate = 60,
        LHIK = true,
        LHIKIn = 0.2,
        LHIKOut = 0.4,
        LastClip1OutTime = 3,
    },
    ["reload_empty"] = {
        Source = "reloadempty",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Framerate = 60,
        Time = 6,
        LHIK = true,
        LHIKIn = 0.2,
        LHIKOut = 1.43,
    },
    ["fire_iron_empty"] = {
        Source = "fireironempty",
        SoundTable = {{ s = "weapons/arccw/mg42/lowpolymg42_lastbullet.ogg", t = 0.05 }},
        Framerate = 60,
        Time = 0.4,
        ShellEjectAt = 0,
    },
    ["fire_empty"] = {
        Source = "fireempty",
        SoundTable = {{ s = "weapons/arccw/mg42/lowpolymg42_lastbullet.ogg", t = 0.05 }},
        Framerate = 60,
        Time = 0.4,
        ShellEjectAt = 0,
    },
}

-- Attachments --

SWEP.Attachments = {
    {
        PrintName = "Optic",
        DefaultAttName = "Iron Sights",
        Slot = "optic_lp",
        Bone = "Body",
        InstalledEles = {"picatinny"},
        Offset = {
            vpos = Vector(0, -5.8, 13.5),
            vang = Angle(90, 0, -90),
            wpos = Vector(12, 0.5, -8.5),
            wang = Angle(-15, 4, 180),
        },
    },
    {
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Slot = "muzzle",
        Bone = "Body",
        InstalledEles = {"frontempty"},
        Offset = {
            vpos = Vector(0, -4, 31),
            vang = Angle(90, 0, -90),
            wpos = Vector(29, -0.6, -10.5),
            wang = Angle(-15, 4, 180),
        },
    },
    { 
        PrintName = "Underbarrel",
        Slot = {"foregrip", "bipod"},
        Bone = "Body",
        Offset = {
            vpos = Vector(0, -3, 20),
            vang = Angle(90, 0, -90),
            wpos = Vector(14, 1, -6),
            wang = Angle(-15, 4, 180),
        },
    },
    {
        PrintName = "Tactical",
        Slot = "tac",
        Bone = "Body",
        InstalledEles = {"laserpicatinny"},
        Offset = {
            vpos = Vector(0, -2.7, 29),
            vang = Angle(90, 0, -90),
            wpos = Vector(27.5, -0.15, -9),
            wang = Angle(-15, 4, 180)
        },
    },
    {
        PrintName = "Grip",
        Slot = "grip",
        DefaultAttName = "Standard Grip"
    },
    {
        PrintName = "Stock",
        Slot = "stock",
        DefaultAttName = "Standard Stock"
    },
    {
        PrintName = "Fire Group",
        Slot = {"fcg", "fcg_mg42"},
        DefaultAttName = "Standard FCG"
    },
    {
        PrintName = "Ammo Type",
        Slot = "ammo_bullet"
    },
    {
        PrintName = "Perk",
        Slot = "perk"
    },
    {
        PrintName = "Charm",
        Slot = "charm",
        FreeSlot = true,
        Bone = "Body", 
        Offset = {
            vpos = Vector(1, -3.6, 3),
            vang = Angle(90, 0, -90),
            wpos = Vector(2.5, 2.2, -3.5),
            wang = Angle(-15, 0, -180)
        },
    },
    {
        PrintName = "Skins",
        PrintName = "Skin",
        Slot = {"skin_lpmg42"},
        DefaultAttName = "Classic",
        FreeSlot = true
    },
}