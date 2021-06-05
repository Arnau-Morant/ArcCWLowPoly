SWEP.Base = "arccw_base"
SWEP.Spawnable = true
SWEP.Category = "ArcCW - Low Poly"
SWEP.AdminOnly = false
SWEP.UseHands = true

-- Muzzle and shell effects --

SWEP.MuzzleEffect = "muzzleflash_1"
SWEP.ShellModel = "models/shells/shell_9mm.mdl"
SWEP.ShellScale = 1.4
SWEP.ShellMaterial = "models/weapons/arcticcw/shell_9mm"
SWEP.ShellPitch = 90

SWEP.MuzzleEffectAttachment = 1
SWEP.CaseEffectAttachment = 2
SWEP.TracerNum = 1
SWEP.TracerCol = Color(25, 255, 25)
SWEP.TracerWidth = 2

-- Fake name --

SWEP.PrintName = "SMD 2"

-- Real name --

SWEP.TrueName = "SMG II" 

-- Trivia --

SWEP.Trivia_Class = "SMG"
SWEP.Trivia_Desc = "Prototype from the 80's, less than 200 were made. Really hard to find anything fitting for it."
SWEP.Trivia_Manufacturer = "NW"
SWEP.Trivia_Calibre = "9x19mm Para"
SWEP.Trivia_Mechanism = "Blowback"
SWEP.Trivia_Country = "Germany / USA"
SWEP.Trivia_Year = 1984

-- Weapon slot --

SWEP.Slot = 2

-- Weapon's manufacturer real name --

if GetConVar("arccw_truenames"):GetBool() then
    SWEP.PrintName = SWEP.TrueName
    SWEP.Trivia_Manufacturer = "HK"
end

-- Viewmodel / Worldmodel / Model FOV / Animations --

SWEP.ViewModel = "models/weapons/arccw/c_lowpolysmg2.mdl"
SWEP.WorldModel = "models/weapons/w_smg_mp5.mdl"
SWEP.ViewModelFOV = 68
SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
 
SWEP.MirrorVMWM = true
SWEP.WorldModelOffset = {
    pos        =    Vector(-13, 6.2, -6),
    ang        =    Angle(-6, 0, 180),
    bone    =    "ValveBiped.Bip01_R_Hand",
}


-- Damage parameters --

SWEP.Damage = 26
SWEP.DamageMin = 11
SWEP.Range = 100
SWEP.Penetration = 6
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = nil
SWEP.MuzzleVelocity = 350

-- Mag size --

SWEP.ChamberSize = 1
SWEP.Primary.ClipSize = 30
SWEP.ExtendedClipSize = 40
SWEP.ReducedClipSize = 20

-- Recoil --

SWEP.Recoil = 0.6
SWEP.RecoilSide = 0.3

SWEP.MaxRecoilBlowback = -2
SWEP.VisualRecoilMult = 0.1
SWEP.RecoilPunch = 0.2

-- Firerate / Firemodes --

SWEP.Delay = 60 / 700
SWEP.Num = 1
SWEP.Firemodes = {
    {
        Mode = 2,
    },
    {
        Mode = 1,
    },
    -- {
    --     PrintName = "LOW-VEL",
    --     Mode = 2,
    -- },
    -- {
    --     PrintName = "LOW-VEL",
    --     Mode = 1,
    -- },
    {
        Mode = 0
    }
}

SWEP.ShootPitch = 90
SWEP.ShootVol = 100

SWEP.ProceduralRegularFire = false
SWEP.ProceduralIronFire = false

SWEP.ReloadInSights = true

-- NPC stuff -- 

SWEP.NPCWeaponType = "weapon_smg1"
SWEP.NPCWeight = 60

-- Accuracy --

SWEP.AccuracyMOA = 12
SWEP.HipDispersion = 200
SWEP.MoveDispersion = 200

SWEP.Primary.Ammo = "pistol"
SWEP.MagID = "smg2"

-- Speed mult --

SWEP.SpeedMult = 0.85
SWEP.SightedSpeedMult = 0.74
SWEP.SightTime = 0.3

-- Gun length --

SWEP.BarrelLength = 24
SWEP.ExtraSightDist = 7

-- Ironsight / Customization / Active pos ang --

SWEP.HolsterPos = Vector(12, -1, -1)

SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "smg"
SWEP.HoldtypeSights = "smg"

SWEP.IronSightStruct = {
     Pos = Vector(-5.441, -10, 0.839),
     Ang = Angle(0.699, 0, 0),
     Magnification = 1,
     SwitchToSound = "",
}

SWEP.CrouchPos = Vector(-3, -4, 0)
SWEP.CrouchAng = Angle(0, 0, -12)

SWEP.HolsterPos = Vector(2, -5, 0)

-- Weapon sounds --

SWEP.ShootSound = "weapons/arccw/smg2/lowpolysmg2_fire.ogg"
SWEP.ShootSoundSilenced = "weapons/arccw/smg2/lowpolysmg2_supp.ogg"
SWEP.DistantShootSound = "weapons/arccw/smg2/lowpolysmg2_dist.ogg"

-- Bodygroups --

SWEP.BulletBones = {
    [1] = "Bullet1",    [2] = "Bullet2",    [3] = "Bullet3"
}

SWEP.AttachmentElements = {
    ["intsupp"] = {
        VMBodygroups = {{ind = 1, bg = 1}},
        WMBodygroups = {{ind = 1, bg = 1}},
    },
    ["foldedstock"] = {
        VMBodygroups = {{ind = 2, bg = 1}},
        WMBodygroups = {{ind = 2, bg = 1}},
    },
    ["lowvel"] = {
        VMBodygroups = {{ind = 3, bg = 1}},
        WMBodygroups = {{ind = 3, bg = 1}},
    },
    ["riser"] = {
        VMBodygroups = {{ind = 4, bg = 1}},
        WMBodygroups = {{ind = 4, bg = 1}},
    },
    ["skin_wireframe"] = {
        VMSkin = 1,
        WMSkin = 1,
    },
}

-- LUA --

SWEP.Hook_Think = function(wep)
	wep:GetOwner():GetViewModel():SetPoseParameter( "sights", 1 - wep:GetSightDelta() ) -- This is entirely possible thanks to Fesiug
end

-- Animations --

SWEP.Jamming = false
SWEP.HeatCapacity = 37
SWEP.HeatDissipation = 12

SWEP.Animations = {
    ["ready"] = {
        Source = "ready",
        Framerate = 60,
        LHIK = true,
        time = 110 / 60,
        LHIKIn = 0,
        LHIKOut = 0.2,
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
    ["idle"] = false,
    ["bash"] = {
        Source = "bash",
        Framerate = 60,
        Time = 0.85,
    },
    ["fire_iron"] = {
        Source = "fireiron",
        Framerate = 60,
        SoundTable = {{ s = "weapons/arccw/miniuzi/lowpolyminiuzi_mechanism.ogg", t = 0.06 }},
        Time = 25 / 60,
        ShellEjectAt = 0.01,
    },
    ["fire"] = {
        Source = {"fire","fire2"},
        Framerate = 60,
        SoundTable = {{ s = "weapons/arccw/miniuzi/lowpolyminiuzi_mechanism.ogg", t = 0.06 }},
        Time = 25 / 60,
        ShellEjectAt = 0.01,
    },
    ["fire_iron_empty"] = {
        Source = "fireironempty",
        SoundTable = {{ s = "weapons/arccw/miniuzi/lowpolyminiuzi_empty.ogg", t = 0.02 }},
        Framerate = 60,
        Time = 25 / 60,
        ShellEjectAt = 0.01,
    },
    ["fire_empty"] = {
        Source = "fireempty",
        SoundTable = {{ s = "weapons/arccw/miniuzi/lowpolyminiuzi_empty.ogg", t = 0.02 }},
        Framerate = 60,
        Time = 25 / 60,
        ShellEjectAt = 0.01,
    },
    ["reload"] = {
        Source = "reload",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SMG1,
        Time = 150 / 60,
        Framerate = 60,
        LastClip1OutTime = 1.4,
    },
    -- ["reload_iron"] = {
    --     Source = "reloadiron",
    --     TPAnim = ACT_HL2MP_GESTURE_RELOAD_SMG1,
    --     Time = 150 / 60,
    --     Framerate = 60,
    --     LastClip1OutTime = 1.4,
    -- },
    ["reload_empty"] = {
        Source = "reloadempty",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SMG1,
        Framerate = 60,
        Time = 175 / 60,
        LastClip1OutTime = 1.4,
    },
    -- ["reload_empty_iron"] = {
    --     Source = "reloademptyiron",
    --     TPAnim = ACT_HL2MP_GESTURE_RELOAD_SMG1,
    --     Framerate = 60,
    --     Time = 175 / 60,
    --     LastClip1OutTime = 1.4,
    -- },
}

-- Attachments --

SWEP.RejectAttachments = {
  ["pistol_onehand"] = true,
  ["perk_extendedmags"] = true,
}

SWEP.Attachments = {
    {
        PrintName = "Optic",
        DefaultAttName = "Iron Sights",
        Slot = {"optic_lp","optic"},
        Bone = "Body",
        Offset = {
            vpos = Vector(0, -6.4, 3),
            vang = Angle(90, -1, -90),
            wpos = Vector(5, 0.8, -6),
            wang = Angle(-4, 0, 180),
        },
        ExtraSightDist = 3,
        InstalledEles = {"riser"}
    },
    {
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Slot = {"muzzle_smg2"},
        Bone = "Body",
    },
    {
        PrintName = "Grip",
        Slot = "grip",
        DefaultAttName = "Standard Grip"
    },
    {
        PrintName = "Stock",
        Slot = {"stock","stock_smg2"},
        DefaultAttName = "Foldable Stock"
    },
    {
        PrintName = "Fire Group",
        Slot = "fcg",
        DefaultAttName = "Standard FCG"
    },
    {
        PrintName = "Ammo Type",
        Slot = {"ammo_bullet"},
        DefaultAttName = "Standard Mag"
    },
    {
        PrintName = "Perk",
        Slot = "perk"
    },
    {
        PrintName = "Charm",
        Slot = {"charm","fml_charm"},
        FreeSlot = true,
        Bone = "Body",
        Offset = {
            vpos = Vector(0.5, -5, 3),
            vang = Angle(90, 0, -90),
            wpos = Vector(5, 1.4, -4.3),
            wang = Angle(-15, 0, -180)
        },
    },
    {
        PrintName = "Muzzle Velocity",
        Slot = {"muzzlev_lpsmg2"},
        DefaultAttName = "High Velocity",
        FreeSlot = true
    },
    {
        PrintName = "Skins",
        PrintName = "Skin",
        Slot = {"skin_lpsmg2"},
        DefaultAttName = "Black",
        FreeSlot = true
    },
}