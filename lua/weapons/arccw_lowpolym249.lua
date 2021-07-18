SWEP.Base = "arccw_base"
SWEP.Spawnable = true
SWEP.Category = "ArcCW - Low Poly"
SWEP.AdminOnly = false
SWEP.UseHands = true

-- Muzzle and shell effects --

SWEP.MuzzleEffect = "muzzleflash_1"
SWEP.ShellModel = "models/shells/shell_556.mdl"
SWEP.ShellScale = 1.2
SWEP.ShellMaterial = "models/weapons/arcticcw/shell_556"
SWEP.ShellPitch = 100

SWEP.MuzzleEffectAttachment = 1
SWEP.CaseEffectAttachment = 2
SWEP.TracerNum = 0
SWEP.TracerCol = Color(25, 255, 25)
SWEP.TracerWidth = 2

-- Fake name --

SWEP.PrintName = "XM422"

-- True name --

SWEP.TrueName = "Minimi"

-- Trivia --

SWEP.Trivia_Class = "LMG"
SWEP.Trivia_Desc = "large"
SWEP.Trivia_Manufacturer = "EFFAYEN"
SWEP.Trivia_Calibre = "5.56×45mm NATO"
SWEP.Trivia_Mechanism = "Gas-actuated long-stroke piston"
SWEP.Trivia_Country = "Belgium"
SWEP.Trivia_Year = 1974

-- Weapon slot --

SWEP.Slot = 2

-- Weapon's manufacturer real name --

if GetConVar("arccw_truenames"):GetBool() then
    SWEP.PrintName = SWEP.TrueName
    SWEP.Trivia_Manufacturer = "FN"
end

-- Viewmodel / Worldmodel / FOV --

SWEP.ViewModel = "models/weapons/arccw/c_lowpolym249.mdl"
SWEP.WorldModel = "models/weapons/w_rif_m4a1.mdl"
SWEP.ViewModelFOV = 85
SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2

-- Damage parameters --

SWEP.Damage = 30
SWEP.DamageMin = 17
SWEP.Range = 150
SWEP.Penetration = 14
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = nil
SWEP.MuzzleVelocity = 823 

-- Mag size --

SWEP.ChamberSize = 0
SWEP.Primary.ClipSize = 100
SWEP.ExtendedClipSize = 200
SWEP.ReducedClipSize = 30

-- Recoil --

SWEP.Recoil = 0.18
SWEP.RecoilSide = 0.2

SWEP.RecoilRise = 0.3
SWEP.VisualRecoilMult = 0.4
SWEP.MaxRecoilBlowback = 0.4
SWEP.MaxRecoilPunch = 1

-- Firerate / Firemodes --

SWEP.Delay = 60 / 824
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

SWEP.ShootPitch = 100
SWEP.ShootVol = 114

SWEP.ProceduralRegularFire = false
SWEP.ProceduralIronFire = false

SWEP.ReloadInSights = true

-- NPC -- 

SWEP.NPCWeaponType = "weapon_ar2"
SWEP.NPCWeight = 60

-- Accuracy --

SWEP.AccuracyMOA = 5.6
SWEP.HipDispersion = 600
SWEP.MoveDispersion = 800

SWEP.Primary.Ammo = "smg1"

-- Speed multipliers --

SWEP.SpeedMult = 0.7
SWEP.SightedSpeedMult = 0.72
SWEP.SightTime = 0.6

-- Length --

SWEP.BarrelLength = 42
SWEP.ExtraSightDist = 7

-- Ironsights / Customization / Poses --

SWEP.HolsterPos = Vector(4.623, -2.211, 1.004)
SWEP.HolsterAng = Angle(-8.443, 28.843, 0)

SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "ar2"
SWEP.HoldtypeSights = "rpg"

SWEP.IronSightStruct = {
     Pos = Vector(-3.44, 0, 2.3),
     Ang = Angle(0.1, 0, 0),
     Magnification = 1,
     SwitchToSound = "",
}

SWEP.ActivePos = Vector(0, -1, 0)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.CustomizePos = Vector(0, 0, 0)
SWEP.CustomizeAng = Angle(0, 0, 0)

SWEP.CrouchPos = Vector(-2, -2, 0)
SWEP.CrouchAng = Angle(0, 0, -8)

SWEP.MirrorVMWM = true
SWEP.WorldModelOffset = {
    pos        =    Vector(-10, 4.5, -4.5),
    ang        =    Angle(-10, 0, 180),
    bone    =    "ValveBiped.Bip01_R_Hand",
}

-- Weapon sounds --

local path = "weapons/arccw/m249/"
local pathDist = "weapons/arccw/hk416/"
SWEP.FirstShootSound = path .. "fire.ogg"
SWEP.ShootSound = {path .. "fire2.ogg"}
SWEP.ShootSoundSilenced = path .. "supp.ogg"
SWEP.DistantShootSound = pathDist .. "lowpolyhk416_fire_auto_dist.ogg"

-- Bodygroups --

SWEP.BulletBones = {
    [1] = "Bullet1",    [2] = "Bullet2",    [3] = "Bullet3", [4] = "Bullet4",    [5] = "Bullet5",    [6] = "Bullet6",
    [7] = "Bullet7",    [8] = "Bullet8",    [9] = "Bullet9", [10] = "Bullet10",    [11] = "Bullet11",    [12] = "Bullet12"
}

SWEP.DefaultBodygroups = "000000000"

SWEP.AttachmentElements = {

    ["nofh"] = {
        VMBodygroups = {{ind = 1, bg = 4}},
    },

    ["go_stock"] = {
        VMBodygroups = {
            {ind = 2, bg = 1}
        },
        VMElements = {
        {
                Model = "models/weapons/arccw/atts/buffer_lpstock.mdl",
                Bone = "Body",
                Offset = {
                    pos = Vector(0, -2, -12.1),
                    ang = Angle(90, 0, -90),
                },
                Scale = Vector(0.9,0.9,0.9),
            }
        },
    },
    
    ["lpglobal_stock"] = {
        VMBodygroups = {
            {ind = 2, bg = 1}
        },
        VMElements = {
        {
                Model = "models/weapons/arccw/atts/buffer_lpstock.mdl",
                Bone = "Body",
                Offset = {
                    pos = Vector(0, -2, -12.1),
                    ang = Angle(90, 0, -90),
                },
                Scale = Vector(0.9,0.9,0.9),
            }
        },
    },
    
    ["lphm_stock"] = {
        VMBodygroups = {{ind = 2, bg = 1}},
    },
    
    ["commandobar"] = {
        VMBodygroups = {{ind = 3, bg = 1}},
        AttPosMods = {
            [3] = {
                vpos = Vector(0, 0, -6)
            },
        },
    },
    
    ["sawbar"] = {
        VMBodygroups = {{ind = 3, bg = 2}},
        AttPosMods = {
            [3] = {
                vpos = Vector(0, 0, -6)
            },
        },
    },

    -- Skins --

    ["skin_wireframe"] = {
        VMSkin = 1,
    },
}

-- Animations --

SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
        Framerate = 60,
        Time = 330 / 60,
    },
    ["idle_empty"] = {
        Source = "idle_empty",
        Framerate = 60,
        Time = 330 / 60,
    },
    ["ready"] = {
        Source = "ready",
        Framerate = 60,
        Time = 122 / 60,
        SoundTable = {
            { s = path .. "start.ogg", t = 0 / 60, c = ca },
            { s = path .. "charge.ogg", t = 36 / 60, c = ca },
            { s = path .. "end.ogg", t = 78 / 60, c = ca },
        },
    },
    ["draw"] = {
        Source = "draw",
        Framerate = 60,
    },
    ["fire"] = {
        Source = "fire",
        Framerate = 60,
        Time = 43 / 60,
        ShellEjectAt = 0.01,
        SoundTable = {
        },
    },
    ["fire_empty"] = {
        Source = "fire_empty",
        Framerate = 60,
        Time = 43 / 60,
        ShellEjectAt = 0.01,
        SoundTable = {
        },
    },

    -- 100-R Reloads --

    ["reload"] = {
        Source = "reload",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        MinProgress = 1,
        Time = 298 / 60,
        Framerate = 60,
        LastClip1OutTime = 2.4,
        LHIK = true,
        LHIKIn = 0.2,
        LHIKEaseIn = 0.2,
        LHIKEaseOut = 0.2,
        LHIKOut = 0.62,
        SoundTable = {
            { s = path .. "start.ogg", t = 0 / 60, c = ca },
            { s = path .. "opentop.ogg", t = 20 / 60, c = ca },
            { s = path .. "beltout.ogg", t = 62 / 60, c = ca },
            { s = path .. "magout.ogg", t = 68 / 60, c = ca },
            { s = path .. "magin.ogg", t = 143 / 60, c = ca },
            { s = path .. "beltin.ogg", t = 165 / 60, c = ca },
            { s = path .. "closetop.ogg", t = 230 / 60, c = ca },
            { s = path .. "end.ogg", t = 257 / 60, c = ca },
        },
    },
    ["reload_empty"] = {
        Source = "reload_empty",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Framerate = 60,
        Time = 348 / 60,
        LastClip1OutTime = 3,
        LHIK = true,
        LHIKIn = 2.2,
        LHIKEaseIn = 0.1,
        LHIKEaseOut = 0.15,
        LHIKOut = 0.7,
        SoundTable = {
            { s = path .. "start.ogg", t = 0 / 60, c = ca },
            { s = path .. "charge.ogg", t = 36 / 60, c = ca },
            { s = path .. "opentop.ogg", t = 80 / 60, c = ca },
            { s = path .. "magout.ogg", t = 117 / 60, c = ca },
            { s = path .. "drop.ogg", t = 176 / 60, c = ca },
            { s = path .. "magin.ogg", t = 193 / 60, c = ca },
            { s = path .. "beltin.ogg", t = 215 / 60, c = ca },
            { s = path .. "closetop.ogg", t = 278 / 60, c = ca },
            { s = path .. "end.ogg", t = 303 / 60, c = ca },
        },
    },
    
    -- Inspecc --

    ["enter_inspect"] = {
        Source = "enter_inspect",
        time = 70 / 60,
        Framerate = 60,
        LHIK = true,
        LHIKIn = 0.3,
        LHIKOut = 0,
        SoundTable = {
            { s = path .. "lowpolyfal_cloth2.ogg", t = 0 / 30, c = ca },
        },
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
        time = 143 / 60,
        Framerate = 60,
        LHIK = true,
        LHIKIn = 0,
        LHIKEaseOut = 0.3,
        LHIKOut = 0.84,
        SoundTable = {
            { s = path .. "lowpolyfal_cloth1.ogg", t = 2 / 30, c = ca },
        },
    },

    ["enter_inspect_empty"] = {
        Source = "enter_inspect_empty",
        time = 70 / 60,
        Framerate = 60,
        LHIK = true,
        LHIKIn = 0.1,
        LHIKOut = 0,
        SoundTable = {
            { s = path .. "lowpolyfal_cloth2.ogg", t = 0 / 30, c = ca },
        },
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
        time = 143 / 60,
        Framerate = 60,
        LHIK = true,
        LHIKIn = 0,
        LHIKEaseOut = 0.3,
        LHIKOut = 0.84,
        SoundTable = {
            { s = path .. "lowpolyfal_cloth1.ogg", t = 2 / 30, c = ca },
        },
    },
}

-- ADS animation blending, thanks fesiug -- 

SWEP.Hook_Think = function(wep)
    local vm = wep:GetOwner():GetViewModel()
    vm:SetPoseParameter( "sights", Lerp(wep:GetSightDelta(), 1, 0) )
end

-- Attachments --

SWEP.CamAttachment = 3

SWEP.RejectAttachments = {
  ["lpak_polymer"] = true,
}

SWEP.Attachments = {
    {
        PrintName = "Optic",
        Slot = {"optic_lp", "optic", "sniper_optic"},
        DefaultAttName = "Iron Sights",
        Bone = "topcover",
        Offset = {
            vpos = Vector(-0.23, -0.6, -5),
            vang = Angle(90, 0, -90),
        },
        ExtraSightDist = 10,
        InstalledEles = {"nors"},
        CorrectivePos = Vector(0.13, 0, 0.33),
    },
    {
        PrintName = "Handguard",
        Slot = {"lpm249_barrel"},
		DefaultAttIcon = Material("entities/att/acwatt_lpfal_defhand.png"),
        DefaultAttName = "14' Standard Issue Barrel",
        Bone = "Body",
        Offset = {
            vpos = Vector(2.8, -5.5, -18),
            vang = Angle(90, 0, -90),
        },
    },
    {
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Slot = {"muzzle"},
        Bone = "Barrel",
        Offset = {
            vpos = Vector(0, 0, -5),
            vang = Angle(90, 0, -90),
        },
        InstalledEles = {"nofh"},
    },
    { 
        PrintName = "Underbarrel",
        Slot = {"foregrip","bipod","ubgl"},
        Bone = "Body",
        Offset = {
            vpos = Vector(-0.05, 0.5, 1),
            vang = Angle(90, 0, -90),
        },
        ExcludeFlags = {"fnchand"},
    },
    {
        PrintName = "Tactical",
        Slot = {"tac"},
        Bone = "Body",
        Offset = {
            vpos = Vector(-0.8, -1, 1),
            vang = Angle(90, 0, 180),
        },
    },
    {
        PrintName = "Mag Type",
        Slot = {"lpm249_mag"},
		DefaultAttIcon = Material("entities/att/acwatt_lpfal_defmag.png"),
        DefaultAttName = "100-Round Standard Box",
    },
    {
        PrintName = "Stock",
        Slot = {"lpglobal_stock","go_stock","lphm_stock"},
		DefaultAttIcon = Material("entities/att/acwatt_lpfal_defstock.png"),
        DefaultAttName = "Standard Polymer Stock",
        VMScale = Vector(0.9,0.9,0.9),
        Bone = "Body",
        Offset = {
            vpos = Vector(0, -2, -12.1),
            vang = Angle(90, 0, -90),
        },
    },
    {
        PrintName = "Perk",
        Slot = "go_perk",
    },
    {
        PrintName = "Charm",
        Slot = {"charm","fml_charm"},
        FreeSlot = true,
        Bone = "Body",
        Offset = {
            vpos = Vector(0.5, -0.1, -14),
            vang = Angle(90, 0, -90),
        },
    },
    {
        PrintName = "Skin",
        Slot = {"skin_lpak"},
        DefaultAttName = "Wood",
        FreeSlot = true,
    },
}