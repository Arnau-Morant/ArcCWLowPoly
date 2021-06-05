SWEP.Base = "arccw_base"
SWEP.Spawnable = true
SWEP.Category = "ArcCW - Low Poly"
SWEP.AdminOnly = false
SWEP.UseHands = true

-- Muzzle and shell effects --

SWEP.MuzzleEffect = "muzzleflash_3"
SWEP.ShellModel = "models/shells/shell_556.mdl"
SWEP.ShellScale = 1.2
SWEP.ShellMaterial = "models/weapons/arcticcw/shell_556mm"
SWEP.ShellPitch = 90

SWEP.MuzzleEffectAttachment = 1
SWEP.CaseEffectAttachment = 2
SWEP.TracerNum = 1
SWEP.TracerCol = Color(25, 255, 25)
SWEP.TracerWidth = 2

-- Fake name --

SWEP.PrintName = "CZ MSO"

-- Real name --

SWEP.TrueName = "CZ 805 BREN" 

-- Trivia --

SWEP.Trivia_Class = "Assault Rifle"
SWEP.Trivia_Desc = "Imagine having a bolt release."
SWEP.Trivia_Manufacturer = "CZ"
SWEP.Trivia_Calibre = "5.56x45mm NATO"
SWEP.Trivia_Mechanism = "Gas-operated, Rotating bolt"
SWEP.Trivia_Country = "Czech Republic"
SWEP.Trivia_Year = 2011

-- Weapon slot --

SWEP.Slot = 2

-- Weapon's manufacturer real name --

if GetConVar("arccw_truenames"):GetBool() then
    SWEP.PrintName = SWEP.TrueName
    SWEP.Trivia_Manufacturer = "Česká zbrojovka Uherský"
end

-- Viewmodel / Worldmodel / Model FOV / Animations --

SWEP.ViewModel = "models/weapons/arccw/c_lowpolyczbren.mdl"
SWEP.WorldModel = "models/weapons/w_rif_m4a1.mdl"
SWEP.ViewModelFOV = 70
SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2

-- Damage parameters --

SWEP.Damage = 30
SWEP.DamageMin = 19
SWEP.Range = 150
SWEP.Penetration = 18
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = nil
SWEP.MuzzleVelocity = 850

-- Mag size --

SWEP.ChamberSize = 1
SWEP.Primary.ClipSize = 30
SWEP.ExtendedClipSize = 40
SWEP.ReducedClipSize = 20

-- Recoil --

SWEP.Recoil = 0.7
SWEP.RecoilSide = 0.24

SWEP.RecoilRise = 0.24
SWEP.VisualRecoilMult = 0.6
SWEP.MaxRecoilBlowback = 0.3
SWEP.MaxRecoilPunch = 1

-- Firerate / Firemodes --

SWEP.Delay = 60 / 760
SWEP.Num = 1
SWEP.Firemodes = {
    {
        Mode = 2,
    },
    {
        Mode = -2,
    },
    {
        Mode = 1,
    },
    {
        Mode = 0
    }
}

SWEP.ShootPitch = 100
SWEP.ShootVol = 140

SWEP.ProceduralRegularFire = false
SWEP.ProceduralIronFire = false

SWEP.ReloadInSights = true

-- NPC stuff -- 

SWEP.NPCWeaponType = "weapon_ar2"
SWEP.NPCWeight = 60

-- Accuracy --

SWEP.AccuracyMOA = 3.4
SWEP.HipDispersion = 400
SWEP.MoveDispersion = 500

SWEP.Primary.Ammo = "smg1"
SWEP.MagID = "cz805"

-- Speed mult --

SWEP.SpeedMult = 0.8
SWEP.SightedSpeedMult = 0.83
SWEP.SightTime = 0.38

-- Gun length --

SWEP.BarrelLength = 48
SWEP.ExtraSightDist = 7

-- Ironsight / Customization / Active pos ang --

SWEP.HolsterPos = Vector(4.623, -2.211, 1.004)
SWEP.HolsterAng = Angle(-8.443, 28.843, 0)

SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "ar2"
SWEP.HoldtypeSights = "rpg"

SWEP.IronSightStruct = {
     Pos = Vector(-3.03, -3.016, 0.639),
     Ang = Angle(0.1, 0, 0),
     Magnification = 1,
     SwitchToSound = "",
}

SWEP.ActiveAng = Angle(0, 0, -3)

SWEP.CustomizePos = Vector(0, 0, 0)
SWEP.CustomizeAng = Angle(0, 0, 0)

SWEP.CrouchPos = Vector(-2, -2, 0)
SWEP.CrouchAng = Angle(0, 0, -8)

SWEP.MirrorVMWM = true
SWEP.WorldModelOffset = {
    pos        =    Vector(-9.8, 4, -6),
    ang        =    Angle(-6, 0, 180),
    bone    =    "ValveBiped.Bip01_R_Hand",
}

-- Weapon sounds --

SWEP.ShootSound = "weapons/arccw/czbren/lowpolyczbren_fire.ogg"
SWEP.ShootSoundSilenced = "weapons/arccw/czbren/lowpolyczbren_supp.ogg"
SWEP.DistantShootSound = "weapons/arccw/czbren/lowpolyczbren_dist.ogg"

-- Bodygroups --

SWEP.BulletBones = {
    [1] = "Bullet1",    [2] = "Bullet2",    [3] = "Bullet3"
}

SWEP.AttachmentElements = {

    -- Ind stocks --

    ["hmstock"] = {
        VMBodygroups = {{ind = 4, bg = 3}},
    },
    ["m4stock"] = {
        VMBodygroups = {{ind = 4, bg = 2}},
    },
    ["comfstock"] = {
        VMBodygroups = {{ind = 4, bg = 4}},
    },
    ["ak12stock"] = {
        VMBodygroups = {{ind = 4, bg = 5}},
    },
    ["hk416stock"] = {
        VMBodygroups = {{ind = 4, bg = 1}},
    },

    -- Iron Sights / Flash Hiders --

    ["nois"] = {
        VMBodygroups = {{ind = 3, bg = 1}},
    },

    -- Extras --

    ["pmag"] = {
        VMBodygroups = {{ind = 5, bg = 1}},
    },
    ["762mag"] = {
        VMBodygroups = {{ind = 5, bg = 2}},
    },
    ["redbar"] = {
        VMBodygroups = {{ind = 1, bg = 1},{ind = 2, bg = 2}},
        AttPosMods = {
            [3] = {
                vpos = Vector(0, 0, -8),
            },
        },
    },

    -- Flash hider --

    ["nofh"] = {
        VMBodygroups = {{ind = 2, bg = 1}},
    },

    -- Skins --

    ["skin_wireframe"] = {
        VMSkin = 1,
    },
    ["skin_black"] = {
        VMSkin = 2,     -- Props to Luddydrag for helping with tremendous error in the code
    },
}

-- Animations --

SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
        Framerate = 60,
        time = 84 / 60,
    },
    ["idle_empty"] = {
        Source = "idle_empty",
        Framerate = 60,
    },
    ["ready"] = {
        Source = "ready",
        Framerate = 60,
        time = 84 / 60,
        LHIK = true,
        LHIKIn = 0,
        LHIKEaseOut = 0.1,
        LHIKOut = 0.3,
    },
    ["draw"] = {
        Source = "draw",
        Framerate = 60,
    },
    ["fire"] = {
        Source = "fire",
        Framerate = 60,
        Time = 50 / 60,
        ShellEjectAt = 0.01,
    },
    ["fire_empty"] = {
        Source = "fire_empty",
        Framerate = 60,
        Time = 50 / 60,
        ShellEjectAt = 0.01,
        SoundTable = {{ s = "weapons/arccw/czbren/lowpolyczbren_empty.ogg", t = 0.03 }},
    },

    -- 5.56 reloads --

    ["reload"] = {
        Source = "reload",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Time = 165 / 60,
        Framerate = 60,
        LastClip1OutTime = 2,
        LHIK = true,
        LHIKIn = 0.1,
        LHIKEaseIn = 0.1,
        LHIKEaseOut = 0.15,
        LHIKOut = 0.34,
    },
    ["reload_empty"] = {
        Source = "reload_empty",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Framerate = 60,
        Time = 180 / 60,
        LastClip1OutTime = 0.7,
        LHIK = true,
        LHIKIn = 0.1,
        LHIKEaseIn = 0.1,
        LHIKEaseOut = 0.15,
        LHIKOut = 0.44,
    },

    -- 5.56 reloads --

    ["reload_762"] = {
        Source = "reload_762",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Time = 165 / 60,
        Framerate = 60,
        LastClip1OutTime = 2,
        LHIK = true,
        LHIKIn = 0.1,
        LHIKEaseIn = 0.1,
        LHIKEaseOut = 0.15,
        LHIKOut = 0.34,
    },
    ["reload_empty_762"] = {
        Source = "reload_empty_762",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Framerate = 60,
        Time = 180 / 60,
        LastClip1OutTime = 0.7,
        LHIK = true,
        LHIKIn = 0.1,
        LHIKEaseIn = 0.1,
        LHIKEaseOut = 0.15,
        LHIKOut = 0.44,
    },

    -- Sights --
    
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
    
    ["enter_sight_empty"] = {
        Source = "enter_sights_empty",
        Framerate = 60,
        Time = 1 / 60,
    },
    ["idle_sights_empty"] = {
        Source = "idle_sights_empty",
        Framerate = 60,
        Time = 1 / 60,
    },
    ["exit_sight_empty"] = {
        Source = "exit_sights_empty",
        Framerate = 60,
        Time = 1 / 60,
    },
    
    -- Inspecc --

    ["enter_inspect"] = {
        Source = "enter_inspect",
        time = 52 / 60,
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
        time = 163 / 60,
        Framerate = 60,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.7,
    },

    ["enter_inspect_empty"] = {
        Source = "enter_inspect_empty",
        time = 52 / 60,
        Framerate = 60,
        LHIK = true,
        LHIKIn = 0.1,
        LHIKOut = 0,
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
        time = 163 / 60,
        Framerate = 60,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.7,
    },
}

-- LUA --

SWEP.Hook_Think = function(wep)
	wep:GetOwner():GetViewModel():SetPoseParameter( "sights", 1 - wep:GetSightDelta() ) -- This is entirely possible thanks to Fesiug
end

-- Attachments --

SWEP.RejectAttachments = {
  ["muzz_hbar"] = true,
  ["muzz_lbar"] = true,
}

SWEP.Attachments = {
    {
        PrintName = "Optic",
        Slot = {"optic_lp", "optic", "optic_sniper"},
        DefaultAttName = "Iron Sights",
        Bone = "Body",
        Offset = {
            vpos = Vector(0, -5.4, 6),
            vang = Angle(90, 0, -90),
        },
        ExtraSightDist = 7,
        InstalledEles = {"nois"},
    },
    {
        PrintName = "Barrel",
        DefaultAttName = "360 mm Barrel (CZ 805)",
        Slot = {"lpczbren_barrel"},
		DefaultAttIcon = Material("entities/att/acwatt_lowpolyczbrendefbarrel.png"),
    },
    {
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Slot = {"muzzle","mw_muzzle"},
        Bone = "Barrel",
        Offset = {
            vpos = Vector(0, 0, -2),
            vang = Angle(90, 0, -90),
        },
        InstalledEles = {"nofh"},
    },
    { 
        PrintName = "Underbarrel",
        Slot = {"foregrip","bipod","ubgl"},
        Bone = "Body",
        Offset = {
            vpos = Vector(0, -2.4, 14),
            vang = Angle(90, 0, -90),
        },
    },
    {
        PrintName = "Tactical",
        Slot = {"tac"},
        Bone = "Body",
        Offset = {
            vpos = Vector(-0.8, -3.4, 16),
            vang = Angle(90, 0, 180),
        },
    },
    {
        PrintName = "Stock",
        Slot = {"lpglobal_stock","lphm_stock"},
		DefaultAttIcon = Material("entities/att/acwatt_lowpolyczbrendefstock.png"),
        DefaultAttName = "Standard Issue Stock (CZ 805)"
    },
    {
        PrintName = "Mag Type",
        Slot = {"lpczbren_mag"},
		DefaultAttIcon = Material("entities/att/acwatt_lowpolyhk416defmag.png"),
        DefaultAttName = "30 Round 5.56 Mag (STANAG)",
    },
    {
        PrintName = "Ammo Type",
        Slot = {"go_ammo"},
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
            vpos = Vector(0.7, -3.6, 9),
            vang = Angle(90, 0, -90),
        },
    },
    {
        PrintName = "Skin",
        Slot = {"skin_lpak"},
        DefaultAttName = "Two Tone",
        FreeSlot = true,
    },
}