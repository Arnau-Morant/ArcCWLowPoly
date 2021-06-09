SWEP.Base = "arccw_base"
SWEP.Spawnable = true
SWEP.Category = "ArcCW - Low Poly"
SWEP.AdminOnly = false
SWEP.UseHands = true

-- Muzzle and shell effects --

SWEP.MuzzleEffect = "muzzleflash_5"
SWEP.ShellModel = "models/shells/shell_338mag.mdl"
SWEP.ShellScale = 1.8
SWEP.ShellPitch = 75

SWEP.MuzzleEffectAttachment = 1
SWEP.CaseEffectAttachment = 2
SWEP.TracerNum = 1
SWEP.TracerCol = Color(255, 25, 25)
SWEP.TracerWidth = 3

-- Fake name --

SWEP.PrintName = "KZ27"

-- Real name --

SWEP.TrueName = "M82A1" 

-- Trivia --

SWEP.Trivia_Class = "AMR"
SWEP.Trivia_Desc = "Semi-automatic anti-material sniper rifle, still uncappable of defeating a shield."
SWEP.Trivia_Manufacturer = "Casual LFA"
SWEP.Trivia_Calibre = ".50 BMG (12.7x99 mm)"
SWEP.Trivia_Mechanism = "Recoil-operated, rotating bolt"
SWEP.Trivia_Country = "USA"
SWEP.Trivia_Year = 1982

-- Weapon slot --

SWEP.Slot = 2

-- Weapon's manufacturer real name --

if GetConVar("arccw_truenames"):GetBool() then
    SWEP.PrintName = SWEP.TrueName
    SWEP.Trivia_Manufacturer = "Barrett"
end

-- Viewmodel / Worldmodel / Model FOV / Animations --

SWEP.ViewModel = "models/weapons/arccw/c_lowpolym82.mdl"
SWEP.WorldModel = "models/weapons/w_snip_awp.mdl"
SWEP.ViewModelFOV = 60
SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_RPG
 
SWEP.MirrorVMWM = true
SWEP.WorldModelOffset = {
    pos        =    Vector(-7, 4, -6),
    ang        =    Angle(-6, 0, 180),
    bone    =    "ValveBiped.Bip01_R_Hand",
}

-- Damage parameters --

SWEP.Damage = 172
SWEP.DamageMin = 114
SWEP.Range = 200
SWEP.Penetration = 36
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = nil
SWEP.MuzzleVelocity = 814

-- Mag size --

SWEP.ChamberSize = 1
SWEP.Primary.ClipSize = 5
SWEP.ExtendedClipSize = 8
SWEP.ReducedClipSize = 3

-- Recoil --

SWEP.Recoil = 4
SWEP.RecoilSide = 2

SWEP.MaxRecoilBlowback = 0.5
SWEP.VisualRecoilMult = 0
SWEP.RecoilPunch = 1.2

-- Firerate / Firemodes --

SWEP.Delay = 60 / 400
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

SWEP.ReloadInSights = true

SWEP.ShootVol = 140
SWEP.ShootPitch = 100

SWEP.ProceduralRegularFire = false
SWEP.ProceduralIronFire = false

-- NPC stuff -- 

SWEP.NPCWeaponType = {"weapon_crossbow"}
SWEP.NPCWeight = 130

-- Accuracy --

SWEP.AccuracyMOA = 0.05
SWEP.HipDispersion = 700
SWEP.MoveDispersion = 700

SWEP.Primary.Ammo = "SniperPenetratedRound"
SWEP.MagID = "m82"

-- Speed mult --

SWEP.SpeedMult = 0.79
SWEP.SightedSpeedMult = 0.74
SWEP.SightTime = 0.4

-- Gun length --

SWEP.BarrelLength = 60

-- Ironsight / Customization / Active pos ang --

SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "ar2"
SWEP.HoldtypeSights = "rpg"

SWEP.IronSightStruct = {
     Pos = Vector(-3.241, -3.418, 0.56),
     Ang = Angle(-0.201, 0.05, 0),
     Magnification = 1.1,
     SwitchToSound = "",
}

SWEP.CustomizePos = Vector(0, 0, 0)
SWEP.CustomizeAng = Angle(0, 0, 0)

SWEP.CrouchPos = Vector(-1, 0, 0)
SWEP.CrouchAng = Angle(0, 0, -4)

SWEP.SprintPos = Vector(1.84, 0, 0)
SWEP.SprintAng = Angle(-6.7, 13.5, 0)

SWEP.ActivePos = Vector(0, 0, 0)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.BarrelOffsetSighted = Vector(0, 0, -1)
SWEP.BarrelOffsetHip = Vector(2, 0, -2)

-- Weapon sounds --

SWEP.ShootSound = "weapons/arccw/m82/lowpolym82_fire.ogg"
SWEP.ShootSoundSilenced = "weapons/arccw/m82/lowpolym82_supp.ogg"
SWEP.DistantShootSound = "weapons/arccw/m82/lowpolym82_dist.ogg"

-- LUA --

SWEP.Hook_Think = function(wep)
	wep:GetOwner():GetViewModel():SetPoseParameter( "sights", 1 - wep:GetSightDelta() ) -- This is entirely possible thanks to Fesiug
end

-- Animations --

SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
        Framerate = 60,
        Time = 500 / 60,
    },
    ["ready"] = {
        Source = "ready",
        Framerate = 60,
        Time = 95 / 60,
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
        Time = 70 / 60,
        ShellEjectAt = 0.02,
    },
    ["fire_empty"] = {
        Source = "fire",
        Framerate = 60,
        Time = 70 / 60,
        ShellEjectAt = 0.02,
        SoundTable = {{ s = "weapons/arccw/m82/lowpolym82_empty.ogg", t = 0.02 }},
    },

    -- Reload --
    
    ["reload"] = {
        Source = "reload",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Time = 207 / 60,
        Framerate = 60,
        LastClip1OutTime = 1.3,
        LHIK = true,
        LHIKIn = 0.4,
        LHIKEaseIn = 0.2,
        LHIKEaseOut = 0.2,
        LHIKOut = 0.7,
    },
    ["reload_empty"] = {
        Source = "reload_empty",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Framerate = 60,
        Time = 259 / 60,
        LastClip1OutTime = 1.4,
        LHIK = true,
        LHIKIn = 0.4,
        LHIKEaseIn = 0.2,
        LHIKEaseOut = 0.3,
        LHIKOut = 1.5,
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
        Time = 1 / 60,
    },
    ["exit_sight"] = {
        Source = "exit_sights",
        Framerate = 60,
        Time = 1 / 60,
    },

    -- Inspecc --
    
    ["enter_inspect"] = {
        Source = "enter_inspect",
        Framerate = 60,
        Time = 60 / 60,
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
        Time = 170 / 60,
        LHIK = true,
        LHIKIn = 0,
        LHIKEaseOut = 0.2,
        LHIKOut = 0.5,
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
}

SWEP.AttachmentElements = {
    ["cqbbarrel"] = {
        VMBodygroups = {{ind = 3, bg = 1}},
    },
    ["suppbarrel"] = {
        VMBodygroups = {{ind = 3, bg = 2}},
    },
    ["hemags"] = {
        VMBodygroups = {{ind = 4, bg = 1}},
        TrueNameChange = "XM109"
    },
    ["nois"] = {
        VMBodygroups = {{ind = 2, bg = 1}},
    },
    ["laser"] = {
        VMBodygroups = {{ind = 5, bg = 1}},
    },
    ["protbody"] = {
        VMBodygroups = {{ind = 1, bg = 1}},
        AttPosMods = {
            [1] = {
                vpos = Vector(0, -6.1, 8),
            }
        },
    },
    ["skin_wireframe"] = {
        VMSkin = 1,
    },
    ["skin_black"] = {
        VMSkin = 2,
    },
}

-- Attachments --

SWEP.Attachments = {
    {
        PrintName = "Optic",
        DefaultAttName = "Iron Sights",
        Slot = {"optic", "optic_sniper"},
        Bone = "Body",
        Offset = {
            vpos = Vector(0, -5.5, 9),
            vang = Angle(90, 0, -90),
        },
        InstalledEles = {"nois"},
        ExtraSightDist = 5
    },
    {
        PrintName = "Barrel",
        Slot = "lpm82_barrel",
        DefaultAttName = "20 in Barrel (M82A1)",
		DefaultAttIcon = Material("entities/att/acwatt_lowpolym82_defbarrel.png"),
    },
    { 
        PrintName = "Underbarrel",
        Slot = {"foregrip", "bipod"},
        Bone = "Body",
        Offset = {
            vpos = Vector(0, -3, 18),
            vang = Angle(90, 0, -90),
        },
    },
    {
        PrintName = "Tactical",
        Slot = "tac",
        Bone = "Body",
        Offset = {
            vpos = Vector(-1, -4.8, 21),
            vang = Angle(90, 0, -205),
        },
        InstalledEles = {"laser"},
    },
    {
        PrintName = "Body",
        Slot = "lpm82_body",
        DefaultAttName = "Standard Frame (M82A1)",
		DefaultAttIcon = Material("entities/att/acwatt_lowpolym82defbody.png"),
    },
    {
        PrintName = "Mag Type",
        Slot = "lpm82_mags",
        DefaultAttName = "5 Round .50 Mags (M82A1)",
		DefaultAttIcon = Material("entities/att/acwatt_lowpolym82_defmag.png"),
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
        DefaultAttName = "Light Green",
        FreeSlot = true
    },
}