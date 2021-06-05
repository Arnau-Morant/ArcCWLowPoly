SWEP.Base = "arccw_base"
SWEP.Spawnable = true
SWEP.Category = "ArcCW - Low Poly"
SWEP.AdminOnly = false
SWEP.UseHands = true

-- Muzzle and shell effects --

SWEP.MuzzleEffect = "muzzleflash_6"
SWEP.ShellModel = "models/shells/shell_338mag.mdl"
SWEP.ShellScale = 2
SWEP.ShellPitch = 84

SWEP.MuzzleEffectAttachment = 1
SWEP.CaseEffectAttachment = 2
SWEP.TracerNum = 1
SWEP.TracerCol = Color(255, 25, 25)
SWEP.TracerWidth = 3

-- Fake name --

SWEP.PrintName = "SPADR-98"

-- Real name --

SWEP.TrueName = "M98B" 

-- Trivia --

SWEP.Trivia_Class = "Sniper Rifle"
SWEP.Trivia_Desc = "A bolt action sniper rifle made for precise long range shooting sporting a high powered cartridge."
SWEP.Trivia_Manufacturer = "Bater"
SWEP.Trivia_Calibre = ".338 Lapua Magnum"
SWEP.Trivia_Mechanism = "Bolt action"
SWEP.Trivia_Country = "USA"
SWEP.Trivia_Year = 1997

-- Weapon slot --

SWEP.Slot = 2

-- Weapon's manufacturer real name --

if GetConVar("arccw_truenames"):GetBool() then
    SWEP.PrintName = SWEP.TrueName
    SWEP.Trivia_Manufacturer = "Barret"
end

-- Viewmodel / Worldmodel / Model FOV / Animations --

SWEP.ViewModel = "models/weapons/arccw/c_lowpolym98b.mdl"
SWEP.WorldModel = "models/weapons/w_snip_awp.mdl"
SWEP.ViewModelFOV = 65 -- 78
SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_RPG
 
SWEP.MirrorVMWM = true
SWEP.WorldModelOffset = {
    pos        =    Vector(-7, 6, -7),
    ang        =    Angle(-6, 0, 180),
    bone    =    "ValveBiped.Bip01_R_Hand",
}

-- Damage parameters --

SWEP.Damage = 89
SWEP.DamageMin = 171
SWEP.Range = 450
SWEP.Penetration = 35
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = nil
SWEP.MuzzleVelocity = 4400

-- Mag size --

SWEP.ChamberSize = 1
SWEP.Primary.ClipSize = 10
SWEP.ExtendedClipSize = 20
SWEP.ReducedClipSize = 5

-- Recoil --

SWEP.Recoil = 4
SWEP.RecoilSide = 2

SWEP.MaxRecoilBlowback = 1
SWEP.VisualRecoilMult = 0.3
SWEP.RecoilPunch = 1

-- Firerate / Firemodes --

SWEP.Delay = 60 / 650
SWEP.Num = 1
SWEP.Firemodes = {
    {
        PrintName = "BOLT",
        Mode = 1,
    },
    {
        Mode = 0
    }
}

SWEP.ManualAction = true

SWEP.ShootVol = 140
SWEP.ShootPitch = 90

SWEP.ProceduralRegularFire = false
SWEP.ProceduralIronFire = true

-- NPC stuff -- 

SWEP.NPCWeaponType = {"weapon_ar2", "weapon_crossbow"}
SWEP.NPCWeight = 150

-- Accuracy --

SWEP.AccuracyMOA = 0.03
SWEP.HipDispersion = 400
SWEP.MoveDispersion = 600

SWEP.Primary.Ammo = "SniperPenetratedRound"
SWEP.MagID = "m98b"

-- Speed mult --

SWEP.SpeedMult = 0.75
SWEP.SightedSpeedMult = 0.7
SWEP.SightTime = 0.8

-- Gun length --

SWEP.BarrelLength = 50
SWEP.ExtraSightDist = 20

-- Ironsight / Customization / Active pos ang --

SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "ar2"
SWEP.HoldtypeSights = "rpg"

SWEP.IronSightStruct = {
     Pos = Vector(-4.875, -3, 1.44),
     Ang = Angle(-0.101, 0, 0),
     Magnification = 1.1,
     SwitchToSound = "",
}

SWEP.CustomizePos = Vector(8.652, -8.035, -1.603)
SWEP.CustomizeAng = Angle(5.221, 44.321, -1.443)

SWEP.CrouchPos = Vector(-3, -4, 0)
SWEP.CrouchAng = Angle(0, 0, -12)

SWEP.ActivePos = Vector(0, 2, 1)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.BarrelOffsetSighted = Vector(0, 0, -1)
SWEP.BarrelOffsetHip = Vector(2, 0, -2)

-- Weapon sounds --

SWEP.ShootSound = "weapons/arccw/m98b/lowpolym98b_fire.ogg"
SWEP.ShootSoundSilenced = "weapons/arccw/m98b/lowpolym98b_supp.ogg"
SWEP.DistantShootSound = "weapons/arccw/m98b/lowpolym98b_dist.ogg"

-- Animations --

SWEP.Animations = {
    ["ready"] = {
        Source = "ready",
        Framerate = 60,
        Time = 2.5,
        LHIK = true,
        LHIKIn = 5,
        LHIKOut = 5,
    },
    ["draw"] = {
        Source = "draw",
        time = 0.3,
        Framerate = 60,
    },
    ["cycle"] = {
        Source = "cycle",
        Time = 1.5,
        Framerate = 60,
        ShellEjectAt = 0.7,
    },
    ["cycle_iron"] = {
        Source = "cycleiron",
        Time = 1.5,
        Framerate = 60,
        ShellEjectAt = 0.7,
    },
    ["idle"] = false,
    ["fire"] = {
        Source = "fire",
        Framerate = 60,
        Time = 0.5,
    },
    ["fire_iron"] = {
        Source = "fire",
        Framerate = 60,
        Time = 0.5,
    },
    ["reload"] = {
        Source = "reload",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Time = 3.4,
        Framerate = 60,
        LHIK = true,
        LHIKIn = 1,
        LHIKOut = 0.4,
        LastClip1OutTime = 2,
    },
    ["reload_empty"] = {
        Source = "reloadempty",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Framerate = 60,
        Time = 3.8,
        LHIK = true,
        LHIKIn = 1,
        LHIKOut = 1.4,
        LastClip1OutTime = 1.5,
    },
    ["fire_iron_empty"] = {
        Source = "fire",
        Framerate = 60,
        Time = 0.5,
    },
    ["fire_empty"] = {
        Source = "fire",
        Framerate = 60,
        Time = 0.5,
    },
}

-- Bodygroups -- 

SWEP.BulletBones = {
    [1] = "BulletsChamber",
    [2] = "Bullets2",
    [3] = "Bullets3",
}

SWEP.AttachmentElements = {
    ["nors"] = {
        VMBodygroups = {{ind = 1, bg = 1}},
        WMBodygroups = {{ind = 1, bg = 1}},
    },
    ["nobrake"] = {
        VMBodygroups = {{ind = 3, bg = 1}},
        WMBodygroups = {{ind = 3, bg = 1}},
    },
    ["muzz_lbar"] = {
        VMBodygroups = {{ind = 4, bg = 1}},
        WMBodygroups = {{ind = 4, bg = 1}},
    },
    ["muzz_hbar"] = {
        VMBodygroups = {{ind = 4, bg = 2}},
        WMBodygroups = {{ind = 4, bg = 2}},
    },
    ["mag"] = {
        VMBodygroups = {{ind = 2, bg = 0}},
        WMBodygroups = {{ind = 2, bg = 0}},
    },
    ["reducedmag"] = {
        VMBodygroups = {{ind = 2, bg = 1}},
        WMBodygroups = {{ind = 2, bg = 1}},
    },
    ["extendedmag"] = {
        VMBodygroups = {{ind = 2, bg = 2}},
        WMBodygroups = {{ind = 2, bg = 2}},
    },
    ["skin_black"] = {
        VMSkin = 1,
        WMSkin = 1,
    },
    ["skin_wireframe"] = {
        VMSkin = 2,
        WMSkin = 2,
    },
}

-- Attachments --

SWEP.Attachments = {
    {
        PrintName = "Optic",
        DefaultAttName = "Iron Sights",
        Slot = {"optic", "optic_sniper", "optic_lp"},
        Bone = "Body",
        InstalledEles = {"nors"},
        Offset = {
            vang = Angle(90, 0, -90),
            wang = Angle(-12, -1.7, 180),
        },
        SlideAmount = {
            vmin = Vector(0, -6.8, 6),
            vmax = Vector(0, -6.8, 8),
            wmin = Vector(7.5, 1.3, -6),
            wmax = Vector(7.5, 1.3, -6),
        },
        CorrectivePos = Vector(0, 0, 0),
        CorrectiveAng = Angle(0, 0, 0),
        ExtraSightDist = 4
    },
    {
        PrintName = "Backup Optic",
        Slot = "backup",
        Bone = "Body",
        ExtraSightDist = 6,
        Offset = {
            vpos = Vector(0, -6.8, 19),
            vang = Angle(90, 0, -90),
            wang = Angle(-10, -1.7, 180),
            wpos = Vector(19, 1.7, -8.3),
        },
        KeepBaseIrons = true,
    },
    {
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Slot = "muzzle",
        Bone = "Body",
        InstalledEles = {"nobrake"},
        Offset = {
            vpos = Vector(0, -5.55, 37.5),
            vang = Angle(90, 0, -90),
            wpos = Vector(37.4, 2.3, -10.5),
            wang = Angle(-11, -1.5, 180),
        },
    },
    { 
        PrintName = "Underbarrel",
        Slot = {"foregrip", "ubgl", "bipod"},
        Bone = "Body",
        Offset = {
            vang = Angle(90, 0, -90),
            wang = Angle(-10, -1.5, 180),
        },
        SlideAmount = {
            vmin = Vector(0, -4.5, 16),
            vmax = Vector(0, -4.5, 21),
            wmin = Vector(16, 1.8, -5.2),
            wmax = Vector(16, 1.8, -5.2),
        },
    },
    {
        PrintName = "Tactical",
        Slot = "tac",
        Bone = "Body",
        Offset = {
            vpos = Vector(1, -5.4, 21),
            vang = Angle(90, 0, 0),
            wpos = Vector(21, 2.9, -7.3),
            wang = Angle(-11, -1.5, -90),
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
        PrintName = "Ammo Type",
        Slot = "ammo_bullet",
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
            vpos = Vector(0.8, -5.3, 8),
            vang = Angle(90, 0, -90),
            wpos = Vector(9, 2.3, -4.6),
            wang = Angle(-14, -2, 180),
        },
    },
    {
        PrintName = "Skins",
        PrintName = "Skin",
        Slot = {"skin_lpm98b"},
        DefaultAttName = "Tan",
        FreeSlot = true
    },
}