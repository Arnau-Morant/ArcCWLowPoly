SWEP.Base = "arccw_base"
SWEP.Spawnable = true
SWEP.Category = "ArcCW - Low Poly"
SWEP.AdminOnly = false
SWEP.UseHands = true

-- Muzzle and shell effects --

SWEP.MuzzleEffect = "muzzleflash_6"
SWEP.ShellModel = "models/shells/shell_338mag.mdl"
SWEP.ShellScale = 1.2
SWEP.ShellPitch = 88

SWEP.MuzzleEffectAttachment = 1
SWEP.CaseEffectAttachment = 2
SWEP.TracerNum = 1
SWEP.TracerCol = Color(255, 25, 25)
SWEP.TracerWidth = 3

-- Fake name --

SWEP.PrintName = "S-1931"

-- Real name --

SWEP.TrueName = "K31" 

-- Trivia --

SWEP.Trivia_Class = "Rifle"
SWEP.Trivia_Desc = "Bolt action rifle that uses a straight pull bolt."
SWEP.Trivia_Manufacturer = "Bern"
SWEP.Trivia_Calibre = "7.5×55mm Swiss"
SWEP.Trivia_Mechanism = "Bolt action"
SWEP.Trivia_Country = "Switzerland"
SWEP.Trivia_Year = 1931

-- Weapon slot --

SWEP.Slot = 2

-- Weapon's manufacturer real name --

if GetConVar("arccw_truenames"):GetBool() then
    SWEP.PrintName = SWEP.TrueName
    SWEP.Trivia_Manufacturer = "Waffenfabrik Bern"
end

-- Viewmodel / Worldmodel / Model FOV / Animations --

SWEP.ViewModel = "models/weapons/arccw/c_lowpolyk31.mdl"
SWEP.WorldModel = "models/weapons/w_snip_awp.mdl"
SWEP.ViewModelFOV = 70
SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_RPG
 
SWEP.MirrorVMWM = true
SWEP.WorldModelOffset = {
    pos        =    Vector(-7.5, 4, -5.7),
    ang        =    Angle(-6, 0, 180),
    bone    =    "ValveBiped.Bip01_R_Hand",
}

-- Damage parameters --

SWEP.Damage = 74
SWEP.DamageMin = 114
SWEP.Range = 200
SWEP.Penetration = 22
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = nil
SWEP.MuzzleVelocity = 780

-- Mag size --

SWEP.ChamberSize = 0
SWEP.Primary.ClipSize = 6
SWEP.ExtendedClipSize = 8
SWEP.ReducedClipSize = 4

-- Recoil --

SWEP.Recoil = 1.2
SWEP.RecoilSide = 1.4

SWEP.MaxRecoilBlowback = 1
SWEP.VisualRecoilMult = 1
SWEP.RecoilPunch = 3

-- Firerate / Firemodes --

SWEP.Delay = 60 / 450
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
SWEP.ShotgunReload = true
SWEP.NoLastCycle = true
SWEP.ReloadInSights = true

SWEP.ShootVol = 140
SWEP.ShootPitch = 100

SWEP.ProceduralRegularFire = false
SWEP.ProceduralIronFire = false

-- NPC stuff -- 

SWEP.NPCWeaponType = {"weapon_crossbow"}
SWEP.NPCWeight = 130

-- Accuracy --

SWEP.AccuracyMOA = 0.14
SWEP.HipDispersion = 350
SWEP.MoveDispersion = 400

SWEP.Primary.Ammo = "SniperPenetratedRound"
SWEP.MagID = "k31"

-- Speed mult --

SWEP.SpeedMult = 0.79
SWEP.SightedSpeedMult = 0.74
SWEP.SightTime = 0.6
SWEP.MeleeTime = 0.7

-- Gun length --

SWEP.BarrelLength = 42

-- Ironsight / Customization / Active pos ang --

SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "ar2"
SWEP.HoldtypeSights = "rpg"

SWEP.IronSightStruct = {
     Pos = Vector(-3.363, -3, 1.879),
     Ang = Angle(0.4, 0, 0),
     Magnification = 1.1,
     SwitchToSound = "",
}

SWEP.CustomizePos = Vector(0, 0, 0)
SWEP.CustomizeAng = Angle(0, 0, 0)

SWEP.CrouchPos = Vector(-2, -2, 0)
SWEP.CrouchAng = Angle(0, 0, -4)

SWEP.SprintPos = Vector(1.84, 0, 0)
SWEP.SprintAng = Angle(-6.7, 13.5, 0)

SWEP.ActivePos = Vector(0, 0, 0)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.BarrelOffsetSighted = Vector(0, 0, -1)
SWEP.BarrelOffsetHip = Vector(2, 0, -2)

-- Weapon sounds --

SWEP.ShootSound = "weapons/arccw/k31/lowpolyk31_fire.ogg"
SWEP.ShootSoundSilenced = "weapons/arccw/m98b/lowpolym98b_supp.ogg"
SWEP.DistantShootSound = "weapons/arccw/k31/lowpolyk31_dist.ogg"

-- LUA --

SWEP.Hook_Think = function(wep)
	wep:GetOwner():GetViewModel():SetPoseParameter( "sights", 1 - wep:GetSightDelta() ) -- This is entirely possible thanks to Fesiug
end

-- Animations --

SWEP.Animations = {
    ["idle"] = false,
    ["ready"] = {
        Source = "ready",
        Framerate = 60,
        Time = 60 / 60,
    },
    ["draw"] = {
        Source = "draw",
        time = 0.1,
        Framerate = 60,
    },
    ["bash"] = {
        Source = "bash",
        time = 70 / 60,
        Framerate = 60,
    },

    -- Fire --

    ["fire"] = {
        Source = "fire",
        Framerate = 60,
        Time = 60 / 60,
    },
    ["fire_empty"] = {
        Source = "fire",
        Framerate = 60,
        Time = 60 / 60,
    },

    -- Cycle --

    ["cycle"] = {
        Source = "cycle",
        Time = 71 / 60,
        Framerate = 60,
        ShellEjectAt = 0.4,
    },

    -- SG Reload --
    
    ["sgreload_start"] = {
        Source = "sgreload_start",
        Time = 105 / 60,
        LastClip1OutTime = 1,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SHOTGUN,
    },
    ["sgreload_start_empty"] = {
        Source = "sgreload_start_empty",
        Time = 116 / 60,
        LastClip1OutTime = 1,
        ShellEjectAt = 0.5,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SHOTGUN,
    },
    ["sgreload_insert"] = {
        Source = "sgreload_insert",
        Time = 41 / 60,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        TPAnimStartTime = 0.45,
    },
    ["sgreload_finish"] = {
        Source = "sgreload_finish",
        Time = 64 / 60,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SHOTGUN,
    },

    -- SC Reload --
    
    ["reload"] = {
        Source = "reload",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Time = 235 / 60,
        Framerate = 60,
        LastClip1OutTime = 0,
    },
    ["reload_empty"] = {
        Source = "reload_empty",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Framerate = 60,
        Time = 235 / 60,
        ShellEjectAt = 0.5,
        LastClip1OutTime = 0,
    },

    -- Inspecc --
    
    ["enter_inspect"] = {
        Source = "enter_inspect",
        Framerate = 60,
        Time = 40 / 60,
        LHIK = true,
        LHIKIn = 0.2,
        LHIKEaseIn = 0.3,
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
        LHIKEaseOut = 0.2,
        LHIKOut = 0.3,
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

    -- Sprint animations that can't be used because the cycle animation gets overwritten
    
    -- ["enter_sprint"] = {
    --     Source = "enter_sprint",
    --     Framerate = 60,
    --     Time = 30 / 60,
    -- },
    -- ["idle_sprint"] = {
    --     Source = "idle_sprint",
    --     Framerate = 60,
    --     Time = 120 / 60,
    -- },
    -- ["exit_sprint"] = {
    --     Source = "exit_sprint",
    --     Framerate = 60,
    --     Time = 36 / 60,
    -- },
}

-- Bodygroups -- 

SWEP.StripperClipBones = {
    [1] = "Bullet1",
    [2] = "Bullet2",
    [3] = "Bullet3",
    [4] = "Bullet4",
    [5] = "Bullet5",
    [6] = "Bullet6",
}

SWEP.AttachmentElements = {
    ["sclips"] = {
        VMBodygroups = {{ind = 1, bg = 1}},
    },
    ["nostock"] = {
        VMBodygroups = {{ind = 2, bg = 1}},
        TrueNameChange = "K31 Sawn Off",
    },
    ["riser"] = {
        VMBodygroups = {{ind = 3, bg = 1}},
    },
    ["carbinebarrel"] = {
        VMBodygroups = {{ind = 4, bg = 1},{ind = 5, bg = 1}},
        TrueNameChange = "K31 Carbine",
        AttPosMods = {
            [3] = {
                vpos = Vector(0, 0, -10),
            },
        },
        Override_IronSightStruct = {
            Pos = Vector(-3.365, -3, 1.78),
            Ang = Angle(0.4, 0, 0),
            Magnification = 1.1,
        },
    },
    ["obrezbarrel"] = {
        VMBodygroups = {{ind = 2, bg = 2},{ind = 4, bg = 1},{ind = 5, bg = 2}}, -- Made it this way so the model doesn't have any visible seams
        TrueNameChange = "K31 Obrez",
        AttPosMods = {
            [3] = {
                vpos = Vector(0, -0.1, -15.4),
            },
            [4] = {
                vpos = Vector(0, 0.4, 9),
            },
        },
        Override_IronSightStruct = {
            Pos = Vector(-3.368, -3, 1.94),
            Ang = Angle(0.4, 0, 0),
            Magnification = 1.1,
        },
    },
    ["skin_black"] = {
        VMSkin = 2,
    },
    ["skin_wireframe"] = {
        VMSkin = 1,
    },
}

-- Attachments --

SWEP.Attachments = {
    {
        PrintName = "Optic",
        DefaultAttName = "Iron Sights",
        Slot = {"optic", "optic_sniper", "optic_lp"},
        Bone = "Body",
        Offset = {
            vpos = Vector(0, -2.8, 10.5),
            vang = Angle(90, 0, -90),
        },
        ExcludeFlags = {"obrezbarrel"},
        InstalledEles = {"riser"},
    },
    {
        PrintName = "Barrel",
        Slot = "lpk31_barrel",
        DefaultAttName = "652mm Barrel (Standard)",
		DefaultAttIcon = Material("entities/att/acwatt_lowpolyk31defbarrel.png"),
        Bone = "Body",
        Offset = {
            vpos = Vector(0, 0, 9),
            vang = Angle(90, 0, -90),
        },
    },
    {
        PrintName = "Muzzle",
        Bone = "Barrel",
        Slot = {"muzzle"},
        Offset = {
            vpos = Vector(0, 0, 0),
            vang = Angle(90, 0, -90),
        },
    },
    { 
        PrintName = "Underbarrel",
        Slot = {"foregrip", "bipod"},
        Bone = "Body",
        Offset = {
            vpos = Vector(0, 0, 14),
            vang = Angle(90, 0, -90),
        },
    },
    {
        PrintName = "Tactical",
        Slot = "tac",
        Bone = "Body",
        Offset = {
            vpos = Vector(0.5, -1.3, 18),
            vang = Angle(90, 0, 0),
        },
        ExcludeFlags = {"obrezbarrel"},
    },
    {
        PrintName = "Stock",
        Slot = "lpk31_stock",
        DefaultAttName = "Wooden stock (Standard)",
		DefaultAttIcon = Material("entities/att/acwatt_lowpolyk31defstock.png"),
        ExcludeFlags = {"obrezbarrel"},
    },
    {
        PrintName = "Ammo Type",
        Slot = "go_ammo",
    },
    {
        PrintName = "Reload",
        Slot = "lpk31_reload",
        DefaultAttName = "Single bullet reload",
		DefaultAttIcon = Material("entities/att/acwatt_lowpolyk31manual.png"),
    },
    {
        PrintName = "Perk",
        Slot = "go_perk"
    },
    {
        PrintName = "Charm",
        Slot = "charm",
        FreeSlot = true,
        Bone = "Body", 
        Offset = {
            vpos = Vector(1, -0.4, 4),
            vang = Angle(90, 0, -90),
        },
    },
    {
        PrintName = "Skins",
        Slot = {"skin_lpak"},
        DefaultAttName = "Wood",
        FreeSlot = true
    },
}