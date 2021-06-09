SWEP.Base = "arccw_base"
SWEP.Spawnable = true
SWEP.Category = "ArcCW - Low Poly"
SWEP.AdminOnly = false
SWEP.UseHands = true

-- Muzzle and shell effects --

SWEP.MuzzleEffect = "muzzleflash_5"
SWEP.ShellModel = "models/shells/shell_9mm.mdl"
SWEP.ShellScale = 1.7
SWEP.ShellMaterial = "models/weapons/arcticcw/shell_9mm"
SWEP.ShellPitch = 84

SWEP.MuzzleEffectAttachment = 1
SWEP.TracerNum = 1
SWEP.TracerCol = Color(25, 255, 25)
SWEP.TracerWidth = 1

-- Fake name --

SWEP.PrintName = "RMC-57"

-- Real name --

SWEP.TrueName = "Rhino 60DS" 

-- Trivia --

SWEP.Trivia_Class = "Revolver"
SWEP.Trivia_Desc = "The barrel is located in the lower part of the\ncylinder redirecting the recoil to your wrist,\nmaking it easier to control."
SWEP.Trivia_Manufacturer = "Balero Firearms"
SWEP.Trivia_Calibre = ".357 Magnum"
SWEP.Trivia_Mechanism = "Single / Double action"
SWEP.Trivia_Country = "USA"
SWEP.Trivia_Year = 2009

-- Weapon slot --

SWEP.Slot = 1

-- Weapon's manufacturer real name --

if GetConVar("arccw_truenames"):GetBool() then
    SWEP.PrintName = SWEP.TrueName
    SWEP.Trivia_Manufacturer = "Chiappa Firearms"
end

-- Viewmodel / Worldmodel / Model FOV / Animations --

SWEP.ViewModel = "models/weapons/arccw/c_lowpolyrhino.mdl"
SWEP.WorldModel = "models/weapons/w_pist_usp.mdl"
SWEP.ViewModelFOV = 78
SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_REVOLVER
 
SWEP.MirrorVMWM = true
SWEP.WorldModelOffset = {
    pos        =    Vector(-10, 2.5, -5),
    ang        =    Angle(0, -2, 180),
    bone    =    "ValveBiped.Bip01_R_Hand",
}

-- Damage parameters --

SWEP.Damage = 44
SWEP.DamageMin = 34
SWEP.Range = 50
SWEP.Penetration = 8
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = nil
SWEP.MuzzleVelocity = 440

-- Mag size --

SWEP.ChamberSize = 0
SWEP.Primary.ClipSize = 6
SWEP.ExtendedClipSize = 6
SWEP.ReducedClipSize = 3

-- Recoil --

SWEP.Recoil = 1
SWEP.RecoilSide = 0.8

SWEP.MaxRecoilBlowback = 1
SWEP.VisualRecoilMult = 1
SWEP.RecoilPunch = 1

-- Firerate / Firemodes --

SWEP.Delay = 60 / 450
SWEP.Num = 1
SWEP.Firemodes = {
    {
        PrintName = "SACT",
        Mode = 1,
    }
}

SWEP.RevolverReload = true

SWEP.ReloadInSights = true

SWEP.ShootVol = 100
SWEP.ShootPitch = 100

-- NPC stuff -- 

SWEP.NPCWeaponType = "weapon_357"
SWEP.NPCWeight = 150

-- Accuracy --

SWEP.AccuracyMOA = 4
SWEP.HipDispersion = 500
SWEP.MoveDispersion = 400

SWEP.Primary.Ammo = "357"
SWEP.MagID = "rhino"

-- Speed mult --

SWEP.SpeedMult = 0.88
SWEP.SightedSpeedMult = 0.79 
SWEP.SightTime = 0.3

-- Gun length --

SWEP.BarrelLength = 18
SWEP.ExtraSightDist = 20

-- Ironsight / Customization / Active pos ang --

SWEP.HoldtypeHolstered = "normal"
SWEP.HoldtypeActive = "pistol"
SWEP.HoldtypeSights = "revolver"

SWEP.IronSightStruct = {
     Pos = Vector(-1.74, -4, 1.16),
     Ang = Angle(0.5, 0, 0),
     Magnification = 1,
     SwitchToSound = "",
}

SWEP.CrouchPos = Vector(0, -3, 0)
SWEP.CrouchAng = Angle(0, 0, -3)

SWEP.CustomizePos = Vector(0, 0, 0)
SWEP.CustomizeAng = Angle(0, 0, 0)

SWEP.ActivePos = Vector(0, 1, -0.5)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.HolsterPos = Vector(2, -4.145, -9.561)
SWEP.HolsterAng = Angle(36.533, 0, 0)

-- Weapon sounds --

SWEP.ShootSound = "weapons/arccw/rhino/lowpolyrhino_shot.ogg"
SWEP.ShootSoundSilenced = "weapons/arccw/rhino/lowpolyrhino_supp.ogg"
SWEP.DistantShootSound = "weapons/arccw/rhino/lowpolyrhino_dist.ogg"

-- Animations --

SWEP.Animations = {
    ["ready"] = {
        Source = "ready",
        Framerate = 60,
        Time = 1.4,
        LHIK = true,
        LHIKIn = 5,
        LHIKOut = 5,
    },
    ["draw"] = {
        Source = "draw",
        time = 0.3,
        Framerate = 60,
    },
    ["idle"] = {
        Source = "idle",
        time = 0.3,
        Framerate = 60,
    },
    ["bash"] = {
        Source = "bash",
        time = 0.7,
        Framerate = 60,
    },
    ["fire"] = {
        Source = "shoot",
        Framerate = 60,
        SoundTable = {{ s = "weapons/arccw/rhino/lowpolyrhino_hammer.ogg", t = 0 }},
        Time = 60 / 60,
    },
    ["fire_iron"] = {
        Source = "shootiron",
        Framerate = 60,
        SoundTable = {{ s = "weapons/arccw/rhino/lowpolyrhino_hammer.ogg", t = 0 }},
        Time = 60 / 60,
    },
    ["reload"] = {
        Source = "reload",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_REVOLVER,
        Time = 160 / 60,
        Framerate = 60,
        LHIK = true,
        LHIKIn = 0.2,
        LHIKOut = 0.6,
        LastClip1OutTime = 1,
    },
    ["reload_empty"] = {
        Source = "reload",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_REVOLVER,
        Time = 160 / 60,
        Framerate = 60,
        LHIK = true,
        LHIKIn = 0.2,
        LHIKOut = 0.6,
        LastClip1OutTime = 1,
    },
    
    -- Inspecc --

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
        LHIKOut = 0.4,
    },
}

-- Bodygroups -- 

SWEP.BulletBones = {
    [1] = "Bullets1",
    [2] = "Bullets2",
    [3] = "Bullets3",
    [4] = "Bullets4",
    [5] = "Bullets5",
    [6] = "Bullets6",
}

SWEP.CaseBones = {
    [1] = "Casings1",
    [2] = "Casings2",
    [3] = "Casings3",
    [4] = "Casings4",
    [5] = "Casings5",
    [6] = "Casings6",
}

-- Attachments --


SWEP.Attachments = {
    {
        PrintName = "Optic",
        DefaultAttName = "Iron Sights",
        Slot = {"optic_lp", "mw_optic_lp"},
        Bone = "Body",
        VMScale = Vector(0.9, 0.9, 0.9),
        Offset = {
            vpos = Vector(0, -2.7, 6.2),
            vang = Angle(90, -0.1, -90),
            vscale = Vector(0.8, 0.8, 0.8),
            wpos = Vector(7.5, 1.7, -4.5),
            wang = Angle(-12, -1, 180),
        },
        ExtraSightDist = 8
    },
    {
        PrintName = "Barrel",
        DefaultAttName = "Standard Barrel (60DS)",
        Slot = {"lprhino_barrel"},
		DefaultAttIcon = Material("entities/att/acwatt_lowpolyrhinostbar.png")
    },
    {
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Slot = {"muzzle","mw_muzzle"},
        Bone = "Body",
        Offset = {
            vpos = Vector(0, -1.5, 10.2),
            vang = Angle(90, 0, -90),
            wpos = Vector(11.5, 1.95, -4.2),
            wang = Angle(-12, 0, 180),
        },
    },
    { 
        PrintName = "Underbarrel",
        Slot = {"foregrip_pistol", "style_pistol"},
        Bone = "Body",
        Offset = {
            vpos = Vector(0, -0.5, 5.2),
            vang = Angle(90, 0, -90),
            wpos = Vector(7.5, 1.95, -2.5),
            wang = Angle(-12, 0, 180),
        },
    },
    {
        PrintName = "Tactical",
        Slot = {"tac", "mw_tac"},
        Bone = "Body",
        VMScale = Vector(0.7, 0.7, 0.7),
        Offset = {
            vpos = Vector(0, -1, 8.8),
            vang = Angle(90, 0, -90),
            wpos = Vector(10.5, 1.8 , -3.5),
            wang = Angle(-12, 0, 180),
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
        Slot = "go_ammo"
    },
    {
        PrintName = "Perk",
        Slot = "go_perk"
    },
    {
        PrintName = "Charm",
        Slot = {"charm", "fml_charm"},
        FreeSlot = true,
        Bone = "Body", 
        Offset = {
            vpos = Vector(0.3, -1.7, 7),
            vang = Angle(90, 0, -90),
            wpos = Vector(8, 1.95, -3.5),
            wang = Angle(-12, 0, 180),
        },
    },
    {
        PrintName = "Skins",
        PrintName = "Skin",
        Slot = {"skin_lpak"},
        DefaultAttName = "Metallic Finish",
        FreeSlot = true
    },
}

SWEP.AttachmentElements = {
    ["stock"] = {
        VMElements = {
            {
                Model = "models/weapons/arccw/atts/stock_fab.mdl",
                Bone = "Body",
                Offset = {
                    pos = Vector(0, 1.3, 1),
                    ang = Angle(90, 0, -90)
                }
            }
        },
        WMElements = {
            {
                Model = "models/weapons/arccw/atts/stock_fab.mdl",
                Offset = {
                    pos = Vector(2.3, 1.8, 0.8),
                    ang = Angle(-7, 0, 180)
                }
            }
        }
    },
    ["RedBarrel"] = {
        VMBodygroups = {{ind = 1, bg = 1}},
        TrueNameChange = "Rhino 30DS",
        NameChange = "RMC-27",
        Override_IronSightStruct = {
            Pos = Vector(-1.74, -4, 1.12),
            Ang = Angle(0.5, 0, 0),
            Magnification = 1,
        },
        AttPosMods = {
        [1] = {
                vpos = Vector(0, -3, 3.2),
            },
        [3] = {
                vpos = Vector(0, -1.5, 8),
            },
        [5] = {
                vpos = Vector(0, -1, 6.8),
            },
        },
    },
    ["ExtBarrel"] = {
        VMBodygroups = {{ind = 1, bg = 2}},
        TrueNameChange = "Rhino 120DS",
        NameChange = "RMC-117",
        Override_IronSightStruct = {
            Pos = Vector(-1.745, -4, 1.16),
            Ang = Angle(0.5, 0, 0),
            Magnification = 1,
        },
        AttPosMods = {
        [3] = {
                vpos = Vector(0, -1.5, 11.5),
            },
        [5] = {
                vpos = Vector(0, -1, 10.8),
            },
        }
    },
    
    -- Skins --

    ["skin_wireframe"] = {
        VMSkin = 1,
    },

    ["skin_black"] = {
        VMSkin = 2,
    },
}