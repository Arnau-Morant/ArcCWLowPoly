SWEP.Base = "arccw_base"
SWEP.Spawnable = true
SWEP.Category = "ArcCW - Low Poly"
SWEP.AdminOnly = false
SWEP.UseHands = true

-- Muzzle and shell effects --

SWEP.MuzzleEffect = "muzzleflash_3"
SWEP.ShellModel = "models/shells/shell_556.mdl"
SWEP.ShellScale = 1.1
SWEP.ShellMaterial = "models/weapons/arcticcw/shell_556mm"
SWEP.ShellPitch = 90

SWEP.MuzzleEffectAttachment = 1
SWEP.CaseEffectAttachment = 2
SWEP.TracerNum = 1
SWEP.TracerCol = Color(25, 255, 25)
SWEP.TracerWidth = 2

-- Fake name --

SWEP.PrintName = "AKAB-46"

-- Real name --

SWEP.TrueName = "TKB-408" 

-- Trivia --

SWEP.Trivia_Class = "Assault Rifle"
SWEP.Trivia_Desc = "Prototype designed to be the first assault rifle for the Red Army, didn't get past the trials."
SWEP.Trivia_Manufacturer = "Bursilov"
SWEP.Trivia_Calibre = "7.62x39mm Soviet"
SWEP.Trivia_Mechanism = "Gas-operated, Tilting bolt"
SWEP.Trivia_Country = "Soviet Union"
SWEP.Trivia_Year = 1946

-- Weapon slot --

SWEP.Slot = 2

-- Weapon's manufacturer real name --

if GetConVar("arccw_truenames"):GetBool() then
    SWEP.PrintName = SWEP.TrueName
    SWEP.Trivia_Manufacturer = "Kalashnikov"
end

-- Viewmodel / Worldmodel / Model FOV / Animations --

SWEP.ViewModel = "models/weapons/arccw/c_lowpolytkb408.mdl"
SWEP.WorldModel = "models/weapons/w_rif_ak47.mdl"
SWEP.ViewModelFOV = 60
SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2

-- Damage parameters --

SWEP.Damage = 33
SWEP.DamageMin = 27
SWEP.Range = 200
SWEP.Penetration = 17
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = nil
SWEP.MuzzleVelocity = 825

-- Mag size --

SWEP.ChamberSize = 1
SWEP.Primary.ClipSize = 30
SWEP.ExtendedClipSize = 40
SWEP.ReducedClipSize = 20

-- Recoil --

SWEP.Recoil = 0.24
SWEP.RecoilSide = 0.18

SWEP.RecoilRise = 0.3
SWEP.VisualRecoilMult = 0.7
SWEP.MaxRecoilBlowback = 0.3
SWEP.MaxRecoilPunch = 0

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

SWEP.ShootPitch = 80
SWEP.ShootVol = 130

SWEP.ProceduralRegularFire = false
SWEP.ProceduralIronFire = false

SWEP.ReloadInSights = true

-- NPC stuff -- 

SWEP.NPCWeaponType = "weapon_ar2"
SWEP.NPCWeight = 60

-- Accuracy --

SWEP.AccuracyMOA = 4
SWEP.HipDispersion = 550
SWEP.MoveDispersion = 500

SWEP.Primary.Ammo = "ar2"
SWEP.MagID = "ak"

-- Speed mult --

SWEP.SpeedMult = 0.75
SWEP.SightedSpeedMult = 0.7
SWEP.SightTime = 0.62

-- Gun length --

SWEP.BarrelLength = 38
SWEP.ExtraSightDist = 7

-- Ironsight / Customization / Active pos ang --

SWEP.HolsterPos = Vector(12, -8, -2)

SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "ar2"
SWEP.HoldtypeSights = "rpg"

SWEP.IronSightStruct = {
     Pos = Vector(-3.14, -3, 0.60),
     Ang = Angle(0.8, 0.059, 0),
     Magnification = 1,
     SwitchToSound = "",
}

SWEP.CustomizePos = Vector(0, 0, 0)
SWEP.CustomizeAng = Angle(0, 0, 0)

SWEP.ActivePos = Vector(0, -2, 0)

SWEP.CrouchPos = Vector(-2, -2, 0)
SWEP.CrouchAng = Angle(0, 0, -10)

SWEP.MirrorVMWM = true
SWEP.WorldModelOffset = {
    pos        =    Vector(-15, 4.6, -6),
    ang        =    Angle(-6, 0, 180),
    bone    =    "ValveBiped.Bip01_R_Hand",
}

-- Weapon sounds --

SWEP.ShootSound = "weapons/arccw/tkb408/lowpolytkb408_fire.ogg"
SWEP.ShootSoundSilenced = "weapons/arccw/ak/lowpolyak_762supp.ogg"
SWEP.DistantShootSound = "weapons/arccw/ak/lowpolyak_762dist.ogg"

-- Bodygroups --

SWEP.DefaultBodygroups = "00000000000"

SWEP.BulletBones = {
    [1] = "Bullet1",    [2] = "Bullet2",    [3] = "Bullet3"
}

SWEP.AttachmentElements = {
    -- Simple Bgs --

    ["nois"] = {
        VMBodygroups = {{ind = 1, bg = 1}},
    },
    ["modhand"] = {
        VMBodygroups = {{ind = 2, bg = 1}},
    },

    -- Skins --

    ["skin_wireframe"] = {
        VMSkin = 1,
    },
    ["skin_black"] = {
        VMSkin = 2,
    },
}

-- Animations --

SWEP.Jamming = false
SWEP.HeatCapacity = 50
SWEP.HeatDissipation = 3
SWEP.HeatLockout = false
SWEP.HeatDelayTime = 0

SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
        Framerate = 60,
    },
    ["ready"] = {
        Source = "ready",
        Framerate = 60,
        time = 90 / 60,
        LHIK = true,
        LHIKIn = 0.6,
        LHIKOut = 0.34,
    },
    ["draw"] = {
        Source = "draw",
        time = 1,
        Framerate = 60,
    },
    ["draw_empty"] = {
        Source = "drawempty",
        time = 1,
        Framerate = 60,
    },
    ["fire"] = {
        Source = {"fire"},
        Framerate = 60,
        Time = 30 / 60,
        ShellEjectAt = 0.01,
        SoundTable = {{ s = "weapons/arccw/tkb408/lowpolytkb408_mech.ogg", t = 0.07 }},
    },
    ["fire_empty"] = {
        Source = "fire_empty",
        Framerate = 60,
        Time = 30 / 60,
        ShellEjectAt = 0.01,
        SoundTable = {{ s = "weapons/arccw/tkb408/lowpolytkb408_empty.ogg", t = 0.03 }},
    },
    ["fire_iron"] = {
        Source = "fire_iron",
        Framerate = 60,
        Time = 30 / 60,
        ShellEjectAt = 0.01,
        SoundTable = {{ s = "weapons/arccw/tkb408/lowpolytkb408_mech.ogg", t = 0.07 }},
    },
    ["fire_iron_empty"] = {
        Source = "fire_iron_empty",
        Framerate = 60,
        Time = 30 / 60,
        ShellEjectAt = 0.01,
        SoundTable = {{ s = "weapons/arccw/tkb408/lowpolytkb408_empty.ogg", t = 0.03 }},
    },

    -- 7.62 reloads --

    ["reload"] = {
        Source = "reload",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Time = 172 / 60,
        Framerate = 60,
        LastClip1OutTime = 1.4,
        LHIK = true,
        LHIKIn = 0.6,
        LHIKOut = 0.34,
    },
    ["reload_empty"] = {
        Source = "reload_empty",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Framerate = 60,
        Time = 197 / 60,
        LastClip1OutTime = 1.8,
        LHIK = true,
        LHIKIn = 0.2,
        LHIKOut = 0.34,
    },
    -- ["reload_iron"] = {
    --     Source = "reload_iron",
    --     TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
    --     Time = 172 / 60,
    --     Framerate = 60,
    --     LastClip1OutTime = 1.4,
    --     LHIK = true,
    --     LHIKIn = 0.2,
    --     LHIKOut = 0.34,
    -- },
    -- ["reload_empty_iron"] = {
    --     Source = "reload_empty_iron",
    --     TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
    --     Framerate = 60,
    --     Time = 197 / 60,
    --     LastClip1OutTime = 1.4,
    --     LHIK = true,
    --     LHIKIn = 0.2,
    --     LHIKOut = 0.34,
    -- },
    
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
        time = 240 / 60,
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

-- LUA --

SWEP.Hook_Think = function(wep)
	wep:GetOwner():GetViewModel():SetPoseParameter( "sights", 1 - wep:GetSightDelta() ) -- This is entirely possible thanks to Fesiug
end

-- Attachments --

SWEP.RejectAttachments = {
  ["perk_extendedmags"] = true,
  ["muzz_hbar"] = true,
  ["muzz_lbar"] = true,
}

SWEP.Attachments = {
    {
        PrintName = "Optic",
        DefaultAttName = "Iron Sights",
        Slot = {"optic_lp", "optic", "optic_sniper"},
        Bone = "Body",
        Offset = {
            vpos = Vector(0, -5.5, 1),
            vang = Angle(90, 0, -90),
        },
        InstalledEles = {"nois"},
    },
    {
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Slot = {"muzzle","mw_muzzle"},
        Bone = "Barrel",
        Offset = {
            vpos = Vector(0, 0, 0),
            vang = Angle(90, 0, -90),
        },
    },
    { 
        PrintName = "Underbarrel",
        Slot = {"foregrip","bipod","ubgl"},
        Bone = "Barrel",
        Offset = {
            vpos = Vector(0, 1, -12),
            vang = Angle(90, 0, -90),
        },
        InstalledEles = {"modhand"},
    },
    {
        PrintName = "Tactical",
        Slot = {"tac_pistol","mw_tac"},
        Bone = "Barrel",
        Offset = {
            vpos = Vector(-0.8, -0.3, -14),
            vang = Angle(90, 0, 180),
        },
        InstalledEles = {"modhand"},
    },
    {
        PrintName = "Grip",
        DefaultAttName = "Standard Prototype Grip",
        Slot = "grip",
    },
    {
        PrintName = "Fire Group",
        Slot = "fcg",
        DefaultAttName = "Standard FCG"
    },
    {
        PrintName = "Ammo Type",
        Slot = {"go_ammo"},
        DefaultAttName = "Default Ammo"
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
            vpos = Vector(0.6, -2, 9),
            vang = Angle(90, 0, -90),
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