SWEP.Base = "arccw_base"
SWEP.Spawnable = true
SWEP.Category = "ArcCW - Low Poly"
SWEP.AdminOnly = false
SWEP.UseHands = true

-- Muzzle and shell effects --

SWEP.MuzzleEffect = "muzzleflash_1"
SWEP.ShellModel = "models/shells/shell_556.mdl"
SWEP.ShellScale = 1.5
SWEP.ShellMaterial = "models/weapons/arcticcw/shell_556"
SWEP.ShellPitch = 100

SWEP.MuzzleEffectAttachment = 1
SWEP.CaseEffectAttachment = 2
SWEP.TracerNum = 0
SWEP.TracerCol = Color(25, 255, 25)
SWEP.TracerWidth = 2

-- Fake name --

SWEP.PrintName = "NT-21"

-- True name --

SWEP.TrueName = "FAL"

-- Trivia --

SWEP.Trivia_Class = "Battle Rifle"
SWEP.Trivia_Desc = "This one actually starts to look good"
SWEP.Trivia_Manufacturer = "EFFAYEN"
SWEP.Trivia_Calibre = "7.62×51mm NATO"
SWEP.Trivia_Mechanism = "Short-stroke gas piston, tilting breechblock"
SWEP.Trivia_Country = "Belgium"
SWEP.Trivia_Year = 1953

-- Weapon slot --

SWEP.Slot = 2

-- Weapon's manufacturer real name --

if GetConVar("arccw_truenames"):GetBool() then
    SWEP.PrintName = SWEP.TrueName
    SWEP.Trivia_Manufacturer = "FN"
end

-- Viewmodel / Worldmodel / FOV --

SWEP.ViewModel = "models/weapons/arccw/c_lowpolyfal.mdl"
SWEP.WorldModel = "models/weapons/w_rif_m4a1.mdl"
SWEP.ViewModelFOV = 60
SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2

-- Damage parameters --

SWEP.Damage = 44
SWEP.DamageMin = 30
SWEP.Range = 150
SWEP.Penetration = 17
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = nil
SWEP.MuzzleVelocity = 823 

-- Mag size --

SWEP.ChamberSize = 1
SWEP.Primary.ClipSize = 20
SWEP.ExtendedClipSize = 30
SWEP.ReducedClipSize = 10

-- Recoil --

SWEP.Recoil = 1
SWEP.RecoilSide = 0.74

SWEP.RecoilRise = 0.3
SWEP.VisualRecoilMult = 0.4
SWEP.MaxRecoilBlowback = 0.4
SWEP.MaxRecoilPunch = 1

-- Firerate / Firemodes --

SWEP.Delay = 60 / 650
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

-- NPC -- 

SWEP.NPCWeaponType = "weapon_smg1"
SWEP.NPCWeight = 60

-- Accuracy --

SWEP.AccuracyMOA = 4
SWEP.HipDispersion = 400
SWEP.MoveDispersion = 600

SWEP.Primary.Ammo = "ar2"
SWEP.MagID = "fal"

-- Speed multipliers --

SWEP.SpeedMult = 0.8
SWEP.SightedSpeedMult = 0.84
SWEP.SightTime = 0.4

-- Length --

SWEP.BarrelLength = 38
SWEP.ExtraSightDist = 7

-- Ironsights / Customization / Poses --

SWEP.HolsterPos = Vector(4.623, -2.211, 1.004)
SWEP.HolsterAng = Angle(-8.443, 28.843, 0)

SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "ar2"
SWEP.HoldtypeSights = "rpg"

SWEP.IronSightStruct = {
     Pos = Vector(-3.1, 0, 1.5),
     Ang = Angle(0.1, 0, 0),
     Magnification = 1,
     SwitchToSound = "",
}

SWEP.ActivePos = Vector(0, 0, 0)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.CustomizePos = Vector(0, 0, 0)
SWEP.CustomizeAng = Angle(0, 0, 0)

SWEP.CrouchPos = Vector(-2, -2, 0)
SWEP.CrouchAng = Angle(0, 0, -8)

SWEP.MirrorVMWM = true
SWEP.WorldModelOffset = {
    pos        =    Vector(-12, 4.5, -5.5),
    ang        =    Angle(-6, 0, 180),
    bone    =    "ValveBiped.Bip01_R_Hand",
}

-- Weapon sounds --

local path = "weapons/arccw/fal/"
SWEP.ShootSound = path .. "lowpolyfal_fire.ogg"
SWEP.ShootSoundSilenced = path .. "lowpolyfal_supp.ogg"
SWEP.DistantShootSound = path .. "lowpolyfal_dist.ogg"

-- Bodygroups --

SWEP.BulletBones = {
    [1] = "Bullet",    [2] = "Bullet2",    [3] = "Bullet3"
}

SWEP.DefaultBodygroups = "000000000"

SWEP.AttachmentElements = {

    ["nofh"] = {
        VMBodygroups = {{ind = 1, bg = 4}},
    },
    ["nors"] = {
        VMBodygroups = {{ind = 3, bg = 1}},
    },

    ["go_stock"] = {
        VMBodygroups = {
            {ind = 7, bg = 2}
        },
        VMElements = {
        {
                Model = "models/weapons/arccw/atts/buffer_lpstock.mdl",
                Bone = "Body",
                Offset = {
                    pos = Vector(0, -0.2, -16.7),
                    ang = Angle(90, 0, -90),
                },
                Scale = Vector(0.9,0.9,0.9),
            }
        },
    },
    
    ["lpglobal_stock"] = {
        VMBodygroups = {
            {ind = 7, bg = 2}
        },
        VMElements = {
        {
                Model = "models/weapons/arccw/atts/buffer_lpstock.mdl",
                Bone = "Body",
                Offset = {
                    pos = Vector(0, -0.2, -16.7),
                    ang = Angle(90, 0, -90),
                },
                Scale = Vector(0.9,0.9,0.9),
            }
        },
    },
    
    ["lphm_stock"] = {
        VMBodygroups = {{ind = 7, bg = 2}},
        AttPosMods = {
            [8] = {
                vpos = Vector(0, -0.2, -16.55),
            }
        },
    },
    
    ["foldingstock"] = {
        VMBodygroups = {{ind = 7, bg = 1}},
    },

    -- Mags --

    ["mag10"] = {
        VMBodygroups = {{ind = 4, bg = 1}},
    },
    ["mag30"] = {
        VMBodygroups = {{ind = 4, bg = 2}},
    },

    -- Dust covers --

    ["raildc"] = {
        VMBodygroups = {{ind = 2, bg = 1}},
        AttPosMods = {
            [1] = {
                vpos = Vector(0, -1.8, -11),
            }
        },
    },
    
    -- Handguards --

    ["redmodhand"] = {
        VMBodygroups = {{ind = 5, bg = 3},{ind = 6, bg = 3},{ind = 1, bg = 3}},
        TrueNameChange = "FAL 11' OSW",
        NameChange = "NTM-11",
        AttPosMods = {
            [3] = {
                vpos = Vector(0, 0, -13),
            },
            [4] = {
                vpos = Vector(0, 0.5, 1),
            },
            [5] = {
            vpos = Vector(-0.6, -0.6, -1),
            },
        },
    },
    ["extmodhand"] = {
        VMBodygroups = {{ind = 5, bg = 2},{ind = 6, bg = 1},{ind = 1, bg = 1}},
        TrueNameChange = "FAL DMR",
        NameChange = "NTM-24",
        AttPosMods = {
            [3] = {
                vpos = Vector(0, 0, 3),
            }
        },
    },
    ["fnchand"] = {
        VMBodygroups = {{ind = 5, bg = 1},{ind = 6, bg = 2},{ind = 1, bg = 2}},
        TrueNameChange = "FAL Para",
        NameChange = "NT-16",
        AttPosMods = {
            [3] = {
                vpos = Vector(0, 0, -8),
            }
        },
    },
    ["modhand"] = {
        VMBodygroups = {{ind = 5, bg = 2}},
        TrueNameChange = "FAL 21' OSW",
        NameChange = "NTM-21",
    },
    
    -- Grips --

    ["modgrip"] = {
        VMBodygroups = {{ind = 8, bg = 1}},
    },
    ["skelgrip"] = {
        VMBodygroups = {{ind = 8, bg = 2}},
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

SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
        Framerate = 30,
        Time = 120 / 30,
    },
    ["idle_empty"] = {
        Source = "idle_empty",
        Framerate = 30,
        Time = 120 / 30,
    },
    ["ready"] = {
        Source = "ready",
        Framerate = 30,
        Time = 68 / 30,
        LHIK = true,
        LHIKIn = 0,
        LHIKEaseOut = 0.3,
        LHIKOut = 0.6,
        SoundTable = {
            { s = path .. "lowpolyfal_readydraw.ogg", t = 1 / 30, c = ca },
            { s = path .. "lowpolyfal_readycharge.ogg", t = 12 / 30, c = ca },
            { s = path .. "lowpolyfal_readycheck1.ogg", t = 30 / 30, c = ca },
            { s = path .. "lowpolyfal_readycheck2.ogg", t = 35 / 30, c = ca }
        },
    },
    ["draw"] = {
        Source = "draw",
        Framerate = 30,
    },
    ["fire"] = {
        Source = "fire",
        Framerate = 30,
        Time = 17 / 30,
        ShellEjectAt = 0.01,
    },
    ["fire_empty"] = {
        Source = "fire_empty",
        Framerate = 30,
        Time = 17 / 30,
        ShellEjectAt = 0.01,
        SoundTable = {{ s = path .. "lowpolyfal_empty.ogg", t = 0 }},
    },

    -- 20-R Reloads --

    ["reload"] = {
        Source = "reload",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        MinProgress = 1,
        Time = 71 / 30,
        Framerate = 30,
        LastClip1OutTime = 0.9,
        LHIK = true,
        LHIKIn = 0.2,
        LHIKEaseIn = 0.2,
        LHIKEaseOut = 0.2,
        LHIKOut = 0.62,
        SoundTable = {
            { s = path .. "lowpolyfal_cloth1.ogg", t = 4 / 30, c = ca },
            { s = path .. "lowpolyfal_magout.ogg", t = 6 / 30, c = ca },
            { s = path .. "lowpolyfal_magin.ogg", t = 32 / 30, c = ca },
            { s = path .. "lowpolyfal_shoulder1.ogg", t = 48 / 30, c = ca },
        },
    },
    ["reload_empty"] = {
        Source = "reload_empty",
        -- RareSource = "reload_empty_rare", -- lazy
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Framerate = 30,
        Time = 81 / 30,
        LastClip1OutTime = 0,
        LHIK = true,
        LHIKIn = 0.1,
        LHIKEaseIn = 0.1,
        LHIKEaseOut = 0.15,
        LHIKOut = 0.7,
        SoundTable = {
            { s = path .. "lowpolyfal_cloth2.ogg", t = 0 / 30, c = ca },
            { s = path .. "lowpolyfal_emptymagout.ogg", t = 15 / 30, c = ca },
            { s = path .. "lowpolyfal_emptymagin.ogg", t = 31 / 30, c = ca },
            { s = path .. "lowpolyfal_drop.ogg", t = 34 / 30, c = ca },
            { s = path .. "lowpolyfal_emptycharge.ogg", t = 48 / 30, c = ca },
            { s = path .. "lowpolyfal_shoulder2.ogg", t = 57 / 30, c = ca },
        },
    },

    -- 10-R Reloads --

    ["reload_10"] = {
        Source = "reload_10",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        MinProgress = 1,
        Time = 71 / 30,
        Framerate = 30,
        LastClip1OutTime = 0.9,
        LHIK = true,
        LHIKIn = 0.2,
        LHIKEaseIn = 0.2,
        LHIKEaseOut = 0.2,
        LHIKOut = 0.62,
        SoundTable = {
            { s = path .. "lowpolyfal_cloth1.ogg", t = 4 / 30, c = ca },
            { s = path .. "lowpolyfal_magout.ogg", t = 6 / 30, c = ca },
            { s = path .. "lowpolyfal_magin.ogg", t = 32 / 30, c = ca },
            { s = path .. "lowpolyfal_shoulder1.ogg", t = 48 / 30, c = ca },
        },
    },
    ["reload_empty_10"] = {
        Source = "reload_empty_10",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Framerate = 30,
        Time = 81 / 30,
        LastClip1OutTime = 0,
        LHIK = true,
        LHIKIn = 0.1,
        LHIKEaseIn = 0.1,
        LHIKEaseOut = 0.15,
        LHIKOut = 0.7,
        SoundTable = {
            { s = path .. "lowpolyfal_cloth2.ogg", t = 0 / 30, c = ca },
            { s = path .. "lowpolyfal_emptymagout.ogg", t = 15 / 30, c = ca },
            { s = path .. "lowpolyfal_emptymagin.ogg", t = 31 / 30, c = ca },
            { s = path .. "lowpolyfal_drop.ogg", t = 34 / 30, c = ca },
            { s = path .. "lowpolyfal_emptycharge.ogg", t = 48 / 30, c = ca },
            { s = path .. "lowpolyfal_shoulder2.ogg", t = 57 / 30, c = ca },
        },
    },

    -- 30-R Reloads --

    ["reload_30"] = {
        Source = "reload_30",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        MinProgress = 1,
        Time = 71 / 30,
        Framerate = 30,
        LastClip1OutTime = 0.9,
        LHIK = true,
        LHIKIn = 0.2,
        LHIKEaseIn = 0.2,
        LHIKEaseOut = 0.2,
        LHIKOut = 0.62,
        SoundTable = {
            { s = path .. "lowpolyfal_cloth1.ogg", t = 4 / 30, c = ca },
            { s = path .. "lowpolyfal_magout.ogg", t = 6 / 30, c = ca },
            { s = path .. "lowpolyfal_magin.ogg", t = 32 / 30, c = ca },
            { s = path .. "lowpolyfal_shoulder1.ogg", t = 48 / 30, c = ca },
        },
    },
    ["reload_empty_30"] = {
        Source = "reload_empty", -- once again lazy
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Framerate = 30,
        Time = 81 / 30,
        LastClip1OutTime = 0,
        LHIK = true,
        LHIKIn = 0.1,
        LHIKEaseIn = 0.1,
        LHIKEaseOut = 0.15,
        LHIKOut = 0.7,
        SoundTable = {
            { s = path .. "lowpolyfal_cloth2.ogg", t = 0 / 30, c = ca },
            { s = path .. "lowpolyfal_emptymagout.ogg", t = 15 / 30, c = ca },
            { s = path .. "lowpolyfal_emptymagin.ogg", t = 31 / 30, c = ca },
            { s = path .. "lowpolyfal_drop.ogg", t = 34 / 30, c = ca },
            { s = path .. "lowpolyfal_emptycharge.ogg", t = 48 / 30, c = ca },
            { s = path .. "lowpolyfal_shoulder2.ogg", t = 57 / 30, c = ca },
        },
    },
    
    -- Inspecc --

    ["enter_inspect"] = {
        Source = "enter_inspect",
        time = 35 / 30,
        Framerate = 30,
        LHIK = true,
        LHIKIn = 0.3,
        LHIKOut = 0,
        SoundTable = {
            { s = path .. "lowpolyfal_cloth2.ogg", t = 0 / 30, c = ca },
        },
    },
    ["idle_inspect"] = {
        Source = "idle_inspect",
        time = 72 / 30,
        Framerate = 30,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0,
    },
    ["exit_inspect"] = {
        Source = "exit_inspect",
        time = 66 / 30,
        Framerate = 30,
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
        time = 35 / 30,
        Framerate = 30,
        LHIK = true,
        LHIKIn = 0.1,
        LHIKOut = 0,
        SoundTable = {
            { s = path .. "lowpolyfal_cloth2.ogg", t = 0 / 30, c = ca },
        },
    },
    ["idle_inspect_empty"] = {
        Source = "idle_inspect_empty",
        time = 72 / 30,
        Framerate = 30,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0,
    },
    ["exit_inspect_empty"] = {
        Source = "exit_inspect_empty",
        time = 66 / 30,
        Framerate = 30,
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

SWEP.Attachments = {
    {
        PrintName = "Optic",
        Slot = {"optic_lp", "optic", "sniper_optic"},
        DefaultAttName = "Iron Sights",
        Bone = "Body",
        Offset = {
            vpos = Vector(0, -1.5, -11),
            vang = Angle(90, 0, -90),
        },
        ExtraSightDist = 10,
        InstalledEles = {"nors"},
        CorrectivePos = Vector(0.37, 0, -0.05),
    },
    {
        PrintName = "Handguard",
        Slot = {"lpfal_hand"},
		DefaultAttIcon = Material("entities/att/acwatt_lpfal_defhand.png"),
        DefaultAttName = "21' Standard Issue Barrel",
        Bone = "Body",
        Offset = {
            vpos = Vector(3.07, -3.8, -27),
            vang = Angle(90, 0, -90),
        },
    },
    {
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Slot = {"muzzle"},
        Bone = "Barrel",
        Offset = {
            vpos = Vector(0, 0, -4),
            vang = Angle(90, 0, -90),
        },
        InstalledEles = {"nofh"},
    },
    { 
        PrintName = "Underbarrel",
        Slot = {"foregrip","bipod","ubgl"},
        Bone = "Body",
        Offset = {
            vpos = Vector(0, 0.5, 2),
            vang = Angle(90, 0, -90),
        },
        ExcludeFlags = {"fnchand"},
    },
    {
        PrintName = "Tactical",
        Slot = {"tac"},
        Bone = "Body",
        Offset = {
            vpos = Vector(-0.6, -0.6, 1),
            vang = Angle(90, 0, 180),
        },
    },
    {
        PrintName = "Mag Type",
        Slot = {"lpfal_mag"},
		DefaultAttIcon = Material("entities/att/acwatt_lpfal_defmag.png"),
        DefaultAttName = "20-Round Standard Mag",
    },
    {
        PrintName = "Stock",
        Slot = {"lpglobal_stock","go_stock","lphm_stock","lpfal_stock"},
		DefaultAttIcon = Material("entities/att/acwatt_lpfal_defstock.png"),
        DefaultAttName = "Standard Wooden Stock",
        VMScale = Vector(0.9,0.9,0.9),
        Bone = "Body",
        Offset = {
            vpos = Vector(0, -0.2, -16),
            vang = Angle(90, 0, -90),
        },
    },
    {
        PrintName = "Grip",
        Slot = {"lpfal_grip"},
		DefaultAttIcon = Material("entities/att/acwatt_lpfal_defgrip.png"),
        DefaultAttName = "Standard Wooden Grip",
    },
    {
        PrintName = "Dust Cover",
        Slot = {"lpfal_dc"},
		DefaultAttIcon = Material("entities/att/acwatt_lpfal_defdc.png"),
        DefaultAttName = "Standard Dust Cover",
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