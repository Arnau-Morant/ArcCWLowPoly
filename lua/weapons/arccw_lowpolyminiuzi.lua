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
SWEP.TracerNum = 0
SWEP.TracerCol = Color(25, 255, 25)
SWEP.TracerWidth = 2

-- Fake name --

SWEP.PrintName = "S-ZI"

-- Real name --

SWEP.TrueName = "Mini UZI" 

-- Trivia --

SWEP.Trivia_Class = "SMG"
SWEP.Trivia_Desc = "More compact and maneuverable UZI."
SWEP.Trivia_Manufacturer = "DONDE"
SWEP.Trivia_Calibre = "9x19mm Para"
SWEP.Trivia_Mechanism = "Open bolt, blowback"
SWEP.Trivia_Country = "Israel"
SWEP.Trivia_Year = 1980

-- Weapon slot --

SWEP.Slot = 2

-- Weapon's manufacturer real name --

if GetConVar("arccw_truenames"):GetBool() then
    SWEP.PrintName = SWEP.TrueName
    SWEP.Trivia_Manufacturer = "IMI"
end

-- Viewmodel / Worldmodel / Model FOV / Animations --

SWEP.ViewModel = "models/weapons/arccw/c_lowpolyminiuzi.mdl"
SWEP.WorldModel = "models/weapons/w_smg_mac10.mdl"
SWEP.ViewModelFOV = 80
SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
 
SWEP.MirrorVMWM = true
SWEP.WorldModelOffset = {
    pos        =    Vector(-10, 6, -4),
    ang        =    Angle(-6, 0, 180),
    bone    =    "ValveBiped.Bip01_R_Hand",
}

-- Damage parameters --

SWEP.Damage = 20
SWEP.DamageMin = 8
SWEP.Range = 100
SWEP.Penetration = 1
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = nil
SWEP.MuzzleVelocity = 400

-- Mag size --

SWEP.ChamberSize = 0
SWEP.Primary.ClipSize = 30
SWEP.ExtendedClipSize = 40
SWEP.ReducedClipSize = 20

-- Recoil --

SWEP.Recoil = 0.4
SWEP.RecoilSide = 0.3

SWEP.MaxRecoilBlowback = -2
SWEP.VisualRecoilMult = 0.1
SWEP.RecoilPunch = 0.2

-- Firerate / Firemodes --

SWEP.Delay = 60 / 950
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

SWEP.ShootPitch = 90
SWEP.ShootVol = 100

SWEP.ProceduralRegularFire = false
SWEP.ProceduralIronFire = false

SWEP.ReloadInSights = true

-- NPC stuff -- 

SWEP.NPCWeaponType = "weapon_smg1"
SWEP.NPCWeight = 60

-- Accuracy --

SWEP.AccuracyMOA = 18
SWEP.HipDispersion = 300
SWEP.MoveDispersion = 500

SWEP.Primary.Ammo = "pistol"
SWEP.MagID = "uzi"

-- Speed mult --

SWEP.SpeedMult = 0.9
SWEP.SightedSpeedMult = 0.8
SWEP.SightTime = 0.2

-- Gun length --

SWEP.BarrelLength = 11
SWEP.ExtraSightDist = 7

-- Ironsight / Customization / Active pos ang --

SWEP.HolsterPos = Vector(12, -1, -1)

SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "pistol"
SWEP.HoldtypeSights = "pistol"

SWEP.IronSightStruct = {
     Pos = Vector(-5.24, -2, 0.8),
     Ang = Angle(1, 0, 0),
     Magnification = 1,
     SwitchToSound = "",
}

SWEP.ActivePos = Vector(-2, 1, 0)
SWEP.ActiveAng = Angle(0, 0, -5)

SWEP.CustomizePos = Vector(3, -1, -2)
SWEP.CustomizeAng = Angle(0, 25, 0)

SWEP.CrouchPos = Vector(-3, -4, 0)
SWEP.CrouchAng = Angle(0, 0, -12)

SWEP.HolsterPos = Vector(2, -5, 0)

-- Weapon sounds --

SWEP.ShootSound = "weapons/arccw/miniuzi/lowpolyminiuzi_shot.ogg"
SWEP.ShootSoundSilenced = "weapons/arccw/miniuzi/lowpolyminiuzi_supp.ogg"
SWEP.DistantShootSound = "weapons/arccw/miniuzi/lowpolyminiuzi_dist.ogg"

-- Bodygroups --

SWEP.BulletBones = {
    [1] = "Bullets1",    [2] = "Bullets2",    [3] = "Bullets3",    [4] = "Bullets4",    [5] = "Bullets5",    [6] = "Bullets6",    [7] = "Bullets7",    [8] = "Bullets8",
    [9] = "Bullets9",    [10] = "Bullets10",    [11] = "Bullets11",    [12] = "Bullets12",    [13] = "Bullets13",    [14] = "Bullets14",    [15] = "Bullets15",
    [16] = "Bullets16",    [17] = "Bullets17",    [18] = "Bullets18",    [19] = "Bullets19",    [20] = "Bullets20",    [21] = "Bullets21",    [22] = "Bullets22",
    [23] = "Bullets23",    [24] = "Bullets24",    [25] = "Bullets25",    [26] = "Bullets26",    [27] = "Bullets27",    [28] = "Bullets28",    [29] = "Bullets29",
    [30] = "Bullets30",    [31] = "Bullets31",    [32] = "Bullets32",    [33] = "Bullets33",    [34] = "Bullets34",    [35] = "Bullets35",    [36] = "Bullets36",
    [37] = "Bullets37",    [38] = "Bullets38",    [39] = "Bullets39",    [40] = "Bullets40",
}

SWEP.AttachmentElements = {
    ["redbar"] = {
        VMBodygroups = {{ind = 1, bg = 1}},
        AttPosMods = {
            [3] = {
                vpos = Vector(0, -3.3, 7),
            }
        },
    },
    ["extbar"] = {
        VMBodygroups = {{ind = 1, bg = 2}},
        AttPosMods = {
            [3] = {
                vpos = Vector(0, -3.1, 10),
            }
        },
    },
    ["reducedmag"] = {
        VMBodygroups = {{ind = 2, bg = 1}},
    },
    ["extendedmag"] = {
        VMBodygroups = {{ind = 2, bg = 2}},
    },
    ["ammo_airsoft"] = {
        VMBodygroups = {{ind = 2, bg = 2}},
    },
    ["pistol_onehand"] = {
        VMBodygroups = {{ind = 3, bg = 1}},
        TrueNameChange = "Gangster Mini UZI",
        NameChange = "Gangster S-ZI",
    },
    ["skin_wireframe"] = {
        VMSkin = 1,
    },
}

-- LUA --

SWEP.Hook_Think = function(wep)
	wep:GetOwner():GetViewModel():SetPoseParameter( "sights", 1 - wep:GetSightDelta() ) -- This is entirely possible thanks to Fesiug
end

-- Animations --

--SWEP.TriggerDelay = true

SWEP.Animations = {
    ["ready"] = {
        Source = "ready",
        Framerate = 60,
        LHIK = true,
        time = 60 / 60,
        LHIKIn = 0,
        LHIKOut = 0.2,
    },
    ["draw"] = {
        Source = "draw",
        time = 1,
        Framerate = 60,
    },
    ["draw_empty"] = {
        Source = "drawempty",
        time = 1,
        Framerate = 60,
    },
    ["idle"] = false,
    ["idle_empty"] = false,
    ["bash"] = {
        Source = "bash",
        Framerate = 60,
        Time = 0.75,
    },
    ["fire_iron"] = {
        Source = "fireiron",
        Framerate = 60,
        SoundTable = {{ s = "weapons/arccw/miniuzi/lowpolyminiuzi_mechanism.ogg", t = 0.06 }},
        Time = 0.5,
        ShellEjectAt = 0.05,
    },
    ["fire"] = {
        Source = "fire",
        Framerate = 60,
        SoundTable = {{ s = "weapons/arccw/miniuzi/lowpolyminiuzi_mechanism.ogg", t = 0.06 }},
        Time = 0.5,
        ShellEjectAt = 0.05,
    },
    ["fire_iron_empty"] = {
        Source = "fireironempty",
        SoundTable = {{ s = "weapons/arccw/miniuzi/lowpolyminiuzi_empty.ogg", t = 0.02 }},
        Framerate = 60,
        Time = 0.5,
        ShellEjectAt = 0.05,
    },
    ["fire_empty"] = {
        Source = "fireempty",
        SoundTable = {{ s = "weapons/arccw/miniuzi/lowpolyminiuzi_empty.ogg", t = 0.02 }},
        Framerate = 60,
        Time = 0.5,
        ShellEjectAt = 0.05,
    },
    ["reload"] = {
        Source = "reload",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SMG1,
        Time = 120 / 60,
        Framerate = 60,
        LHIK = true,
        LHIKIn = 0.3,
        LHIKOut = 0.24,
        LastClip1OutTime = 0.7,
    },
    ["reload_reduced"] = {
        Source = "reloadsmall",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SMG1,
        Time = 120 / 60,
        Framerate = 60,
        LHIK = true,
        LHIKIn = 0.3,
        LHIKOut = 0.24,
        LastClip1OutTime = 0.7,
    },
    ["reload_extended"] = {
        Source = "reloadextended",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SMG1,
        Time = 120 / 60,
        Framerate = 60,
        LHIK = true,
        LHIKIn = 0.3,
        LHIKOut = 0.24,
        LastClip1OutTime = 0.7,
    },
    ["reload_empty"] = {
        Source = "reloadempty",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SMG1,
        Framerate = 60,
        Time = 150 / 60,
        LHIK = true,
        LHIKIn = 0.6,
        LHIKOut = 0.3,
        LastClip1OutTime = 0.5,
    },
    ["reload_empty_reduced"] = {
        Source = "reloademptysmall",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SMG1,
        Framerate = 60,
        Time = 150 / 60,
        LHIK = true,
        LHIKIn = 0.6,
        LHIKOut = 0.3,
        LastClip1OutTime = 0.7,
    },
    ["reload_empty_extended"] = {
        Source = "reloademptyextended",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SMG1,
        Framerate = 60,
        Time = 150 / 60,
        LHIK = true,
        LHIKIn = 0.6,
        LHIKOut = 0.3,
        LastClip1OutTime = 0.7,
    },
}

-- Attachments --

SWEP.RejectAttachments = {
  ["foregrip_angled"] = true,
  ["muzz_hbar"] = true,
  ["muzz_lbar"] = true,
  ["pistol_onehand"] = true,
  ["perk_extendedmags"] = true,
}

SWEP.Attachments = {
    {
        PrintName = "Optic",
        DefaultAttName = "Iron Sights",
        Slot = "optic_lp",
        Bone = "Body",
        Offset = {
            vpos = Vector(0, -4.3, 0),
            vang = Angle(90, -1, -90),
        },
        ExtraSightDist = 3
    },
    {
        PrintName = "Barrel Type",
        Slot = {"muzzle_miniuzi"},
        DefaultAttName = "3' Factory Barrel",
		DefaultAttIcon = Material("entities/att/acwatt_lowpolyminiuzi_extendedbarrel.png"),
    },
    {
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Slot = {"muzzle","mw_muzzle"},
        Bone = "Body",
        Offset = {
            vpos = Vector(0, -3.1, 9),
            vang = Angle(90, 0, -90),
        },
    },
    { 
        PrintName = "Underbarrel",
        Slot = {"foregrip", "style_pistol"},
        Bone = "Body",
        Offset = {
            vpos = Vector(0, -2.2, 5.8),
            vang = Angle(90, 0, -90),
        },
        ExcludeFlags = {"onehanded"}
    },
    {
        PrintName = "Tactical",
        Slot = {"tac_pistol","mw_tac"},
        Bone = "Body",
        Offset = {
            vpos = Vector(0.4, -3, 5.2),
            vang = Angle(90, -1, 0),
        },
    },
    {
        PrintName = "Grip",
        Slot = "grip",
        DefaultAttName = "Standard Grip"
    },
    {
        PrintName = "Stock",
        Slot = {"stock","stock_miniuzi"},
        DefaultAttName = "Foldable Stock"
    },
    {
        PrintName = "Mag Type",
        Slot = "mag_miniuzi",
        DefaultAttName = "30 Round Mag",
		DefaultAttIcon = Material("entities/att/acwatt_lowpolyminiuzi_extendedmag.png"),
    },
    {
        PrintName = "Ammo Type",
        Slot = {"go_ammo",""},
        DefaultAttName = "Standard Mag"
    },
    {
        PrintName = "Perk",
        Slot = "go_perk"
    },
    {
        PrintName = "Charm",
        Slot = {"charm","fml_charm"},
        FreeSlot = true,
        Bone = "Body",
        Offset = {
            vpos = Vector(0.7, -3.5, -1.5),
            vang = Angle(90, 0, -90),
        },
    },
    {
        PrintName = "Skins",
        PrintName = "Skin",
        Slot = {"skin_lpminiuzi"},
        DefaultAttName = "Black",
        FreeSlot = true
    },
    {
        PrintName = "Sounds",
        Slot = {"sound_lpminiuzi"},
        DefaultAttName = "Squad + Tarkov",
        FreeSlot = true
    },
}