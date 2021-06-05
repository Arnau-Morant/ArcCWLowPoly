SWEP.Base = "arccw_base"
SWEP.Spawnable = true
SWEP.Category = "ArcCW - Low Poly"
SWEP.AdminOnly = false
SWEP.UseHands = true

-- Muzzle and shell effects --

SWEP.MuzzleEffect = "muzzleflash_1"
SWEP.ShellModel = "models/shells/shell_9mm.mdl"
SWEP.ShellScale = 1.5
SWEP.ShellMaterial = "models/weapons/arcticcw/shell_9mm"
SWEP.ShellPitch = 100

SWEP.MuzzleEffectAttachment = 1
SWEP.CaseEffectAttachment = 2
SWEP.TracerNum = 1
SWEP.TracerCol = Color(25, 255, 25)
SWEP.TracerWidth = 2

-- Fake name --

SWEP.PrintName = "TMP"

-- Real name --

SWEP.TrueName = "MP9"

-- Trivia --

SWEP.Trivia_Class = "SMG"
SWEP.Trivia_Desc = "The original TMP was bought in 2001 by B&T then developed into the MP9"
SWEP.Trivia_Manufacturer = "MPT"
SWEP.Trivia_Calibre = "9x19 Para"
SWEP.Trivia_Mechanism = "Short recoil, locking rotating barrel"
SWEP.Trivia_Country = "Switzerland"
SWEP.Trivia_Year = 2004

-- Weapon slot --

SWEP.Slot = 2

-- Weapon's manufacturer real name --

if GetConVar("arccw_truenames"):GetBool() then
    SWEP.PrintName = SWEP.TrueName
    SWEP.Trivia_Manufacturer = "B&T"
end

-- Viewmodel / Worldmodel / Model FOV / Animations --

SWEP.ViewModel = "models/weapons/arccw/c_lowpolymp9.mdl"
SWEP.WorldModel = "models/weapons/w_rif_m4a1.mdl"
SWEP.ViewModelFOV = 70
SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2

-- Damage parameters --

SWEP.Damage = 28
SWEP.DamageMin = 11
SWEP.Range = 70
SWEP.Penetration = 6
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = nil
SWEP.MuzzleVelocity = 400 

-- Mag size --

SWEP.ChamberSize = 1
SWEP.Primary.ClipSize = 30
SWEP.ExtendedClipSize = 40
SWEP.ReducedClipSize = 20

-- Recoil --

SWEP.Recoil = 0.5
SWEP.RecoilSide = 0.14

SWEP.RecoilRise = 0.24
SWEP.VisualRecoilMult = 0.6
SWEP.MaxRecoilBlowback = 0.3
SWEP.MaxRecoilPunch = 1

-- Firerate / Firemodes --

SWEP.Delay = 60 / 900
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
SWEP.ShootVol = 120

SWEP.ProceduralRegularFire = false
SWEP.ProceduralIronFire = false

SWEP.ReloadInSights = true

-- NPC stuff -- 

SWEP.NPCWeaponType = "weapon_smg1"
SWEP.NPCWeight = 60

-- Accuracy --

SWEP.AccuracyMOA = 9
SWEP.HipDispersion = 200
SWEP.MoveDispersion = 200

SWEP.Primary.Ammo = "pistol"
SWEP.MagID = "mp9"

-- Speed mult --

SWEP.SpeedMult = 0.9
SWEP.SightedSpeedMult = 0.9
SWEP.SightTime = 0.2

-- Gun length --

SWEP.BarrelLength = 24
SWEP.ExtraSightDist = 7

-- Ironsight / Customization / Active pos ang --

SWEP.HolsterPos = Vector(4.623, -2.211, 1.004)
SWEP.HolsterAng = Angle(-8.443, 28.843, 0)

SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "smg"
SWEP.HoldtypeSights = "smg"

SWEP.IronSightStruct = {
     Pos = Vector(-3.06, -5, 2.35),
     Ang = Angle(0.1, 0, 0),
     Magnification = 1,
     SwitchToSound = "",
}

SWEP.ActivePos = Vector(0, 0, 1)
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

SWEP.ShootSound = "weapons/arccw/mp9/lowpolymp9_fire.ogg"
SWEP.ShootSoundSilenced = "weapons/arccw/mp9/lowpolymp9_supp.ogg"
SWEP.DistantShootSound = "weapons/arccw/czbren/lowpolyczbren_dist.ogg"

-- Bodygroups --

SWEP.BulletBones = {
    [1] = "Bullet1",    [2] = "Bullet2",    [3] = "Bullet3",    [4] = "Bullet4"
}

SWEP.AttachmentElements = {

    ["tac"] = {
        VMBodygroups = {{ind = 2, bg = 1}},
    },
    ["fg"] = {
        VMBodygroups = {{ind = 3, bg = 1}},
    },
    ["nostock"] = {
        VMBodygroups = {{ind = 5, bg = 1}},
    },
    ["pistol_onehand"] = {
        VMBodygroups = {{ind = 3, bg = 2}},
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
        Framerate = 30,
        time = 150 / 30,
    },
    ["idle_empty"] = {
        Source = "idle_empty",
        Framerate = 30,
    },
    ["ready"] = {
        Source = "ready",
        Framerate = 30,
        time = 84 / 30,
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
        Source = "fire",
        Framerate = 30,
        Time = 20 / 30,
        ShellEjectAt = 0.01,
    },
    ["fire_empty"] = {
        Source = "fire_empty",
        Framerate = 30,
        Time = 20 / 30,
        ShellEjectAt = 0.01,
        SoundTable = {{ s = "weapons/arccw/mp9/lowpolymp9_empty.ogg", t = 0 }},
    },

    -- Reloads --

    ["reload"] = {
        Source = "reload",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Time = 65 / 30,
        Framerate = 30,
        LastClip1OutTime = 0.9,
        LHIK = true,
        LHIKIn = 0.1,
        LHIKEaseIn = 0.1,
        LHIKEaseOut = 0.15,
        LHIKOut = 0.34,
    },
    ["reload_empty"] = {
        Source = "reload_empty",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Framerate = 30,
        Time = 79 / 30,
        LastClip1OutTime = 0.7,
        LHIK = true,
        LHIKIn = 0.1,
        LHIKEaseIn = 0.1,
        LHIKEaseOut = 0.15,
        LHIKOut = 0.9,
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
    
    ["enter_sight_empty"] = {
        Source = "enter_sights_empty",
        Framerate = 30,
        Time = 1 / 30,
    },
    ["idle_sights_empty"] = {
        Source = "idle_sights_empty",
        Framerate = 30,
        Time = 1 / 30,
    },
    ["exit_sight_empty"] = {
        Source = "exit_sights_empty",
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
        time = 70 / 30,
        Framerate = 30,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.7,
    },

    ["enter_inspect_empty"] = {
        Source = "enter_inspect_empty",
        time = 52 / 30,
        Framerate = 30,
        LHIK = true,
        LHIKIn = 0.1,
        LHIKOut = 0,
    },
    ["idle_inspect_empty"] = {
        Source = "idle_inspect_empty",
        time = 120 / 30,
        Framerate = 30,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0,
    },
    ["exit_inspect_empty"] = {
        Source = "exit_inspect_empty",
        time = 163 / 30,
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
}

SWEP.CamAttachment = 3

SWEP.Attachments = {
    {
        PrintName = "Optic",
        Slot = {"optic_lp", "optic"},
        DefaultAttName = "Iron Sights",
        Bone = "Barrel",
        Offset = {
            vpos = Vector(0, -1, -8),
            vang = Angle(90, 0, -90),
        },
        ExtraSightDist = 5,
        InstalledEles = {"nois"},
    },
    {
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Slot = {"muzzle","mw_muzzle"},
        Bone = "Barrel",
        Offset = {
            vpos = Vector(0, 0, -1),
            vang = Angle(90, 0, -90),
        },
    },
    { 
        PrintName = "Underbarrel",
        Slot = {"foregrip", "style_pistol"},
        Bone = "Barrel",
        Offset = {
            vpos = Vector(0, 1, -3),
            vang = Angle(90, 0, -90),
        },
        InstalledEles = {"fg"},
    },
    {
        PrintName = "Tactical",
        Slot = {"tac","mw_tac"},
        Bone = "Barrel",
        Offset = {
            vpos = Vector(-0.8, -0.4, -3),
            vang = Angle(90, 0, 180),
        },
        InstalledEles = {"tac"},
    },
    {
        PrintName = "Stock",
        Slot = {"lpmp9_stock"},
		DefaultAttIcon = Material("entities/att/acwatt_lowpolymp9defstock.png"),
        DefaultAttName = "Standard Folding Stock"
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
        Bone = "Barrel",
        Offset = {
            vpos = Vector(0.7, 0, -10),
            vang = Angle(90, 0, -90),
        },
    },
    {
        PrintName = "Skin",
        Slot = {"skin_lpak"},
        DefaultAttName = "Black",
        FreeSlot = true,
    },
}