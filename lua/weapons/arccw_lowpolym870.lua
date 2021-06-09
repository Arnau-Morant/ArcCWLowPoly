SWEP.Base = "arccw_base"
SWEP.Spawnable = true
SWEP.Category = "ArcCW - Low Poly"
SWEP.AdminOnly = false
SWEP.UseHands = true

-- Muzzle and shell effects --

SWEP.MuzzleEffect = "muzzleflash_shotgun"
SWEP.ShellModel = "models/shells/shell_12gauge.mdl"
SWEP.ShellPitch = 100
SWEP.ShellSounds = ArcCW.ShotgunShellSoundsTable
SWEP.ShellScale = 1.5

SWEP.MuzzleEffectAttachment = 1
SWEP.CaseEffectAttachment = 2

-- Fake name --

SWEP.PrintName = "Model 435"

-- Real name --

SWEP.TrueName = "M870" 

-- Trivia --

SWEP.Trivia_Class = "Shotgun"
SWEP.Trivia_Desc = "A really versatile and modular shotgun."
SWEP.Trivia_Manufacturer = "Grayton"
SWEP.Trivia_Calibre = "12 Gauge"
SWEP.Trivia_Mechanism = "Pump-action"
SWEP.Trivia_Country = "USA"
SWEP.Trivia_Year = 1950

-- Weapon slot --

SWEP.Slot = 2

-- Weapon's manufacturer real name --

if GetConVar("arccw_truenames"):GetBool() then
    SWEP.PrintName = SWEP.TrueName
    SWEP.Trivia_Manufacturer = "Remington"
end

-- Viewmodel / Worldmodel / Model FOV / Animations --

SWEP.ViewModel = "models/weapons/arccw/c_lowpolym870.mdl"
SWEP.WorldModel = "models/weapons/w_shot_m3super90.mdl"
SWEP.ViewModelFOV = 75
SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_SHOTGUN
 
SWEP.MirrorVMWM = true
SWEP.WorldModelOffset = {
    pos        =    Vector(-6.5, 7, -6.6),
    ang        =    Angle(-6, 0, 180),
    bone    =    "ValveBiped.Bip01_R_Hand",
}

-- Damage parameters --

SWEP.Damage = 23
SWEP.DamageMin = 11
SWEP.Range = 35
SWEP.Penetration = 1
SWEP.DamageType = DMG_BUCKSHOT
SWEP.ShootEntity = nil
SWEP.MuzzleVelocity = 150

-- Mag size --

SWEP.ChamberSize = 1
SWEP.Primary.ClipSize = 6
SWEP.ExtendedClipSize = 8
SWEP.ReducedClipSize = 6

-- Recoil --

SWEP.Recoil = 2
SWEP.RecoilSide = 1

SWEP.MaxRecoilBlowback = 0
SWEP.VisualRecoilMult = 0
SWEP.RecoilPunch = 1

-- Firerate / Firemodes --

SWEP.Delay = 60 / 60
SWEP.Num = 8
SWEP.Firemodes = {
    {
        PrintName = "PUMP",
        Mode = 1,
    },
    {
        Mode = 0
    }
}

SWEP.ShotgunReload = true
SWEP.ManualAction = true

SWEP.ShootVol = 160
SWEP.ShootPitch = 100

SWEP.ProceduralRegularFire = false
SWEP.ProceduralIronFire = false

SWEP.ReloadInSights = true

-- NPC stuff -- 

SWEP.NPCWeaponType = {"weapon_shotgun"}
SWEP.NPCWeight = 210

-- Accuracy --

SWEP.AccuracyMOA = 30
SWEP.HipDispersion = 100
SWEP.MoveDispersion = 100

SWEP.Primary.Ammo = "buckshot"

-- Speed mult --

SWEP.SpeedMult = 0.7
SWEP.SightedSpeedMult = 0.7
SWEP.SightTime = 0.5

-- Gun length --

SWEP.BarrelLength = 50
SWEP.ExtraSightDist = 20

-- Ironsight / Customization / Active pos ang --

SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "shotgun"
SWEP.HoldtypeSights = "ar2"

SWEP.IronSightStruct = {
     Pos = Vector(-6.165, -5, 3.55),
     Ang = Angle(0, 0, 0),
     Magnification = 1.1,
     SwitchToSound = "",
}

SWEP.CustomizePos = Vector(8.652, -8.035, -1.603)
SWEP.CustomizeAng = Angle(5.221, 44.321, -1.443)

SWEP.ActivePos = Vector(-2, -2, 2)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.CrouchPos = Vector(-3, -4, 0)
SWEP.CrouchAng = Angle(0, 0, -12)

SWEP.BarrelOffsetSighted = Vector(0, 0, -1)
SWEP.BarrelOffsetHip = Vector(2, 0, -2)

-- Weapon sounds --

SWEP.ShootSound = "weapons/arccw/m870/lowpolym870_fire.ogg"
SWEP.ShootSoundSilenced = "weapons/arccw/m870/lowpolym870_supp.ogg"
SWEP.DistantShootSound = "weapons/arccw/m870/lowpolym870_dist.ogg"

-- Lua (not done by me) -- 

SWEP.Hook_TranslateAnimation = function(wep, anim)
    -- Took this code from Fesiug's MW2 Pack --
    if wep:GetState() == ArcCW.STATE_SIGHTS && anim == "sgreload_start_empty_grip" then
        return "sgreload_start_empty_iron_grip"
    end
    -- Took this code from Fleshy's Lynx --
    if wep:GetState() == ArcCW.STATE_SIGHTS then
        if anim == "sgreload_start_empty" then
            return "sgreload_start_empty_iron"
        end
    end
end

-- Animations --

SWEP.Animations = {
    ["ready"] = {
        Source = "ready",
        Time = 1.3,
        Framerate = 60,
        LHIK = true,
        LHIKIn = 5,
        LHIKOut = 5,
    },
    ["draw"] = {
        Source = "draw",
        Time = 0.8,
        Framerate = 60,
        LHIK = true,
        LHIKIn = 1,
        LHIKOut = 2,
    },
    ["cycle"] = {
        Source = "cycle",
        Time = 0.5,
        TPAnim = ACT_HL2MP_GESTURE_RANGE_ATTACK_SHOTGUN,
        Framerate = 60,
        ShellEjectAt = 0.13,
    },
    ["cycle_iron"] = {
        Source = "cycle",
        Time = 0.5,
        TPAnim = ACT_HL2MP_GESTURE_RANGE_ATTACK_SHOTGUN,
        Framerate = 60,
        ShellEjectAt = 0.13,
    },
    ["idle"] = false,
    ["bash"] = {
        Source = "bash",
        Framerate = 60,
        Time = 1,
        LHIK = true,
        LHIKIn = 5,
        LHIKOut = 5,
    },
    ["fire"] = {
        Source = "fire",
        Framerate = 60,
        Time = 0.5,
    },
    ["fire_iron"] = {
        Source = "fireiron",
        Framerate = 60,
        Time = 0.5,
    },
    ["sgreload_start"] = {
        Source = "reloadstart",
        Time = 0.5,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SHOTGUN,
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0,
    },
    ["sgreload_insert"] = {
        Source = "reloadb",
        Time = 0.7,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SHOTGUN,
        TPAnimStartTime = 0.3,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0,
    },
    ["sgreload_finish"] = {
        Source = "reloadfinish",
        Time = 0.5,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.4,
    },
    ["sgreload_start_empty"] = {
        Source = "reloadstartempty",
        Time = 2,
        LHIK = true,
        LHIKIn = 0.7,
        LHIKOut = 0,
        LastClip1OutTime = 0.5,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SHOTGUN,
    },
    ["sgreload_start_empty_iron"] = {
        Source = "reloadstartemptyiron",
        Time = 2,
        LHIK = true,
        LHIKIn = 0.7,
        LHIKOut = 0,
        LastClip1OutTime = 0.5,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SHOTGUN,
    },
    
    -- Grip Animations --

    ["ready_grip"] = {
        Source = "readygrip",
        Time = 1.3,
        Framerate = 60,
        LHIK = true,
        LHIKIn = 1,
        LHIKOut = 2,
    },
    ["draw_grip"] = {
        Source = "drawgrip",
        Time = 0.8,
        Framerate = 60,
        LHIK = true,
        LHIKIn = 1,
        LHIKOut = 2,
    },
    ["cycle_grip"] = {
        Source = "cyclegrip",
        Time = 0.5,
        TPAnim = ACT_HL2MP_GESTURE_RANGE_ATTACK_SHOTGUN,
        Framerate = 60,
        ShellEjectAt = 0.13,
    },
    ["cycle_iron_grip"] = {
        Source = "cyclegrip",
        Time = 0.5,
        TPAnim = ACT_HL2MP_GESTURE_RANGE_ATTACK_SHOTGUN,
        Framerate = 60,
        ShellEjectAt = 0.13,
    },
    ["idle_grip"] = false,
    ["fire_grip"] = {
        Source = "firegrip",
        Framerate = 60,
        Time = 0.5,
    },
    ["bash_grip"] = {
        Source = "bashgrip",
        Framerate = 60,
        Time = 1,
        LHIK = true,
        LHIKIn = 0.4,
        LHIKOut = 0.5,
    },
    ["fire_iron_grip"] = {
        Source = "fireirongrip",
        Framerate = 60,
        Time = 0.5,
    },
    ["sgreload_start_grip"] = {
        Source = "reloadstartgrip",
        Time = 0.5,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SHOTGUN,
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0,
    },
    ["sgreload_insert_grip"] = {
        Source = "reloadbgrip",
        Time = 0.7,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SHOTGUN,
        TPAnimStartTime = 0.3,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0,
    },
    ["sgreload_finish_grip"] = {
        Source = "reloadfinishgrip",
        Time = 0.5,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.4,
    },
    ["sgreload_start_empty_grip"] = {
        Source = "reloadstartemptygrip",
        Time = 2,
        LHIK = true,
        LHIKIn = 0.7,
        LHIKOut = 0,
        LastClip1OutTime = 0.5,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SHOTGUN,
    },
    ["sgreload_start_empty_iron_grip"] = {
        Source = "reloadstartemptyirongrip",
        Time = 2,
        LHIK = true,
        LHIKIn = 0.7,
        LHIKOut = 0,
        LastClip1OutTime = 0.5,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SHOTGUN,
    },
}

-- Bodygroups -- 

SWEP.BulletBones = {
    [1] = "ShellsChamber",
    [2] = "Shells2",
    [3] = "Shells3",
    [4] = "Shells4",
    [5] = "Shells5",
    [6] = "Shells6",
    [7] = "Shells7",
    [8] = "Shells8",
    [9] = "Shells9",
}

SWEP.AttachmentElements = {
    ["muzz_lbar"] = {
        VMBodygroups = {{ind = 1, bg = 1}, {ind = 3, bg = 1}},
        WMBodygroups = {{ind = 1, bg = 1}, {ind = 3, bg = 1}},
        AttPosMods = {
            [3] = {
                vpos = Vector(-0.03, -0.05, -7),
                vang = Angle(90, 0, -90),
                wpos = Vector(23.5, 0.85, -6.8),
                wang = Angle(-10, -2, 180),
            }
        },
    },
    ["muzz_hbar"] = {
        VMBodygroups = {{ind = 1, bg = 2}},
        WMBodygroups = {{ind = 1, bg = 2}},
        AttPosMods = {
            [3] = {
                vpos = Vector(-0.03, -0.05, 5),
                vang = Angle(90, 0, -90),
                wpos = Vector(36, 1.2, -8.8),
                wang = Angle(-10, -2, 180),
            }
        },
    },
    ["reducedtube"] = {
        VMBodygroups = {{ind = 2, bg = 1}, {ind = 3, bg = 1}},
        WMBodygroups = {{ind = 2, bg = 1}, {ind = 3, bg = 1}},
    },
    ["extendedtube"] = {
        VMBodygroups = {{ind = 2, bg = 2}},
        WMBodygroups = {{ind = 2, bg = 2}},
    },
    ["nostock"] = {
        VMBodygroups = {{ind = 4, bg = 1}},
        WMBodygroups = {{ind = 4, bg = 1}},
    },
    ["customstock"] = {
        VMBodygroups = {{ind = 5, bg = 1},{ind = 4, bg = 1}},
        WMBodygroups = {{ind = 5, bg = 1},{ind = 4, bg = 1}},
    },
    ["skin_wireframe"] = {
        VMSkin = 1,
        WMSkin = 1,
    },
    ["skin_wood"] = {
        VMSkin = 2,
        WMSkin = 2,
    },
}
-- Attachments --

SWEP.RejectAttachments = {
    ["perk_extendedmags"] = true,
    ["ammo_airsoft"] = true,
}

SWEP.Attachments = {
    {
        PrintName = "Optic",
        DefaultAttName = "Iron Sights",
        Slot = {"optic_lp","optic","sniper_optic","mw_optic_lp"},
        Bone = "Body",
        Offset = {
            vpos = Vector(0, -5.55, 8),
            vang = Angle(90, 2, -90),
            wpos = Vector(8, 0.4, -5.1),
            wang = Angle(-10, 0, 180),
        },
        ExtraSightDist = 4
    },
    {
        PrintName = "Barrel",
        DefaultAttName = "Standard Barrel",
        Slot = "muzzle_870",
    },
    {
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Slot = {"choke", "muzzle_shotgun"},
        Bone = "Barrel",
        Offset = {
            vpos = Vector(-0.03, -0.05, -0.5),
            vang = Angle(90, 0, -90),
            wpos = Vector(30, 1, -8),
            wang = Angle(-10, -2, 180),
        },
    },
    { 
        PrintName = "Underbarrel",
        Slot = {"foregrip"},
        Bone = "Pump",
        Offset = {
            vpos = Vector(0, 1.7, 7),
            vang = Angle(90, 0, -90),
            wpos = Vector(18, 0.9, -4.5),
            wang = Angle(-10, 0, 180),
        },
    },
    {
        PrintName = "Tactical",
        Slot = {"tac_pistol", "mw_tac"},
        Bone = "Pump",
        Offset = {
            vpos = Vector(0, 1.7, 9.5),
            vang = Angle(90, 0, -90),
            wpos = Vector(22, 0.9, -4.5),
            wang = Angle(-10, 0, 180),
        },
    },
    {
        PrintName = "Stock",
        Slot = {"stock","grip_870","stock_870"},
        DefaultAttName = "Standard Stock",
    },
    {
        PrintName = "Tube Type",
        Slot = {"870tube"},
        DefaultAttName = "6 Shell Tube",
    },
    {
        PrintName = "Ammo Type",
        Slot = {"go_ammo"},
    },
    {
        PrintName = "Perk",
        Slot = "perk"
    },
    {
        PrintName = "Charm",
        Slot = {"charm", "fml_charm"},
        FreeSlot = true,
        Bone = "Body", 
        Offset = {
            vpos = Vector(0.6, -4, 4),
            vang = Angle(90, 0, -90),
            wpos = Vector(9, 2.3, -4.6),
            wang = Angle(-14, -2, 180),
        },
    },
    {
        PrintName = "Skins",
        PrintName = "Skin",
        Slot = {"skin_lpm870"},
        DefaultAttName = "Black",
        FreeSlot = true
    },
}