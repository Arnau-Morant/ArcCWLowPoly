SWEP.Base = "arccw_base"
SWEP.Spawnable = true
SWEP.Category = "ArcCW - Low Poly"
SWEP.AdminOnly = false
SWEP.UseHands = true

-- Muzzle and shell effects --

SWEP.MuzzleEffect = "muzzleflash_3"
SWEP.ShellModel = "models/shells/shell_556.mdl"
SWEP.ShellScale = 1.5
SWEP.ShellMaterial = "models/weapons/arcticcw/shell_556mm"
SWEP.ShellPitch = 100

SWEP.MuzzleEffectAttachment = 1
SWEP.CaseEffectAttachment = 2
SWEP.TracerNum = 1
SWEP.TracerCol = Color(25, 255, 25)
SWEP.TracerWidth = 2

-- Fake name --

SWEP.PrintName = "Bren"

-- Real name --

SWEP.TrueName = "Bren Mk. 1"

-- Trivia --

SWEP.Trivia_Class = "LMG"
SWEP.Trivia_Desc = "Extremely precise open bolt LMG originally designed in Czechoslovakia then later adopted by the Commonwealth."
SWEP.Trivia_Manufacturer = "NW"
SWEP.Trivia_Calibre = ".303 British"
SWEP.Trivia_Mechanism = "Gas-operated, open bolt"
SWEP.Trivia_Country = "Czechoslovakia / United Kingdom" -- Bri'ish
SWEP.Trivia_Year = 1935

-- Weapon slot --

SWEP.Slot = 2

-- Weapon's manufacturer real name --

if GetConVar("arccw_truenames"):GetBool() then
    SWEP.PrintName = SWEP.TrueName
    SWEP.Trivia_Manufacturer = "Royal Small Arms Factory Enfield"
end

-- Viewmodel / Worldmodel / Model FOV / Animations --

SWEP.ViewModel = "models/weapons/arccw/c_lowpolybren.mdl"
SWEP.WorldModel = "models/weapons/w_rif_m4a1.mdl"
SWEP.ViewModelFOV = 60
SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2

-- Damage parameters --

SWEP.Damage = 48
SWEP.DamageMin = 39
SWEP.Range = 250
SWEP.Penetration = 25
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = nil
SWEP.MuzzleVelocity = 714

-- Mag size --

SWEP.ChamberSize = 0
SWEP.Primary.ClipSize = 30
SWEP.ExtendedClipSize = 80
SWEP.ReducedClipSize = 20

-- Recoil --

SWEP.Recoil = 1
SWEP.RecoilSide = 0.2

SWEP.RecoilRise = 0.3
SWEP.VisualRecoilMult = 0.2
SWEP.MaxRecoilBlowback = 0.3
SWEP.MaxRecoilPunch = 0

-- Firerate / Firemodes --

SWEP.Delay = 60 / 500
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

SWEP.ShootPitch = 90
SWEP.ShootVol = 140

SWEP.ProceduralRegularFire = false
SWEP.ProceduralIronFire = false

SWEP.ReloadInSights = true

-- NPC stuff -- 

SWEP.NPCWeaponType = "weapon_ar2"
SWEP.NPCWeight = 60

-- Accuracy --

SWEP.AccuracyMOA = 3
SWEP.HipDispersion = 500
SWEP.MoveDispersion = 400

SWEP.Primary.Ammo = "ar2"
SWEP.MagID = "416"

-- Speed mult --

SWEP.SpeedMult = 0.75
SWEP.SightedSpeedMult = 0.80
SWEP.SightTime = 0.55

-- Gun length --

SWEP.BarrelLength = 50
SWEP.ExtraSightDist = 7

-- Ironsight / Customization / Active pos ang --

SWEP.HolsterPos = Vector(12, -1, -1)

SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "ar2"
SWEP.HoldtypeSights = "rpg"

SWEP.IronSightStruct = {
     Pos = Vector(-2.921, -3, 1.08),
     Ang = Angle(0.8, -0.24, 0),
     Magnification = 1,
     SwitchToSound = "",
}

SWEP.ActivePos = Vector(0, 2, 0)

SWEP.CustomizePos = Vector(0, 0, 0)
SWEP.CustomizeAng = Angle(0, 0, 0)

SWEP.CrouchPos = Vector(-2, -1, 0)
SWEP.CrouchAng = Angle(0, 0, -3)

SWEP.MirrorVMWM = true
SWEP.WorldModelOffset = {
    pos        =    Vector(-7, 5, -6),
    ang        =    Angle(-6, 0, 180),
    bone    =    "ValveBiped.Bip01_R_Hand",
}

-- Weapon sounds --

SWEP.ShootSound = "weapons/arccw/bren/lowpolybren_fire.ogg"
SWEP.ShootSoundSilenced = "weapons/arccw/bren/lowpolybren_supp.ogg"
SWEP.DistantShootSound = "weapons/arccw/bren/lowpolybren_dist.ogg"

-- Bodygroups --

SWEP.DefaultBodygroups = "00000000000"

SWEP.BulletBones = {
    [1] = "Bullet1",    [2] = "Bullet2",    [3] = "Bullet3"
}

SWEP.AttachmentElements = {
    ["hmstock"] = {
        VMBodygroups = {{ind = 2, bg = 3}},
    },
    ["m4stock"] = {
        VMBodygroups = {{ind = 2, bg = 2}},
    },
    ["comfstock"] = {
        VMBodygroups = {{ind = 2, bg = 4}},
    },
    ["ak12stock"] = {
        VMBodygroups = {{ind = 2, bg = 5}},
    },
    ["hk416stock"] = {
        VMBodygroups = {{ind = 2, bg = 1}},
    },

    ["BrenRedBarrel"] = {
        VMBodygroups = {{ind = 3, bg = 1},{ind = 1, bg = 1},{ind = 4, bg = 1}},
        AttPosMods = {
            [5] = {
                vpos = Vector(0, 0.5, 23.4),
            },
        },
        Override_IronSightStruct = {
            Pos = Vector(-2.921, -3, 1.05),
            Ang = Angle(1.2, -0.24, 0),
            Magnification = 1,
        },
    },

    ["nofh"] = {
        VMBodygroups = {{ind = 1, bg = 2}},
    },
    ["nois"] = {
        VMBodygroups = {{ind = 4, bg = 2}},
    },

    -- Upside down --

    ["why"] = {
        VMBodygroups = {{ind = 0, bg = 1},{ind = 4, bg = 2}},
        Override_IronSightStruct = {
            Pos = Vector(-3.8, -3, 1.05),
            Ang = Angle(1.2, -0.24, 0),
            Magnification = 1,
        },
        TrueNameChange = "Nerb"
    },

    -- Skins --

    ["skin_wireframe"] = {
        VMSkin = 1,
    },
    ["skin_black"] = {
        VMSkin = 2, -- Why did i make this shit
    },
}

-- Animations --

SWEP.Jamming = false
SWEP.HeatCapacity = 50
SWEP.HeatDissipation = 3
SWEP.HeatLockout = false
SWEP.HeatDelayTime = 0

SWEP.CamAttachment = 4

SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
        Framerate = 60,
    },
    ["idle_empty"] = {
        Source = "idle_empty",
        Framerate = 60,
    },
    ["ready"] = {
        Source = "ready",
        Framerate = 60,
        time = 90 / 60,
    },
    ["draw"] = {
        Source = "draw",
        time = 40 / 60,
        Framerate = 60,
    },
    ["draw_empty"] = {
        Source = "draw_empty",
        time = 40 / 60,
        Framerate = 60,
    },
    ["fire"] = {
        Source = "fire",
        Framerate = 60,
        Time = 60 / 60,
        ShellEjectAt = 0.1,
    },
    ["fire_empty"] = {
        Source = "fire_empty",
        Framerate = 60,
        Time = 60 / 60,
        ShellEjectAt = 0.1,
        SoundTable = {{ s = "weapons/arccw/bren/lowpolybren_last.ogg", t = 0.03 }},
    },

    -- Reloads --

    ["reload"] = {
        Source = "reload",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Time = 196 / 60,
        Framerate = 60,
        LastClip1OutTime = 4,
    },
    ["reload_empty"] = {
        Source = "reload_empty",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Framerate = 60,
        Time = 243 / 60,
        LastClip1OutTime = 4,
    },

    -- Why reloads --

    ["reload_why"] = {
        Source = "reload_why",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Time = 196 / 60, --150 / 60,
        Framerate = 60,
        LastClip1OutTime = 4,
        LHIK = true,
        LHIKIn = 0.1,
        LHIKEaseIn = 0.1,
        LHIKEaseOut = 0.15,
        LHIKOut = 0.34,
    },
    ["reload_empty_why"] = {
        Source = "reload_empty_why",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Framerate = 60,
        Time = 243 / 60, --197 / 60,
        LastClip1OutTime = 4,
        LHIK = true,
        LHIKIn = 0.1,
        LHIKEaseIn = 0.1,
        LHIKEaseOut = 0.15,
        LHIKOut = 0.34,
    },
    
    -- Inspecc --

    ["enter_inspect"] = {
        Source = "enter_inspect",
        time = 50 / 60,
        Framerate = 60,
    },
    ["idle_inspect"] = {
        Source = "idle_inspect",
        time = 240 / 60,
        Framerate = 60,
    },
    ["exit_inspect"] = {
        Source = "exit_inspect",
        time = 150 / 60,
        Framerate = 60,
    },

    ["enter_inspect_empty"] = {
        Source = "enter_inspect",
        time = 50 / 60,
        Framerate = 60,
    },
    ["idle_inspect_empty"] = {
        Source = "idle_inspect",
        time = 240 / 60,
        Framerate = 60,
    },
    ["exit_inspect_empty"] = {
        Source = "exit_inspect",
        time = 150 / 60,
        Framerate = 60,
    },
}

-- LUA --

SWEP.Hook_Think = function(wep)
	wep:GetOwner():GetViewModel():SetPoseParameter( "sights", 1 - wep:GetSightDelta() ) -- This is entirely possible thanks to Fesiug
end

SWEP.Hook_SelectReloadAnimation = function(wep, anim)
    if wep.Attachments[4] == "lpbren_why" then
        if anim == "reload_empty" then
            return "reload_empty_why"
        elseif anim == "reload" then
            return "reload_why"
        end
    end
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
        DefaultAttName = "Why did I add this",
        MergeSlots = {3},
    },
    {
        PrintName = "Barrel",
        DefaultAttName = "25 in Barrel (Bren Mk. 1)",
        Slot = {"lpbren_barrel"},
		DefaultAttIcon = Material("entities/att/acwatt_lowpolybrendefbarrel.png"),
    },
    {
        Slot = {"optic_lp"},
        DefaultAttName = "Iron Sights",
        Bone = "Body",
        Offset = {
            vpos = Vector(1.18, -0.1, 3.5),
            vang = Angle(90, 0, -90),
        },
        ExtraSightDist = 7,
        InstalledEles = {"nois"},
        Hidden = true, -- Shittiest way of fixing bodygroup priority --
    },
    {
        PrintName = "Mechanism",
        DefaultAttName = "Top fed (Bren Mk. 1)",
        Slot = {"lpbren_mech"},
		DefaultAttIcon = Material("entities/att/acwatt_lowpolybrendefmech.png"),
    },
    {
        PrintName = "Muzzle",
        Slot = {"muzzle","mw_muzzle"},
        Bone = "Body",
        Offset = {
            vpos = Vector(0, 0.5, 30),
            vang = Angle(90, 0, -90),
        },
        InstalledEles = {"nofh"},
    },
    {
        PrintName = "Underbarrel",
        Slot = {"foregrip","bipod","ubgl"},
        Bone = "Body",
        Offset = {
            vpos = Vector(0, 3, 16),
            vang = Angle(90, 0, -90),
        },
    },
    {
        PrintName = "Tactical",
        Slot = {"tac","mw_tac"},
        Bone = "Body",
        Offset = {
            vpos = Vector(-0.6, 2, 20),
            vang = Angle(90, 0, 180),
        },
    },
    {
        PrintName = "Grip",
        Slot = "grip",
    },
    {
        PrintName = "Stock",
        Slot = {"lpglobal_stock","lphm_stock"},
		DefaultAttIcon = Material("entities/att/acwatt_lowpolybrendefstock.png"),
        DefaultAttName = "Default Stock (Bren Mk. 1)"
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
            vpos = Vector(0.5, 1, 6),
            vang = Angle(90, 0, -90),
        },
    },
    {
        PrintName = "Skins",
        PrintName = "Skin",
        Slot = {"skin_lpak"},
        DefaultAttName = "Wood",
        FreeSlot = true,
    },
}