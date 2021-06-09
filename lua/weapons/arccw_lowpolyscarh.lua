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
SWEP.TracerNum = 2
SWEP.TracerCol = Color(25, 255, 25)
SWEP.TracerWidth = 2

-- Fake name --

SWEP.PrintName = ".308 Heavy"

-- Real name --

SWEP.TrueName = "SCAR-H"

-- Trivia --

SWEP.Trivia_Class = "Battle rifle"
SWEP.Trivia_Desc = "A hard hitting high recoil battle rifle, in use by over 20 countries and multitude of special forces around the world."
SWEP.Trivia_Manufacturer = "BKK Arms"
SWEP.Trivia_Calibre = "7.62×51mm NATO"
SWEP.Trivia_Mechanism = "Short-stroke Gas Piston"
SWEP.Trivia_Country = "USA / Belgium"
SWEP.Trivia_Year = 2004

-- Weapon slot --

SWEP.Slot = 2

-- Weapon's manufacturer real name --

if GetConVar("arccw_truenames"):GetBool() then
    SWEP.PrintName = SWEP.TrueName
    SWEP.Trivia_Manufacturer = "FN Herstal / FN America"
end

-- Viewmodel / Worldmodel / Model FOV / Animations --

SWEP.ViewModel = "models/weapons/arccw/c_lowpolyscarh.mdl"
SWEP.WorldModel = "models/weapons/w_rif_m4a1.mdl"
SWEP.ViewModelFOV = 70
SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
 
SWEP.MirrorVMWM = true
SWEP.WorldModelOffset = {
    pos        =    Vector(-10, 6, -2),
    ang        =    Angle(-6, 0, 180),
    bone    =    "ValveBiped.Bip01_R_Hand",
}

-- Damage parameters --

SWEP.Damage = 42
SWEP.DamageMin = 30
SWEP.Range = 200
SWEP.Penetration = 24
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = nil
SWEP.MuzzleVelocity = 714

-- Mag size --

SWEP.ChamberSize = 1 
SWEP.Primary.ClipSize = 20
SWEP.ExtendedClipSize = 50
SWEP.ReducedClipSize = 10

-- Recoil --

SWEP.Recoil = 0.37
SWEP.RecoilSide = 0.22

SWEP.RecoilRise = 0
SWEP.MaxRecoilBlowback = 0
SWEP.VisualRecoilMult = 0.1
SWEP.RecoilPunch = 1

-- Firerate / Firemodes --

SWEP.Delay = 60 / 600
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

SWEP.NPCWeaponType = "weapon_ar2"
SWEP.NPCWeight = 78

-- Accuracy --

SWEP.AccuracyMOA = 4
SWEP.HipDispersion = 370
SWEP.MoveDispersion = 400

SWEP.Primary.Ammo = "ar2"
SWEP.MagID = "scarh"

-- Speed mult --

SWEP.SpeedMult = 0.73
SWEP.SightedSpeedMult = 0.5 
SWEP.SightTime = 0.5

-- Gun length --

SWEP.BarrelLength = 45
SWEP.ExtraSightDist = 10

-- Ironsight / Customization / Active pos ang --

SWEP.HolsterPos = Vector(8, -2, -5)

SWEP.ReloadInSights = true

SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "ar2"
SWEP.HoldtypeSights = "rpg"

SWEP.IronSightStruct = {
     Pos = Vector(-4.64, -2, -4),
     Ang = Angle(0.2, 0.029, 0),
     Magnification = 1,
     SwitchToSound = "",
}

SWEP.CustomizePos = Vector(0, -1, -3.6)
SWEP.CustomizeAng = Angle(0, 0, 0)

SWEP.ActivePos = Vector(0, -1, -3.6)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.CrouchPos = Vector(-3, 0, -4.2)
SWEP.CrouchAng = Angle(0, 0, -12)

-- Weapon sounds --

SWEP.ShootSound = "weapons/arccw/scarh/lowpolyscarh_fire.ogg"
SWEP.ShootSoundSilenced = "weapons/arccw/scarh/lowpolyscarh_supp.ogg"
SWEP.DistantShootSound = "weapons/arccw/scarh/lowpolyscarh_dist.ogg"

-- Bodygroups --

SWEP.BulletBones = {
    [1] = "Bullet1", [2] = "Bullet2", [3] = "Bullets3",
}

SWEP.AttachmentElements = {
    ["noi"] = {
        VMBodygroups = {{ind = 1, bg = 1}},
    },
    ["muzzle_empty"] = {
        VMBodygroups = {{ind = 3, bg = 3}},
    },
    ["muzz_lbar"] = {
        VMBodygroups = {{ind = 4, bg = 1}},
        AttPosMods = {
            [4] = {
                vpos = Vector(0.1, -5, 20),
            }
        },
    },
    ["muzz_hbar"] = {
        VMBodygroups = {{ind = 4, bg = 2}},
        AttPosMods = {
            [4] = {
                vpos = Vector(0.1, -5, 28),
                wpos = Vector(27, 0.9, -7.4),
            }
        },
    },
    ["stanag"] = {
        VMBodygroups = {{ind = 2, bg = 1},{ind = 5, bg = 1}},
        TrueNameChange = "SCAR-L",
    },
    ["pmag"] = {
        VMBodygroups = {{ind = 2, bg = 1},{ind = 5, bg = 2}},
        TrueNameChange = "SCAR-L",
    },
    ["lifh"] = {
        VMBodygroups = {{ind = 3, bg = 1}},
    },
    ["hefh"] = {
        VMBodygroups = {{ind = 3, bg = 2}},
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

-- Animations --

SWEP.CamAttachment =  nil -- replace with a 5 in case you want to check it out

SWEP.Animations = {
    ["idle"] = false,
    ["ready"] = {
        Source = "ready",
        Framerate = 30,
        Time = 40 / 30,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.25,
    },
    ["draw"] = {
        Source = "",
        Framerate = 30,
    },
    ["draw_empty"] = {
        Source = "",
        Framerate = 30,
    },
    ["fire"] = {
        Source = "fire",
        Framerate = 30,
        Time = 40 / 30,
        ShellEjectAt = 0.04,
    },
    ["fire_empty"] = {
        Source = "fire_empty",
        Framerate = 30,
        Time = 40 / 30,
        ShellEjectAt = 0,
        SoundTable = {{ s = "weapons/arccw/scarh/lowpolyscarh_empty.ogg", t = 0.02 }},
    },

    -- 7.62 Reloads --

    ["reload"] = {
        Source = "reload",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Time = 76 / 30,
        Framerate = 30,
        LHIK = true,
        LHIKIn = 0.3,
        LHIKOut = 0.4,
        LastClip1OutTime = 1,
    },
    ["reload_empty"] = {
        Source = "reload_empty",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Framerate = 30,
        Time = 88 / 30,
        LHIK = true,
        LHIKIn = 0.3,
        LHIKOut = 0.35,
        LastClip1OutTime = 1,
    },

    -- 5.56 Reloads --

    ["reload_l"] = {
        Source = "reload_l",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Time = 76 / 30,
        Framerate = 30,
        LHIK = true,
        LHIKIn = 0.3,
        LHIKOut = 0.4,
        LastClip1OutTime = 1,
    },
    ["reload_empty_l"] = {
        Source = "reload_empty_l",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Framerate = 30,
        Time = 88 / 30,
        LHIK = true,
        LHIKIn = 0.3,
        LHIKOut = 0.35,
        LastClip1OutTime = 1,
    },

    -- Inspecc --

    ["enter_inspect"] = {
        Source = "enter_inspect",
        Framerate = 30,
    },
    ["idle_inspect"] = {
        Source = "idle_inspect",
        Framerate = 30,
    },
    ["exit_inspect"] = {
        Source = "exit_inspect",
        Framerate = 30,
    },

    -- Inspecc empty --

    ["enter_inspect_empty"] = {
        Source = "enter_inspect_empty",
        Framerate = 30,
    },
    ["idle_inspect_empty"] = {
        Source = "idle_inspect_empty",
        Framerate = 30,
    },
    ["exit_inspect_empty"] = {
        Source = "exit_inspect_empty",
        Framerate = 30,
    },
}

-- Attachments --

SWEP.RejectAttachments = {
  ["muzz_hbar"] = true,
  ["muzz_lbar"] = true,
}

SWEP.Attachments = {
    {
        PrintName = "Optic",
        DefaultAttName = "Flip Up Sights",
        Slot = {"optic","optic_sniper"},
        Bone = "Body",
        InstalledEles = {"noi"},
        Offset = {
            vang = Angle(90, 0, -90),
        },
        SlideAmount = {
        vmin = Vector(0, -7.1, 4),
        vmax = Vector(0, -7.1, 7),
        }, 
    },
    {
        PrintName = "Backup Optic",
        Slot = "backup",
        Bone = "Body",
        ExtraSightDist = 2,
        Offset = {
            vpos = Vector(0, -7.1, 8),
            vang = Angle(90, 0, -90),
        },
        KeepBaseIrons = true,
    },
    {
        PrintName = "Barrel",
        DefaultAttName = "400mm STD Barrel",
        Slot = {"lpscarh_barrel"},
        Bone = "Barrel",
    },
    {
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Slot = {"muzzle", "mw_muzzle"},
        Bone = "Body",
        InstalledEles = {"muzzle_empty"},
        Offset = {
            vpos = Vector(0.1, -5, 24),
            vang = Angle(90, 0, -90),
            wpos = Vector(24, 0.6, -7.2),
            wang = Angle(-8, 0, 180),
        },
    },
    { 
        PrintName = "Underbarrel",
        Slot = {"foregrip", "ubgl", "bipod"},
        Bone = "Body",
        Offset = {
            vpos = Vector(0, -4, 15.5),
            vang = Angle(90, 0, -90),
            wpos = Vector(14, 0.782, -5),
            wang = Angle(-8, 0, 180),
        },
        SlideAmount = {
            vmin = Vector(0, -4, 14),
            vmax = Vector(0, -4, 17),
            wmin = Vector(16, 0.782, -5),
            wmax = Vector(16, 0.782, -5),
        },
    },
    {
        PrintName = "Tactical",
        Slot = {"tac", "mw_tac"},
        Bone = "Body",
        Offset = {
            vpos = Vector(0.7, -5, 18),
            vang = Angle(90, 0, 0),
            wpos = Vector(15.625, 1.5, -6.298),
            wang = Angle(-8, 0, -90)
        },
    },
    {
        PrintName = "Stock",
        Slot = "stock",
        DefaultAttName = "Standard Stock"
    },  
    {
        PrintName = "Mag Type",
        Slot = {"lpscarh_mag"},
        DefaultAttName = "20 Round SCAR-H Mag",
    },
    {
        PrintName = "Ammo Type",
        Slot = {"go_ammo"},
        DefaultAttName = "Default Ammo"
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
            vpos = Vector(0.7, -5.3, 3),
            vang = Angle(90, 0, -90),
            wpos = Vector(2, 1.4, -3.5),
            wang = Angle(-13, 0, -180)
        },
    },
    {
        PrintName = "Skin",
        Slot = {"lpscarh_skin"},
        DefaultAttName = "Tan",
        FreeSlot = true
    },
}