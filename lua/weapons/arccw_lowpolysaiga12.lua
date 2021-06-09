SWEP.Base = "arccw_base"
SWEP.Spawnable = true
SWEP.Category = "ArcCW - Low Poly"
SWEP.AdminOnly = false
SWEP.UseHands = true

-- Muzzle and shell effects --

SWEP.MuzzleEffect = "muzzleflash_shotgun"
SWEP.ShellModel = "models/shells/shell_12gauge.mdl"
SWEP.ShellScale = 1.8
SWEP.ShellSounds = ArcCW.ShotgunShellSoundsTable
SWEP.ShellPitch = 100

SWEP.MuzzleEffectAttachment = 1
SWEP.CaseEffectAttachment = 2
SWEP.TracerNum = 1
SWEP.TracerCol = Color(25, 255, 25)
SWEP.TracerWidth = 2

-- Fake name --

SWEP.PrintName = "Siza-12G"

-- Real name --

SWEP.TrueName = "Saiga-12" 

-- Trivia --

SWEP.Trivia_Class = "Shotgun"
SWEP.Trivia_Desc = "AK but shotgun."
SWEP.Trivia_Manufacturer = "IZHK"
SWEP.Trivia_Calibre = "12 Gauge"
SWEP.Trivia_Mechanism = "Gas-operated, Rotating bolt"
SWEP.Trivia_Country = "Russia"
SWEP.Trivia_Year = 1997

-- Weapon slot --

SWEP.Slot = 2

-- Weapon's manufacturer real name --

if GetConVar("arccw_truenames"):GetBool() then
    SWEP.PrintName = SWEP.TrueName
    SWEP.Trivia_Manufacturer = "Izhmash"
end

-- Viewmodel / Worldmodel / Model FOV / Animations --

SWEP.ViewModel = "models/weapons/arccw/c_lowpolysaiga12.mdl"
SWEP.WorldModel = "models/weapons/w_rif_ak47.mdl"
SWEP.ViewModelFOV = 60
SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2

-- Damage parameters --

SWEP.Damage = 20
SWEP.DamageMin = 8
SWEP.Range = 40
SWEP.Penetration = 1
SWEP.DamageType = DMG_BUCKSHOT
SWEP.ShootEntity = nil
SWEP.MuzzleVelocity = 125

-- Mag size --

SWEP.ChamberSize = 1
SWEP.Primary.ClipSize = 5
SWEP.ExtendedClipSize = 9
SWEP.ReducedClipSize = 2

-- Recoil --

SWEP.Recoil = 1
SWEP.RecoilSide = 1

SWEP.RecoilRise = 0.24
SWEP.VisualRecoilMult = 1
SWEP.MaxRecoilBlowback = 0.3
SWEP.MaxRecoilPunch = 1

-- Firerate / Firemodes --

SWEP.Delay = 60 / 500
SWEP.Num = 6
SWEP.Firemodes = {
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
SWEP.NPCWeight = 80

-- Accuracy --

SWEP.AccuracyMOA = 42
SWEP.HipDispersion = 200
SWEP.MoveDispersion = 350

SWEP.Primary.Ammo = "buckshot"
SWEP.MagID = "saiga12"

-- Speed mult --

SWEP.SpeedMult = 0.78
SWEP.SightedSpeedMult = 0.7
SWEP.SightTime = 0.42

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
     Pos = Vector(-3.05, -4.222, 0.92),
     Ang = Angle(0.899, 0.1, 0),
     Magnification = 1,
     SwitchToSound = "",
}

SWEP.CustomizePos = Vector(0, 0, 0)
SWEP.CustomizeAng = Angle(0, 0, 0)

SWEP.CrouchPos = Vector(-2, -2, 0)
SWEP.CrouchAng = Angle(0, 0, -8)

SWEP.MirrorVMWM = true
SWEP.WorldModelOffset = {
    pos        =    Vector(-9.8, 4, -5.5),
    ang        =    Angle(-6, 0, 180),
    bone    =    "ValveBiped.Bip01_R_Hand",
}

-- Weapon sounds --

SWEP.ShootSound = "weapons/arccw/saiga12/lowpolysaiga12_fire.ogg"
SWEP.ShootSoundSilenced = "weapons/arccw/saiga12/lowpolysaiga12_supp.ogg"
SWEP.DistantShootSound = "weapons/arccw/saiga12/lowpolysaiga12_dist.ogg"

-- Bodygroups --

SWEP.BulletBones = {
    [1] = "Bullet1",    [2] = "Bullet2",    [3] = "Bullet3",    [4] = "Bullet4",    [5] = "Bullet5",    [6] = "Bullet6",--    [7] = "Bullet7",    [8] = "Bullet8",    [9] = "Bullet9"
}

SWEP.AttachmentElements = {

    -- Ind stocks --

    ["m4stock"] = {
        VMBodygroups = {{ind = 3, bg = 2}},
    },
    ["comfstock"] = {
        VMBodygroups = {{ind = 3, bg = 4}},
    },
    ["ak12stock"] = {
        VMBodygroups = {{ind = 3, bg = 5}},
    },
    ["hk416stock"] = {
        VMBodygroups = {{ind = 3, bg = 1}},
    },

    -- Extras --

    ["go_ammo_sg_sabot"] = {
        VMBodygroups = {{ind = 5, bg = 1}},
    },
    ["go_ammo_sg_slug"] = {
        VMBodygroups = {{ind = 5, bg = 1}},
    },
    ["nodust"] = {
        VMBodygroups = {{ind = 6, bg = 1}},
    },
    ["extmag"] = {
        VMBodygroups = {{ind = 2, bg = 1}},
    },
    ["drum"] = {
        VMBodygroups = {{ind = 2, bg = 2}},
    },
    ["extbar"] = {
        VMBodygroups = {{ind = 1, bg = 1}},
    },
    ["modhandguard"] = {
        VMBodygroups = {{ind = 4, bg = 1}},
        Override_IronSightStruct = {
            Pos = Vector(-3.05, -4.222, 1.07),
            Ang = Angle(0.899, 0.1, 0),
            Magnification = 1,
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
        time = 207 / 30,
        Framerate = 30,
    },
    ["ready"] = {
        Source = "ready",
        Framerate = 30,
        time = 47 / 30,
        LHIK = true,
        LHIKIn = 0,
        LHIKEaseOut = 0.1,
        LHIKOut = 0.3,
    },
    ["draw"] = {
        Source = "draw",
        Framerate = 30,
    },
    ["fire"] = {
        Source = {"fire_01","fire_02","fire_03"},
        Framerate = 30,
        Time = 35 / 30,
        ShellEjectAt = 0.03,
    },
    ["fire_empty"] = {
        Source = {"fire_01","fire_02","fire_03"},
        Framerate = 30,
        Time = 35 / 30,
        ShellEjectAt = 0.03,
        SoundTable = {{ s = "weapons/arccw/saiga12/lowpolysaiga12_boltforward.ogg", t = 0.02 }},
    },

    -- Reloads --

    ["reload"] = {
        Source = "reload",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Time = 75 / 30,
        Framerate = 30,
        LastClip1OutTime = 1,
        LHIK = true,
        LHIKIn = 0.1,
        LHIKEaseIn = 0.1,
        LHIKEaseOut = 0.2,
        LHIKOut = 0.34,
    },
    ["reload_empty"] = {
        Source = "reload_empty",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Framerate = 30,
        Time = 87 / 30,
        LastClip1OutTime = 1,
        LHIK = true,
        LHIKIn = 0.1,
        LHIKEaseIn = 0.1,
        LHIKEaseOut = 0.2,
        LHIKOut = 0.44,
    },

    -- Drum Reloads --

    ["reload_drum"] = {
        Source = "reload_drum",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Time = 75 / 30,
        Framerate = 30,
        LastClip1OutTime = 1,
        LHIK = true,
        LHIKIn = 0.1,
        LHIKEaseIn = 0.1,
        LHIKEaseOut = 0.2,
        LHIKOut = 0.34,
    },
    ["reload_empty_drum"] = {
        Source = "reload_empty_drum",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Framerate = 30,
        Time = 87 / 30,
        LastClip1OutTime = 1,
        LHIK = true,
        LHIKIn = 0.1,
        LHIKEaseIn = 0.1,
        LHIKEaseOut = 0.2,
        LHIKOut = 0.44,
    },

    -- Sights --
    
    ["enter_sight"] = {
        Source = "enter_sights",
        Framerate = 30,
        Time = 1 / 30,
    },
    ["idle_sights"] = {
        Source = "idle_sights",
        Framerate = 30,
        Time = 1 / 30,
    },
    ["exit_sight"] = {
        Source = "exit_sights",
        Framerate = 30,
        Time = 1 / 30,
    },
    
    -- Inspecc --

    ["enter_inspect"] = {
        Source = "enter_inspect",
        time = 25 / 30,
        Framerate = 30,
        LHIK = true,
        LHIKIn = 0.1,
        LHIKOut = 0,
    },
    ["idle_inspect"] = {
        Source = "idle_inspect",
        time = 60 / 30,
        Framerate = 30,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0,
    },
    ["exit_inspect"] = {
        Source = "exit_inspect",
        time = 79 / 30,
        Framerate = 30,
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
  ["lpak_polymer"] = true,
  ["lphk416_hmstock"] = true,
}

SWEP.Attachments = {
    {
        PrintName = "Optic",
        Slot = {"optic_lp", "optic"},
        DefaultAttName = "Iron Sights",
        Bone = "Barrel",
        Offset = {
            vpos = Vector(0, -2.1, -16),
            vang = Angle(90, 0, -90),
        },
        ExtraSightDist = 7,
    },
    {
        PrintName = "Barrel",
        DefaultAttName = "580 mm Barrel (Saiga-12)",
        Slot = {"lpsaiga12_barrel"},
		DefaultAttIcon = Material("entities/att/acwatt_lowpolysaiga12defbar.png"),
    },
    {
        PrintName = "Handguard",
        DefaultAttName = "Standard Handguard (Saiga-12)",
        Slot = {"lpsaiga12_handguard"},
		DefaultAttIcon = Material("entities/att/acwatt_lowpolysaiga12defhandguard.png"),
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
        ExcludeFlags = {"extbar"},
    },
    { 
        PrintName = "Underbarrel",
        Slot = {"foregrip","bipod","ubgl"},
        Bone = "Barrel",
        Offset = {
            vpos = Vector(0, 1, -13),
            vang = Angle(90, 0, -90),
        },
    },
    {
        PrintName = "Tactical",
        Slot = {"tac","mw_tac"},
        Bone = "Barrel",
        Offset = {
            vpos = Vector(-0.8, 0, -10),
            vang = Angle(90, 0, 180),
        },
    },
    {
        PrintName = "Stock",
        Slot = {"lpglobal_stock"},
		DefaultAttIcon = Material("entities/att/ak/acwatt_lpak109stock.png"),
        DefaultAttName = "Standard Folding Stock (Saiga-12)"
    },
    {
        PrintName = "Mag Type",
        Slot = {"lpsaiga12_mag"},
		DefaultAttIcon = Material("entities/att/acwatt_lowpolysaiga12defmag.png"),
        DefaultAttName = "5 Round Mag (Saiga-12)",
    },
    {
        PrintName = "Ammo Type",
        Slot = {"go_ammo"},
    },
    {
        PrintName = "Dust Cover",
        Slot = {"lpsaiga12_dustcover"},
        DefaultAttName = "Standard Dust Cover (Saiga-12)",
        KeepBaseIrons = true,
		DefaultAttIcon = Material("entities/att/ak/acwatt_lpakdefdustcover.png"),
    },
    {
        PrintName = "Perk",
        Slot = "go_perk"
    },
    {
        PrintName = "Charm",
        Slot = {"charm","fml_charm"},
        FreeSlot = true,
        Bone = "Brass",
        Offset = {
            vpos = Vector(1, 1, -1),
            vang = Angle(90, 0, -90),
        },
    },
    {
        PrintName = "Skin",
        Slot = {"skin_lpak"},
        DefaultAttName = "Polymer",
        FreeSlot = true,
    },
}