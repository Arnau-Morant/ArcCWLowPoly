SWEP.Base = "arccw_base"
SWEP.Spawnable = true
SWEP.Category = "ArcCW - Low Poly"
SWEP.AdminOnly = false
SWEP.UseHands = true

-- Muzzle and shell effects --

SWEP.MuzzleEffect = "muzzleflash_1"
SWEP.ShellModel = "models/shells/shell_556.mdl"
SWEP.ShellScale = 1.2
SWEP.ShellMaterial = "models/weapons/arcticcw/shell_556mm"
SWEP.ShellPitch = 100

SWEP.MuzzleEffectAttachment = 1
SWEP.CaseEffectAttachment = 2
SWEP.TracerNum = 2
SWEP.TracerCol = Color(25, 255, 25)
SWEP.TracerWidth = 2

-- Fake name --

SWEP.PrintName = "DEMR"

-- Real name --

SWEP.TrueName = "ARX-160"

-- Trivia --

SWEP.Trivia_Class = "Assault Rifle"
SWEP.Trivia_Desc = "Italian modular rifle developed for the Italian Armed Forces."
SWEP.Trivia_Manufacturer = "Bernetti"
SWEP.Trivia_Calibre = "5.56x45mm NATO"
SWEP.Trivia_Mechanism = "Short-stroke"
SWEP.Trivia_Country = "Italy"
SWEP.Trivia_Year = 2008

-- Weapon slot --

SWEP.Slot = 2

-- Weapon's manufacturer real name --

if GetConVar("arccw_truenames"):GetBool() then
    SWEP.PrintName = SWEP.TrueName
    SWEP.Trivia_Manufacturer = "Beretta"
end

-- Viewmodel / Worldmodel / Model FOV / Animations --

SWEP.ViewModel = "models/weapons/arccw/c_lowpolyarx160.mdl"
SWEP.WorldModel = "models/weapons/w_rif_m4a1.mdl"
SWEP.ViewModelFOV = 65
SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2

SWEP.MirrorVMWM = true
SWEP.WorldModelOffset = {
    pos        =    Vector(-10, 6, -6.7),
    ang        =    Angle(-6, 0, 180),
    bone    =    "ValveBiped.Bip01_R_Hand",
}

-- Damage parameters --

SWEP.Damage = 29
SWEP.DamageMin = 19
SWEP.Range = 150
SWEP.Penetration = 11
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = nil
SWEP.MuzzleVelocity = 850

-- Mag size --

SWEP.ChamberSize = 1
SWEP.Primary.ClipSize = 30
SWEP.ExtendedClipSize = 60
SWEP.ReducedClipSize = 20

-- Recoil --

SWEP.Recoil = 0.4
SWEP.RecoilSide = 0.16

SWEP.MaxRecoilBlowback = -1
SWEP.VisualRecoilMult = 0.1
SWEP.RecoilPunch = 0.1

-- Firerate / Firemodes --

SWEP.Delay = 60 / 700
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

SWEP.ShootPitch = 95
SWEP.ShootVol = 105

SWEP.ProceduralRegularFire = false
SWEP.ProceduralIronFire = false

SWEP.ReloadInSights = true

-- NPC stuff -- 

SWEP.NPCWeaponType = "weapon_ar2"
SWEP.NPCWeight = 30

-- Accuracy --

SWEP.AccuracyMOA = 3.5
SWEP.HipDispersion = 300
SWEP.MoveDispersion = 100

SWEP.Primary.Ammo = "smg1"
SWEP.MagID = "arx"

-- Speed mult --

SWEP.SpeedMult = 0.85
SWEP.SightedSpeedMult = 0.76
SWEP.SightTime = 0.4

SWEP.MeleeTime = 0.66

-- Gun length --

SWEP.BarrelLength = 49
SWEP.ExtraSightDist = 7

-- Ironsight / Customization / Active pos ang --

SWEP.HolsterPos = Vector(12, -1, -1)

SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "ar2"
SWEP.HoldtypeSights = "rpg"

SWEP.IronSightStruct = {
     Pos = Vector(-4.781, -5, 0.28),
     Ang = Angle(0.5, 0, 0),
     Magnification = 1,
     SwitchToSound = "",
}

SWEP.CrouchPos = Vector(-3, -4, -1)
SWEP.CrouchAng = Angle(0, 0, -12)

SWEP.HolsterPos = Vector(2, -5, 0)

-- Weapon sounds --

SWEP.ShootSound = "weapons/arccw/arx160/lowpolyarx160_fire.ogg"
SWEP.ShootSoundSilenced = "weapons/arccw/arx160/lowpolyarx160_supp.ogg"
SWEP.DistantShootSound = "weapons/arccw/arx160/lowpolyarx160_dist.ogg"

-- Bodygroups --

SWEP.BulletBones = {
    [1] = "Bullets1",    [2] = "Bullets2",    [3] = "Bullets3",
}

SWEP.AttachmentElements = {
    ["muzz_lbar"] = {
        VMBodygroups = {{ind = 1, bg = 1}},
        AttPosMods = {
            [4] = {
                vpos = Vector(0, 0, 3),
            }
        }
    },
    ["muzz_hbar"] = {
        VMBodygroups = {{ind = 1, bg = 2}},
        AttPosMods = {
            [4] = {
                vpos = Vector(0, 0, 10),
            }
        }
    },
    ["lifh"] = {
        VMBodygroups = {{ind = 5, bg = 1}},
    },
    ["hefh"] = {
        VMBodygroups = {{ind = 5, bg = 2}},
    },
    ["nofh"] = {
        VMBodygroups = {{ind = 5, bg = 3}},
    },
    ["pmag"] = {
        VMBodygroups = {{ind = 2, bg = 1}},
    },
    ["762ARX"] = {
        VMBodygroups = {{ind = 2, bg = 3}},
    },
    ["extendedmag"] = {
        VMBodygroups = {{ind = 2, bg = 2}},
    },
    ["nois"] = {
        VMBodygroups = {{ind = 4, bg = 1}},
    },
    ["foldedstock"] = {
        VMBodygroups = {{ind = 3, bg = 1}},
    },
    ["fcg_semi"] = {
        TrueNameChange = "ARX 100",
        NameChange = "DMS-C",
    },
    ["skin_wireframe"] = {
        VMSkin = 1,
    },
    ["skin_black"] = {
        VMSkin = 2,
    },
    ["skin_green"] = {
        VMSkin = 3,
    },
}

-- LUA --

SWEP.Hook_Think = function(wep)
	wep:GetOwner():GetViewModel():SetPoseParameter( "sights", 1 - wep:GetSightDelta() ) -- This is entirely possible thanks to Fesiug
end

SWEP.Jamming = false
SWEP.HeatCapacity = 45 -- rounds that can be fired non-stop before the gun jams, playing the "fix" animation
SWEP.HeatDissipation = 40

-- Animations --

SWEP.Animations = {
    ["ready"] = {
        Source = "ready",
        Framerate = 60,
        LHIK = true,
        time = 78 / 60,
        LHIKIn = 0,
        LHIKOut = 0.3,
    },
    ["draw"] = {
        Source = "draw",
        Time = 1,
        Framerate = 60,
    },
    ["fix"] = {
        Source = "fix",
        Time = 1,
        Framerate = 60,
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.3,
        SoundTable = {{ s = "weapons/arccw/arx160/lowpolyarx160_empty.ogg", t = 0.02 }},
    },
    ["fix_empty"] = {
        Source = "fixempty",
        Time = 1,
        Framerate = 60,
        ShellEjectAt = 0.4,
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.3,
        SoundTable = {{ s = "weapons/arccw/arx160/lowpolyarx160_empty.ogg", t = 0.02 }},
    },
    ["idle"] = false,
    ["bash"] = {
        Source = "bash",
        Framerate = 60,
        Time = 1.1,
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.4,
    },
    ["bash_empty"] = {
        Source = "bashempty",
        Framerate = 60,
        Time = 1.1,
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.4,
    },
    ["fire"] = {
        Source = {"fire", "fire2", "fire3"},
        Framerate = 60,
        SoundTable = {{ s = "weapons/arccw/arx160/lowpolyarx160_mechanism.ogg", t = 0.065 }},
        Time = 0.5,
        ShellEjectAt = 0.04,
    },
    ["fire_bipod"] = {
        Source = {"fire3"},
        Framerate = 60,
        SoundTable = {{ s = "weapons/arccw/arx160/lowpolyarx160_mechanism.ogg", t = 0.065 }},
        Time = 0.5,
        ShellEjectAt = 0.04,
    },
    ["fire_iron"] = {
        Source = "fireiron",
        Framerate = 60,
        SoundTable = {{ s = "weapons/arccw/arx160/lowpolyarx160_mechanism.ogg", t = 0.065 }},
        Time = 0.5,
        ShellEjectAt = 0.04,
    },
    ["fire_empty"] = {
        Source = "fireempty",
        SoundTable = {{ s = "weapons/arccw/arx160/lowpolyarx160_empty.ogg", t = 0.02 }},
        Framerate = 60,
        Time = 0.5,
        ShellEjectAt = 0.04,
    },
    ["fire_iron_empty"] = {
        Source = "fireironempty",
        SoundTable = {{ s = "weapons/arccw/arx160/lowpolyarx160_empty.ogg", t = 0.02 }},
        Framerate = 60,
        Time = 0.5,
        ShellEjectAt = 0.04,
    },
    ["reload"] = {
        Source = "reload",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Time = 148 / 60,
        Framerate = 60,
        LHIK = true,
        LHIKIn = 0.3,
        LHIKOut = 0.4,
        LastClip1OutTime = 1,
    },
    ["reload_empty"] = {
        Source = "reloadempty",
        RareSource = "reloademptyalt",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Framerate = 60,
        Time = 175 / 60,
        LHIK = true,
        LHIKIn = 0.3,
        LHIKOut = 0.25,
        LastClip1OutTime = 0.8,
    },

    -- Extended mag reloads --

    ["reload_extended"] = {
        Source = "reloadextended",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Time = 168 / 60,
        Framerate = 60,
        LHIK = true,
        LHIKIn = 0.3,
        LHIKOut = 0.3,
        LastClip1OutTime = 1,
    },
    ["reload_empty_extended"] = {
        Source = "reloadempty",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Framerate = 60,
        Time = 195 / 60,
        LHIK = true,
        LHIKIn = 0.3,
        LHIKOut = 0.25,
        LastClip1OutTime = 0.8,
    },

    -- Pmag reloads --

    ["reload_empty_pmag"] = {
        Source = "reloadempty",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Framerate = 60,
        Time = 175 / 60,
        LHIK = true,
        LHIKIn = 0.3,
        LHIKOut = 0.25,
        LastClip1OutTime = 0.8,
    },

    -- 762 reloads --

    ["reload_762"] = {
        Source = "reload_762",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Time = 155 / 60,
        Framerate = 60,
        LHIK = true,
        LHIKIn = 0.3,
        LHIKOut = 0.4,
        LastClip1OutTime = 1,
    },
    ["reload_empty_762"] = {
        Source = "reload_empty_762",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Framerate = 60,
        Time = 185 / 60,
        LHIK = true,
        LHIKIn = 0.3,
        LHIKOut = 0.25,
        LastClip1OutTime = 0.8,
    },
}

-- Attachments --

SWEP.RejectAttachments = {
  ["muzz_hbar"] = true,
  ["muzz_lbar"] = true,
  ["perk_extendedmags"] = true,
}

SWEP.Attachments = {
    {
        PrintName = "Optic",
        DefaultAttName = "Flip Up Sights",
        Slot = {"optic_lp", "optic", "optic_sniper"},
        Bone = "Iron",
        Offset = {
            vpos = Vector(0, 0.2, 0),
            vang = Angle(90, 0, -90),
        },
        ExtraSightDist = 7,
        InstalledEles = {"nois"},
    },
    {
        PrintName = "Backup Optic",
        Slot = "backup",
        Bone = "Body",
        ExtraSightDist = 8,
        Offset = {
            vpos = Vector(0, -7, 14),
            vang = Angle(90, 0, -90),
        },
    },
    {
        PrintName = "Barrel",
        DefaultAttName = "304mm Barrel",
        Slot = {"barrel_arx160"},
        Bone = "Barrel",
    },
    {
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Slot = {"muzzle","mw_muzzle"},
        Bone = "Barrel",
        Offset = {
            vpos = Vector(0, 0, 5),
            vang = Angle(90, 0, -90),
        },
        InstalledEles = {"nofh"},
    },
    { 
        PrintName = "Underbarrel",
        Slot = {"foregrip","bipod","ubgl"},
        Bone = "Body",
        Offset = {
            vpos = Vector(0, -3, 15.8),
            vang = Angle(90, 0, -90),
        },
    },
    {
        PrintName = "Tactical",
        Slot = {"tac_pistol","mw_tac"},
        Bone = "Body",
        Offset = {
            vpos = Vector(1.2, -5.1, 17),
            vang = Angle(90, 0, 0),
        },
    },
    {
        PrintName = "Grip",
        Slot = "grip",
    },
    {
        PrintName = "Stock",
        Slot = {"stock","stock_arx160"},
        DefaultAttName = "Foldable Stock"
    },
    {
        PrintName = "Fire Group",
        Slot = "fcg",
        DefaultAttName = "Standard FCG"
    },
    {
        PrintName = "Mag Type",
        Slot = {"mag_556","mag_762"},
        DefaultAttName = "30 Round Mag (STANAG)"
    },
    {
        PrintName = "Ammo Type",
        Slot = {"ammo_bullet"},
    },
    {
        PrintName = "Perk",
        Slot = "perk"
    },
    {
        PrintName = "Charm",
        Slot = {"charm","fml_charm"},
        FreeSlot = true,
        Bone = "Body",
        Offset = {
            vpos = Vector(0.7, -3.6, 9),
            vang = Angle(90, 0, -90),
        },
    },
    {
        PrintName = "Skins",
        PrintName = "Skin",
        Slot = {"skin_lparx160"},
        DefaultAttName = "Tan",
        FreeSlot = true,
    },
}