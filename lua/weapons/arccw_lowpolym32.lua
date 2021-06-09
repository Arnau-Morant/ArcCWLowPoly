SWEP.Base = "arccw_base"
SWEP.Spawnable = true
SWEP.Category = "ArcCW - Low Poly"
SWEP.AdminOnly = false
SWEP.UseHands = true

-- Muzzle and shell effects --
 
-- SWEP.MuzzleEffect = "muzzleflash_shotgun"
SWEP.MuzzleEffect = "muzzleflash_m79"
SWEP.ShellModel = "models/shells/shell_12gauge.mdl"
SWEP.ShellPitch = 100
SWEP.ShellSounds = ArcCW.ShotgunShellSoundsTable
SWEP.ShellScale = 1.5

SWEP.MuzzleEffectAttachment = 1

-- Fake name --

SWEP.PrintName = "BAR"

-- Real name --

SWEP.TrueName = "M32 MGL" 

-- Trivia --

SWEP.Trivia_Class = "Grenade Launcher"
SWEP.Trivia_Desc = "Big ass revolver that goes *thump*"
SWEP.Trivia_Manufacturer = "Miller"
SWEP.Trivia_Calibre = "40×46mm"
SWEP.Trivia_Mechanism = "Revolver Style Cylinder"
SWEP.Trivia_Country = "South Africa"
SWEP.Trivia_Year = 1980

-- Weapon slot --

SWEP.Slot = 3

-- Weapon's manufacturer real name --

if GetConVar("arccw_truenames"):GetBool() then
    SWEP.PrintName = SWEP.TrueName
    SWEP.Trivia_Manufacturer = "Milkor"
end

-- Viewmodel / Worldmodel / Model FOV / Animations --

SWEP.ViewModel = "models/weapons/arccw/c_lowpolym32.mdl"
SWEP.WorldModel = "models/weapons/w_rif_m4a1.mdl"
SWEP.ViewModelFOV = 60
SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
 
SWEP.MirrorVMWM = true
SWEP.WorldModelOffset = {
    pos        =    Vector(-4, 6, -8),
    ang        =    Angle(-6, 0, 180),
    bone    =    "ValveBiped.Bip01_R_Hand",
}

-- Damage parameters --

SWEP.Damage = 33
SWEP.DamageMin = 11
SWEP.Range = 100

SWEP.Penetration = 5
SWEP.ShootEntity = "arccw_lpm32_he"
SWEP.MuzzleVelocity = 1000000

-- Mag size --

SWEP.ChamberSize = 0
SWEP.Primary.ClipSize = 6
SWEP.ExtendedClipSize = 6
SWEP.ReducedClipSize = 6

-- Recoil --

SWEP.Recoil = 5
SWEP.RecoilSide = 4

SWEP.MaxRecoilBlowback = 1
SWEP.VisualRecoilMult = 1
SWEP.RecoilPunch = 0.5

-- Firerate / Firemodes --

SWEP.Delay = 60 / 160
SWEP.Num = 1
SWEP.Firemodes = {
    {
        PrintName = "SACT",
        Mode = 1,
    },
    {
        Mode = 0
    }
}

SWEP.ShootVol = 160
SWEP.ShootPitch = 100

SWEP.ProceduralRegularFire = false
SWEP.ProceduralIronFire = false

SWEP.ReloadInSights = true

-- NPC stuff -- 

SWEP.NPCWeaponType = {"weapon_shotgun"}
SWEP.NPCWeight = 210

-- Accuracy --

SWEP.AccuracyMOA = 35
SWEP.HipDispersion = 300
SWEP.MoveDispersion = 300

SWEP.Primary.Ammo = "smg1_grenade"

-- Speed mult --

SWEP.SpeedMult = 0.7
SWEP.SightedSpeedMult = 0.7
SWEP.SightTime = 0.5

-- Gun length --

SWEP.BarrelLength = 38
SWEP.ExtraSightDist = 10

-- Ironsight / Customization / Active pos ang --

SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "ar2"
SWEP.HoldtypeSights = "rpg"

SWEP.IronSightStruct = {
     Pos = Vector(-5.12, 0, 2.759),
     Ang = Angle(0, 0, 0),
     Magnification = 1.1,
     SwitchToSound = "",
}

SWEP.CustomizePos = Vector(8.652, -3, -1.603)
SWEP.CustomizeAng = Angle(5.221, 44.321, -1.443)

SWEP.ActivePos = Vector(-1, 3, 2)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.CrouchPos = Vector(-3, 1, 0)
SWEP.CrouchAng = Angle(0, 0, -12)

SWEP.BarrelOffsetSighted = Vector(0, 0, -1)
SWEP.BarrelOffsetHip = Vector(2, 0, -2)

SWEP.HolsterPos = Vector(4, 1, 1)

-- Weapon sounds --

SWEP.ShootSound = "weapons/arccw/m32/lowpolym32_fire1b.ogg"

-- LUA --

SWEP.Hook_Think = function(wep)
	wep:GetOwner():GetViewModel():SetPoseParameter( "sights", 1 - wep:GetSightDelta() ) -- This is entirely possible thanks to Fesiug
end

-- Animations --

SWEP.Animations = {
    ["ready"] = {
        Source = "ready",
        Time = 1,
        Framerate = 60,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.5,
    },
    ["draw"] = {
        Source = "draw",
        Time = 1,
        Framerate = 60,
    },
    ["idle"] = false,
    ["bash"] = {
        Source = "bash",
        Framerate = 60,
        Time = 1,
        LHIK = true,
        LHIKIn = 5,
        LHIKOut = 5,
    },
    ["fire"] = {
        Source = "fire",
        Framerate = 60,
        Time = 0.9,
    },
    ["fire_iron"] = {
        Source = "fireiron",
        Framerate = 60,
        Time = 0.9, 
    },
    ["reload"] = {
        Source = "reload",
        Time = 5.2,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_REVOLVER,
        LHIK = true,
        LHIKIn = 1,
        LHIKOut = 0.3,
        LastClip1OutTime = 2,
    },
    ["reload_iron"] = {
        Source = "reloadiron",
        Time = 5.2,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_REVOLVER,
        LHIK = true,
        LHIKIn = 1,
        LHIKOut = 0.3,
        LastClip1OutTime = 2,
    },
}

-- Bodygroups -- 

SWEP.BulletBones = {
    [1] = "Proy1",
    [2] = "Proy2",
    [3] = "Proy3",
    [4] = "Proy4",
    [5] = "Proy5",
    [6] = "Proy6",
}

SWEP.AttachmentElements = {
    ["fg_att"] = {
        VMBodygroups = {{ind = 1, bg = 1}},
        WMBodygroups = {{ind = 1, bg = 1}},
    },
    ["muzz_lbar"] = {
        VMBodygroups = {{ind = 2, bg = 1}},
        WMBodygroups = {{ind = 2, bg = 1}},
    },
    ["nostock"] = {
        VMBodygroups = {{ind = 3, bg = 1}},
        WMBodygroups = {{ind = 3, bg = 1}},
    },
    ["ammo_incendiary"] = {
        VMBodygroups = {{ind = 4, bg = 1}},
        WMBodygroups = {{ind = 4, bg = 1}},
        TrueNameChange = "M32 MGL Inferno",
        NameChange = "BAB",
    },
    ["ammo_flashbang"] = {
        VMBodygroups = {{ind = 4, bg = 2}},
        WMBodygroups = {{ind = 4, bg = 2}},
        TrueNameChange = "M32 MGL Stunstorm",
        NameChange = "BAS",
    },
    ["skin_wireframe"] = {
        VMSkin = 1,
        WMSkin = 1,
    },
    ["skin_black"] = {
        VMSkin = 2,
        WMSkin = 2,
    },
    ["skin_black_wireframe"] = {
        VMSkin = 3,
        WMSkin = 3,
    },
}

-- Attachments --

SWEP.RejectAttachments = {
    ["perk_extendedmags"] = true,
}

SWEP.Attachments = {
    {
        PrintName = "Optic",
        DefaultAttName = "Picatinny",
        Slot = {"optic_lp","mw_optic_lp"},
        Bone = "FrontBody",
        Offset = {
            vpos = Vector(0, -1, 1),
            vang = Angle(90, 0, -90),
            wpos = Vector(9.4, 0.4, -7.3),
            wang = Angle(-3, 0, 180),
        },
        ExtraSightDist = 4
    },
    {
        PrintName = "Barrel",
        DefaultAttName = "Standard Barrel",
        Slot = {"muzzle_m32"},
        Bone = "FrontBody",
        Offset = {
            vpos = Vector(-0.03, -0.05, -0.5),
            vang = Angle(90, 0, -90),
            wpos = Vector(30, 1, -8),
            wang = Angle(-10, -2, 180),
        },
    },
    { 
        PrintName = "Underbarrel",
        DefaultAttName = "Default Foregrip",
        Slot = {"foregrip"},
        Bone = "FrontBody",
        InstalledEles = {"fg_att"},
        Offset = {
            vpos = Vector(0, 3.5, 11),
            vang = Angle(90, 0, -90),
            wpos = Vector(18, 0.6, -3.2),
            wang = Angle(-2, 0, 180),
        },
    },
    {
        PrintName = "Tactical",
        Slot = {"tac_pistol", "mw_tac"},
        Bone = "FrontBody",
        Offset = {
            vpos = Vector(1.7, 1.7, 9.5),
            vang = Angle(90, 0, 0),
            wpos = Vector(18, 2, -5),
            wang = Angle(-5, 0, -90),
        },
    },
    {
        PrintName = "Grip",
        Slot = "grip",
        DefaultAttName = "Standard Grip"
    },
    {
        PrintName = "Stock",
        Slot = {"stock","stock_m32"},
        DefaultAttName = "Standard Stock",
        ExcludeFlags = {"removestock"}
    },
    {
        PrintName = "Fire Group",
        Slot = "fcg",
        DefaultAttName = "Standard FCG"
    },
    {
        PrintName = "Ammo Type",
        Slot = {"ammo_m32"},
        DefaultAttName = "40mm High Explosive"
    },
    {
        PrintName = "Perk",
        Slot = {"perk", "perk_m32"}
    },
    {
        PrintName = "Charm",
        Slot = {"charm", "fml_charm"},
        FreeSlot = true,
        Bone = "BackBody", 
        Offset = {
            vpos = Vector(0.5, -4.3, 5),
            vang = Angle(90, 0, -90),
            wpos = Vector(5.2, 1.2, -3.5),
            wang = Angle(-5, 0, -180),
        },
    },
    {
        PrintName = "Skins",
        PrintName = "Skin",
        Slot = {"skin_lpm32"},
        DefaultAttName = "Tan",
        FreeSlot = true
    },
}