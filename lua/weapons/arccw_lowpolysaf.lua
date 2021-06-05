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
SWEP.TracerNum = 0
SWEP.TracerCol = Color(25, 255, 25)
SWEP.TracerWidth = 2

-- Fake name --

SWEP.PrintName = "PDW-40"

-- Real name --

SWEP.TrueName = "SAF" 

-- Trivia --

SWEP.Trivia_Class = "SMG"
SWEP.Trivia_Desc = "A downsized SG 540 that fires .40 S&W, lovely."
SWEP.Trivia_Manufacturer = "FMOD"
SWEP.Trivia_Calibre = ".40 S&W"
SWEP.Trivia_Mechanism = "Blowback-operated, closed bolt"
SWEP.Trivia_Country = "Chile"
SWEP.Trivia_Year = 1993

-- Weapon slot --

SWEP.Slot = 2

-- Weapon's manufacturer real name --

if GetConVar("arccw_truenames"):GetBool() then
    SWEP.PrintName = SWEP.TrueName
    SWEP.Trivia_Manufacturer = "FAMAE"
end

-- Viewmodel / Worldmodel / Model FOV / Animations --

SWEP.ViewModel = "models/weapons/arccw/c_lowpolysaf.mdl"
SWEP.WorldModel = "models/weapons/w_smg_mp5.mdl"
SWEP.ViewModelFOV = 62
SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
 
SWEP.MirrorVMWM = true
SWEP.WorldModelOffset = {
    pos        =    Vector(-13, 6, -6),
    ang        =    Angle(-6, 0, 180),
    bone    =    "ValveBiped.Bip01_R_Hand",
}

-- Damage parameters --

SWEP.Damage = 28
SWEP.DamageMin = 11
SWEP.Range = 100
SWEP.Penetration = 1
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = nil
SWEP.MuzzleVelocity = 390

-- Mag size --

SWEP.ChamberSize = 1
SWEP.Primary.ClipSize = 30
SWEP.ExtendedClipSize = 60
SWEP.ReducedClipSize = 20

-- Recoil --

SWEP.Recoil = 0.7
SWEP.RecoilSide = 1
SWEP.RecoilRise = 2

SWEP.MaxRecoilBlowback = -1
SWEP.VisualRecoilMult = 0
SWEP.RecoilPunch = 1

-- Firerate / Firemodes --

SWEP.Delay = 60 / 1300
SWEP.Num = 1
SWEP.Firemodes = {
    {
        Mode = 2,
    },
    {
        Mode = 1,
    },
    {
        Mode = 0
    }
}

-- NPC stuff -- 

SWEP.NPCWeaponType = "weapon_smg1"
SWEP.NPCWeight = 60

-- Accuracy --

SWEP.AccuracyMOA = 11
SWEP.HipDispersion = 300
SWEP.MoveDispersion = 700

SWEP.Primary.Ammo = "pistol"
SWEP.MagID = "saf"

-- Speed mult --

SWEP.SpeedMult = 0.8
SWEP.SightedSpeedMult = 0.7 
SWEP.SightTime = 0.3

-- Gun length --

SWEP.BarrelLength = 18
SWEP.ExtraSightDist = 7

-- Ironsight / Customization / Active pos ang --

SWEP.HolsterPos = Vector(12, -1, -1)

SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "smg"
SWEP.HoldtypeSights = "smg"

SWEP.IronSightStruct = {
     Pos = Vector(-4.52, -5.961, 1.32),
     Ang = Angle(0.3, 0, 0),
     Magnification = 1,
     SwitchToSound = "",
}


SWEP.CustomizePos = Vector(14, -8, -2)
SWEP.CustomizeAng = Angle(6, 50, -2)

SWEP.ActivePos = Vector(-1, 2, 0)
SWEP.ActiveAng = Angle(0, 0, 0)

-- Weapon sounds --

SWEP.ShootSound = "weapons/arccw/saf/lowpolysaf_shot.ogg"
SWEP.ShootSoundSilenced = "weapons/arccw/saf/lowpolysaf_supp.ogg"
SWEP.DistantShootSound = "weapons/arccw/saf/lowpolysaf_distWAD.ogg"

-- Bodygroups --

SWEP.BulletBones = {
    [1] = "Bullets.1",
    [2] = "Bullets.2",
    [3] = "Bullets.3",
}

SWEP.AttachmentElements = {
    ["pistol_onehand"] = {
        VMBodygroups = {{ind = 1, bg = 1}},
        WMBodygroups = {{ind = 1, bg = 1}},
    },
    ["PicatinnyS"] = {
        VMBodygroups = {{ind = 2, bg = 1}},
        WMBodygroups = {{ind = 2, bg = 1}},
    },
    ["PicatinnyFG"] = {
        VMBodygroups = {{ind = 3, bg = 1}},
        WMBodygroups = {{ind = 3, bg = 1}},
    },
    ["PicatinnyLS"] = {
        VMBodygroups = {{ind = 4, bg = 1}},
        WMBodygroups = {{ind = 4, bg = 1}},
    },
    ["FrontE"] = {
        VMBodygroups = {{ind = 6, bg = 1}},
        WMBodygroups = {{ind = 6, bg = 1}},
    },
    ["reducedmag"] = {
        VMBodygroups = {{ind = 7, bg = 1}},
        WMBodygroups = {{ind = 7, bg = 1}},
    },
    ["extendedmag"] = {
        VMBodygroups = {{ind = 7, bg = 2}},
        WMBodygroups = {{ind = 7, bg = 2}},
    },
    ["st_bar"] = {
        VMBodygroups = {{ind = 8, bg = 0}},
        WMBodygroups = {{ind = 8, bg = 0}},
    },
    ["muzz_hbar"] = {
        VMBodygroups = {{ind = 8, bg = 1}},
        WMBodygroups = {{ind = 8, bg = 1}},
    },
    ["skin_blackp"] = {
        VMSkin = 1,
        WMSkin = 1,
    },
}

-- Animations --

SWEP.Animations = {
    ["ready"] = {
        Source = "ready",
        Framerate = 60,
        LHIK = true,
        time = 1,
        LHIKIn = 0,
        LHIKOut = 0.3,
    },
    ["draw"] = {
        Source = "draw",
        time = 1,
        Framerate = 60,
    },
    ["draw_empty"] = {
        Source = "draw",
        time = 1,
        Framerate = 60,
    },
    ["idle"] = {
        Source = "idle",
        Framerate = 60,
    },
    ["idle_empty"] = {
        Source = "idleempty",
        Framerate = 60,
    },
    ["fire_iron"] = {
        Source = "shootiron",
        Framerate = 60,
        SoundTable = {{ s = "weapons/arccw/saf/lowpolysaf_mechanism.ogg", t = 0.1 }},
        Time = 0.4,
        ShellEjectAt = 0,
    },
    ["fire"] = {
        Source = "shoot",
        Framerate = 60,
        SoundTable = {{ s = "weapons/arccw/saf/lowpolysaf_mechanism.ogg", t = 0.1 }},
        Time = 0.4,
        ShellEjectAt = 0,
    },
    ["reload"] = {
        Source = "reload",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SMG1,
        Time = 130 / 60,
        Framerate = 60,
        LHIK = true,
        LHIKIn = 0.3,
        LHIKOut = 0.24,
    },
    ["reload_empty"] = {
        Source = "dryreload",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SMG1,
        Framerate = 60,
        Time = 160 / 60,
        LHIK = true,
        LHIKIn = 0.1,
        LHIKOut = 0.2,
    },
    ["fire_iron_empty"] = {
        Source = "shootironempty",
        SoundTable = {{ s = "weapons/arccw/saf/lowpolysaf_empty.ogg", t = 0 }},
        Framerate = 60,
        Time = 0.2,
        ShellEjectAt = 0,
    },
    ["fire_empty"] = {
        Source = "shootempty",
        SoundTable = {{ s = "weapons/arccw/saf/lowpolysaf_empty.ogg", t = 0 }},
        Framerate = 60,
        Time = 0.2,
        ShellEjectAt = 0,
    },
}

-- Attachments --

SWEP.RejectAttachments = {
  ["foregrip_angled"] = true,
}

SWEP.Attachments = {
    {
        PrintName = "Optic",
        DefaultAttName = "Iron Sights",
        Slot = "optic_lp",
        Bone = "Body",
        InstalledEles = {"PicatinnyS"},
        Offset = {
            vpos = Vector(0, -6.3, 6.3),
            vang = Angle(90, 0, -90),
            wpos = Vector(7, 1.3, -6.4),
            wang = Angle(-7, 0, 180),
        },
    },
    {
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Slot = "muzzle",
        Bone = "Body",
        InstalledEles = {"FrontE", "st_bar"},
        Offset = {
            vpos = Vector(0, -4, 17.5),
            vang = Angle(90, 0, -90),
            wpos = Vector(18, 1.5, -5.5),
            wang = Angle(-8, 0, 180),
        },
    },
    { 
        PrintName = "Underbarrel",
        Slot = {"foregrip", "style_pistol"},
        Bone = "Body",
        InstalledEles = {"PicatinnyFG"},
        Offset = {
            vpos = Vector(0, -2.9, 12.5),
            vang = Angle(90, 0, -90),
            wpos = Vector(14, 1.3, -3.7),
            wang = Angle(-8, 0, 180),
        },
    },
    {
        PrintName = "Tactical",
        Slot = "tac",
        Bone = "Body",
        InstalledEles = {"PicatinnyLS"},
        Offset = {
            vpos = Vector(0.9, -4, 13),
            vang = Angle(90, 0, 0),
            wpos = Vector(13, 2.3, -4.6),
            wang = Angle(-6, 0, -90)
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
        Slot = "fcg",
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
            vpos = Vector(0.7, -3.6, 2),
            vang = Angle(90, 0, -90),
            wpos = Vector(2.5, 1.7, -4),
            wang = Angle(-15, 0, -180)
        },
    },
    {
        PrintName = "Skins",
        PrintName = "Skin",
        Slot = {"skin_lpsaf"},
        DefaultAttName = "Green",
        FreeSlot = true
    },
}