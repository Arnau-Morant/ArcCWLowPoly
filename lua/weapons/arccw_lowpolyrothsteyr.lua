SWEP.Base = "arccw_base"
SWEP.Spawnable = true
SWEP.Category = "ArcCW - Low Poly"
SWEP.AdminOnly = false
SWEP.UseHands = true

-- Muzzle and shell effects --

SWEP.MuzzleEffect = "muzzleflash_1"
SWEP.ShellModel = "models/shells/shell_9mm.mdl"
SWEP.ShellScale = 1.4
SWEP.ShellPitch = 90

SWEP.MuzzleEffectAttachment = 1
SWEP.CaseEffectAttachment = 2
SWEP.TracerNum = 1
SWEP.TracerCol = Color(255, 25, 25)
SWEP.TracerWidth = 3

-- Fake name --

SWEP.PrintName = "M1907"

-- Real name --

SWEP.TrueName = "Roth-Steyr M1907" 

-- Trivia --

SWEP.Trivia_Class = "Pistol"
SWEP.Trivia_Desc = "How did you get your hands on one of these?"
SWEP.Trivia_Manufacturer = "F.G.GY."
SWEP.Trivia_Calibre = "8x18 Steyr"
SWEP.Trivia_Mechanism = "Short recoil"
SWEP.Trivia_Country = "Austria-Hungary"
SWEP.Trivia_Year = 1907

-- Weapon slot --

SWEP.Slot = 1

-- Weapon's manufacturer real name --

if GetConVar("arccw_truenames"):GetBool() then
    SWEP.PrintName = SWEP.TrueName
    SWEP.Trivia_Manufacturer = "Steyr-Mannlicher"
end

-- Viewmodel / Worldmodel / Model FOV / Animations --

SWEP.ViewModel = "models/weapons/arccw/c_lowpolyrothsteyr.mdl"
SWEP.WorldModel = "models/weapons/w_pist_usp.mdl"
SWEP.ViewModelFOV = 65
SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_REVOLVER
 
SWEP.MirrorVMWM = true
SWEP.WorldModelOffset = {
    pos        =    Vector(-15, 3, -6),
    ang        =    Angle(0, -5, 180),
    bone    =    "ValveBiped.Bip01_R_Hand",
}

-- Damage parameters --

SWEP.Damage = 30
SWEP.DamageMin = 11
SWEP.Range = 50
SWEP.Penetration = 3
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = nil
SWEP.MuzzleVelocity = 330

-- Mag size --

SWEP.ChamberSize = 0
SWEP.Primary.ClipSize = 10
SWEP.ExtendedClipSize = 12
SWEP.ReducedClipSize = 8

-- Recoil --

SWEP.Recoil = 0.6
SWEP.RecoilSide = 0.4

SWEP.MaxRecoilBlowback = 0.5
SWEP.VisualRecoilMult = 0
SWEP.RecoilPunch = 0.8

-- Firerate / Firemodes --

SWEP.Delay = 60 / 550
SWEP.Num = 1
SWEP.Firemodes = {
    {
        PrintName = "SEMI",
        Mode = 1,
    },
    {
        Mode = 0
    }
}

SWEP.ShootVol = 110
SWEP.ShootPitch = 100

SWEP.ProceduralRegularFire = false
SWEP.ProceduralIronFire = false

-- NPC stuff -- 

SWEP.NPCWeaponType = {"weapon_pistol"}
SWEP.NPCWeight = 30

-- Accuracy --

SWEP.AccuracyMOA = 8
SWEP.HipDispersion = 300
SWEP.MoveDispersion = 300

SWEP.Primary.Ammo = "pistol"
SWEP.MagID = "m1907"

-- Speed mult --

SWEP.SpeedMult = 1
SWEP.SightedSpeedMult = 0.9
SWEP.SightTime = 0.2

-- Gun length --

SWEP.BarrelLength = 15

-- Ironsight / Customization / Active pos ang --

SWEP.HoldtypeHolstered = "normal"
SWEP.HoldtypeActive = "pistol"
SWEP.HoldtypeSights = "revolver"

SWEP.IronSightStruct = {
     Pos = Vector(-3.75, -7.035, 1.759),
     Ang = Angle(0, -0.301, 0),
     Magnification = 1.1,
     SwitchToSound = "",
}

SWEP.CustomizePos = Vector(-2, 0, 0)
SWEP.CustomizeAng = Angle(0, 0, 0)

SWEP.CrouchPos = Vector(-1, 0, 0)
SWEP.CrouchAng = Angle(0, 0, -4)

SWEP.SprintPos = Vector(1.799, -11.056, -8.242)
SWEP.SprintAng = Angle(42.099, 4.4, 0)

SWEP.ActivePos = Vector(0, 0, 0)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.BarrelOffsetSighted = Vector(0, 0, -1)
SWEP.BarrelOffsetHip = Vector(2, 0, -2)

-- Weapon sounds --

SWEP.ShootSound = "weapons/arccw/rothsteyr/lowpolyrothsteyr_fire.ogg"
SWEP.ShootSoundSilenced = "weapons/arccw/fiveseven/lowpolyfiveseven_supp.ogg"
SWEP.DistantShootSound = "weapons/arccw/rothsteyr/lowpolyrothsteyr_dist.ogg"

-- LUA --

SWEP.Hook_Think = function(wep)
	wep:GetOwner():GetViewModel():SetPoseParameter( "sights", 1 - wep:GetSightDelta() ) -- This is entirely possible thanks to Fesiug
end

-- Animations --

SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
        Framerate = 60,
        Time = 220 / 60,
    },
    ["idle_empty"] = {
        Source = "idle_empty",
        Framerate = 60,
        Time = 220 / 60,
    },
    ["ready"] = {
        Source = "ready",
        Framerate = 60,
        Time = 65 / 60,
    },
    ["draw"] = {
        Source = "draw",
        time = 0.1,
        Framerate = 60,
    },

    -- Fire --

    ["fire"] = {
        Source = "fire",
        Framerate = 60,
        Time = 53 / 60,
        ShellEjectAt = 0.02,
    },
    ["fire_empty"] = {
        Source = "fire_empty",
        Framerate = 60,
        Time = 53 / 60,
        ShellEjectAt = 0.02,
        SoundTable = {{ s = "weapons/arccw/rothsteyr/lowpolyrothsteyr_charge.ogg", t = 0.02 }},
    },

    -- Reload --
    
    ["reload"] = {
        Source = "reload",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        Time = 220 / 60,
        Framerate = 60,
        LastClip1OutTime = 0,
        LHIK = true,
        LHIKIn = 0.3,
        LHIKEaseIn = 0.3,
        LHIKEaseOut = 0.2,
        LHIKOut = 0.3,
    },
    ["reload_empty"] = {
        Source = "reload_empty",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        Framerate = 60,
        Time = 160 / 60,
        LastClip1OutTime = 0,
        LHIK = true,
        LHIKIn = 0.3,
        LHIKEaseIn = 0.3,
        LHIKEaseOut = 0.2,
        LHIKOut = 0.3,
    },

    -- Idle sights --
    
    ["enter_sight"] = {
        Source = "enter_sights",
        Framerate = 60,
        Time = 1 / 60,
    },
    ["idle_sights"] = {
        Source = "idle_sights",
        Framerate = 60,
        Time = 120 / 60,
    },
    ["exit_sight"] = {
        Source = "exit_sights",
        Framerate = 60,
        Time = 1 / 60,
    },
    
    ["enter_sight_empty"] = {
        Source = "enter_sights_empty",
        Framerate = 60,
        Time = 1 / 60,
    },
    ["idle_sights_empty"] = {
        Source = "idle_sights_empty",
        Framerate = 60,
        Time = 120 / 60,
    },
    ["exit_sight_empty"] = {
        Source = "exit_sights_empty",
        Framerate = 60,
        Time = 1 / 60,
    },

    -- Inspecc --
    
    ["enter_inspect"] = {
        Source = "enter_inspect",
        Framerate = 60,
        Time = 50 / 60,
        LHIK = true,
        LHIKIn = 0.5,
        LHIKEaseIn = 0.5,
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
        Time = 144 / 60,
        LHIK = true,
        LHIKIn = 0,
        LHIKEaseOut = 0.8,
        LHIKOut = 1,
    },
    
    ["enter_inspect_empty"] = {
        Source = "enter_inspect_empty",
        Framerate = 60,
        Time = 50 / 60,
        LHIK = true,
        LHIKIn = 1,
        LHIKEaseIn = 1,
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
        Time = 144 / 60,
        LHIK = true,
        LHIKIn = 0,
        LHIKEaseOut = 0.8,
        LHIKOut = 1,
    },
}

-- Bodygroups -- 

SWEP.BulletBones = {
    [1] = "Bullet1",
    [2] = "Bullet2",
    [3] = "Bullet3",
    [4] = "Bullet4",
    [5] = "Bullet5",
    [6] = "Bullet6",
    [7] = "Bullet7",
    [8] = "Bullet8",
    [9] = "Bullet9",
    [10] = "Bullet10",
}

SWEP.AttachmentElements = {
    ["skin_wireframe"] = {
        VMSkin = 1,
    },
    ["skin_black"] = {
        VMSkin = 2,
    },
}

-- Attachments --

SWEP.RejectAttachments = {
  ["pistol_onehand"] = true,
  ["go_optic_hunter"] = true,
}

SWEP.Attachments = {
    {
        PrintName = "Optic",
        DefaultAttName = "Iron Sights",
        Slot = {"optic_lp"},
        VMScale = Vector(0.8,0.8,0.8),
        Bone = "Brass",
        Offset = {
            vpos = Vector(0.047, -0.26, 2),
            vang = Angle(90, 0, -90),
        },
        InstalledEles = {"nois"},
        ExtraSightDist = 5
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
        Slot = {"foregrip_pistol", "style_pistol"},
        Bone = "Brass",
        Offset = {
            vpos = Vector(0.15, 1, 1),
            vang = Angle(90, 0, -90),
        },
    },
    {
        PrintName = "Tactical",
        Slot = {"tac_pistol", "mw_tac"},
        Bone = "Brass",
        VMScale = Vector(0.8,0.8,0.8),
        Offset = {
            vpos = Vector(0, 0.8, 4),
            vang = Angle(90, 0, -90),
        },
		ExcludeFlags = {"1911Fg"},
    },
    {
        PrintName = "Ammo Type",
        Slot = "go_ammo",
        ExcludeFlags = {"exploammo"},
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
            vpos = Vector(0.9, -2.5, 5),
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