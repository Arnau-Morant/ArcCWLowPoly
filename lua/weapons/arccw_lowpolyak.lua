SWEP.Base = "arccw_base"
SWEP.Spawnable = true
SWEP.Category = "ArcCW - Low Poly"
SWEP.AdminOnly = false
SWEP.UseHands = true

-- Muzzle and shell effects --

SWEP.MuzzleEffect = "muzzleflash_3"
SWEP.ShellModel = "models/shells/shell_556.mdl"
SWEP.ShellScale = 1.7
SWEP.ShellMaterial = "models/weapons/arcticcw/shell_556mm"
SWEP.ShellPitch = 90

SWEP.MuzzleEffectAttachment = 1
SWEP.CaseEffectAttachment = 2
SWEP.TracerNum = 1
SWEP.TracerCol = Color(25, 255, 25)
SWEP.TracerWidth = 2

-- Fake name --

SWEP.PrintName = "CV-47"

-- Real name --

SWEP.TrueName = "AK-47" 

-- Trivia --

SWEP.Trivia_Class = "Assault Rifle"
SWEP.Trivia_Desc = "So famous it really needs no description."
SWEP.Trivia_Manufacturer = "Bursilov"
SWEP.Trivia_Calibre = "7.62x39mm Soviet"
SWEP.Trivia_Mechanism = "Gas-operated, Rotating bolt"
SWEP.Trivia_Country = "Soviet Union"
SWEP.Trivia_Year = 1948

-- Weapon slot --

SWEP.Slot = 2

-- Weapon's manufacturer real name --

if GetConVar("arccw_truenames"):GetBool() then
    SWEP.PrintName = SWEP.TrueName
    SWEP.Trivia_Manufacturer = "Kalashnikov"
end

-- Viewmodel / Worldmodel / Model FOV / Animations --

SWEP.ViewModel = "models/weapons/arccw/c_lowpolyak.mdl"
SWEP.WorldModel = "models/weapons/w_rif_ak47.mdl"
SWEP.ViewModelFOV = 70
SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2

-- Damage parameters --

SWEP.Damage = 34
SWEP.DamageMin = 23
SWEP.Range = 100
SWEP.Penetration = 13
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = nil
SWEP.MuzzleVelocity = 715

-- Mag size --

SWEP.ChamberSize = 1
SWEP.Primary.ClipSize = 30
SWEP.ExtendedClipSize = 40
SWEP.ReducedClipSize = 20

-- Recoil --

SWEP.Recoil = 0.3
SWEP.RecoilSide = 0.2

SWEP.RecoilRise = 0
SWEP.VisualRecoilMult = 0
SWEP.MaxRecoilBlowback = 0
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

SWEP.ShootPitch = 100
SWEP.ShootVol = 140

SWEP.ProceduralRegularFire = false
SWEP.ProceduralIronFire = false

SWEP.ReloadInSights = true

-- NPC stuff -- 

SWEP.NPCWeaponType = "weapon_ar2"
SWEP.NPCWeight = 60

-- Accuracy --

SWEP.AccuracyMOA = 3
SWEP.HipDispersion = 400
SWEP.MoveDispersion = 300

SWEP.Primary.Ammo = "ar2"
SWEP.MagID = "ak"

-- Speed mult --

SWEP.SpeedMult = 0.8
SWEP.SightedSpeedMult = 0.74
SWEP.SightTime = 0.4

-- Gun length --

SWEP.BarrelLength = 45
SWEP.ExtraSightDist = 7

-- Ironsight / Customization / Active pos ang --

SWEP.HolsterPos = Vector(12, -1, -1)

SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "ar2"
SWEP.HoldtypeSights = "rpg"

SWEP.IronSightStruct = {
     Pos = Vector(-4.19, -3, 1.559),
     Ang = Angle(0.899, 0.05, 0),
     Magnification = 1,
     SwitchToSound = "",
}

SWEP.ActivePos = Vector(0, -2, 0)

SWEP.CustomizePos = Vector(0, 0, 0)
SWEP.CustomizeAng = Angle(0, 0, 0)

SWEP.CrouchPos = Vector(-3, -2, 0)
SWEP.CrouchAng = Angle(0, 0, -12)

SWEP.MirrorVMWM = true
SWEP.WorldModelOffset = {
    pos        =    Vector(-12, 5, -6.5),
    ang        =    Angle(-6, 0, 180),
    bone    =    "ValveBiped.Bip01_R_Hand",
}

-- Weapon sounds --

SWEP.ShootSound = "weapons/arccw/ak/lowpolyak_762fire.ogg"
SWEP.ShootSoundSilenced = "weapons/arccw/ak/lowpolyak_762supp.ogg"
SWEP.DistantShootSound = "weapons/arccw/ak/lowpolyak_762dist.ogg"

-- Bodygroups --

SWEP.DefaultBodygroups = "00000000000"

SWEP.BulletBones = {
    [1] = "Bullet1",    [2] = "Bullet2",    [3] = "Bullet3"
}

SWEP.AttachmentElements = {
    -- Simple bgs --
    ["defmag"] = {
        VMBodygroups = {{ind = 2, bg = 0}},
    },
    ["nomz"] = {
        VMBodygroups = {{ind = 6, bg = 0}},
    },
    ["NoDustCover"] = {
        VMBodygroups = {{ind = 8, bg = 3}},
    },
    ["NoStock"] = {
        VMBodygroups = {{ind = 4, bg = 4}},
    },
    ["milled"] = {
        VMBodygroups = {{ind = 9, bg = 1}},
    },

    -- AK-74 --

    ["74Bak"] = {
        VMBodygroups = {{ind = 2, bg = 1}},
    },
    ["74UBarrel"] = {
        VMBodygroups = {{ind = 1, bg = 3},{ind = 6, bg = 3},{ind = 5, bg = 1}},
        AttPosMods = {
            [3] = {
                vpos = Vector(0, 0, -8),
            }
        },
        Override_IronSightStruct = {
            Pos = Vector(-4.2, -3, 1.279),
            Ang = Angle(1, 0, 0),
            Magnification = 1,
        },
    },
    ["74Handguard"] = {
        VMBodygroups = {{ind = 7, bg = 1}},
    },
    ["74UHandguard"] = {
        VMBodygroups = {{ind = 7, bg = 2}},
        AttPosMods = {
            [4] = {
                vpos = Vector(0, 1.3, -1),
            },
            [5] = {
                vpos = Vector(1, 0.4, -1),
            }
        },
    },
    ["74Grip"] = {
        VMBodygroups = {{ind = 3, bg = 1}},
    },
    ["74PolyGrip"] = {
        VMBodygroups = {{ind = 3, bg = 2}},
    },
    ["74Stock"] = {
        VMBodygroups = {{ind = 4, bg = 1}},
    },
    ["74UStock"] = {
        VMBodygroups = {{ind = 4, bg = 2}},
    },
    ["74Barrel"] = {
        VMBodygroups = {{ind = 1, bg = 2},{ind = 6, bg = 1}},
        Override_IronSightStruct = {
            Pos = Vector(-4.2, -3, 1.65),
            Ang = Angle(0.899, 0.05, 0),
            Magnification = 1,
        },
        AttPosMods = {
            [3] = {
                vpos = Vector(0, 0, -1.6),
            }
        },
    },
    ["74DustCover"] = {
        VMBodygroups = {{ind = 8, bg = 1}},
    },

    -- AKM --

    ["AKMBarrel"] = {
        VMBodygroups = {{ind = 1, bg = 1}},
        Override_IronSightStruct = {
            Pos = Vector(-4.2, -3, 1.65),
            Ang = Angle(0.899, 0.05, 0),
            Magnification = 1,
        },
        AttPosMods = {
            [3] = {
                vpos = Vector(0, 0, -0.3),
            }
        },
    },
    ["AKMSStock"] = {
        VMBodygroups = {{ind = 4, bg = 6}},
    },

    -- AK-109/107 --
    
    ["109Barrel"] = {
        VMBodygroups = {{ind = 1, bg = 4},{ind = 6, bg = 2}},
        Override_IronSightStruct = {
            Pos = Vector(-4.2, -3, 1.6),
            Ang = Angle(0.899, 0.05, 0),
            Magnification = 1,
        },
    },
    ["109Grip"] = {
        VMBodygroups = {{ind = 3, bg = 3}},
    },
    ["109Stock"] = {
        VMBodygroups = {{ind = 4, bg = 3}},
    },
    ["109Mag"] = {
        VMBodygroups = {{ind = 2, bg = 3}},
    },
    ["109Handguard"] = {
        VMBodygroups = {{ind = 7, bg = 3}},
        AttPosMods = {
            [4] = {
                vpos = Vector(0, 1.6, 0),
            },
            [5] = {
                vpos = Vector(1, 0.4, 0),
            }
        },
    },
    ["109DustCover"] = {
        VMBodygroups = {{ind = 8, bg = 4}},
    },
    
    -- Skins --

    ["skin_wireframe"] = {
        VMSkin = 1,
    },
    ["skin_black"] = {
        VMSkin = 2,
    },
    
    -- RPK / RPK-74 --

    ["RPKMag"] = {
        VMBodygroups = {{ind = 2, bg = 4}},
    },
    ["RPK74Mag"] = {
        VMBodygroups = {{ind = 2, bg = 5}},
    },
    ["RPKBarrel"] = {
        VMBodygroups = {{ind = 1, bg = 5},{ind = 5, bg = 3}},
        Override_IronSightStruct = {
            Pos = Vector(-4.2, -3, 1.6),
            Ang = Angle(0.2, 0.05, 0),
            Magnification = 1,
        },
        AttPosMods = {
            [3] = {
                vpos = Vector(0, 0, 10),
            }
        },
    },
    ["RPKStock"] = {
        VMBodygroups = {{ind = 4, bg = 5}},
    },
    
    -- FB Beryl --

    ["BerylStock"] = {
        VMBodygroups = {{ind = 4, bg = 8}},
    },
    ["BerylGrip"] = {
        VMBodygroups = {{ind = 3, bg = 4}},
    },
    ["BerylBarrel"] = {
        VMBodygroups = {{ind = 1, bg = 7},{ind = 6, bg = 4}},
        Override_IronSightStruct = {
            Pos = Vector(-4.2, -3, 1.69),
            Ang = Angle(0.899, 0.05, 0),
            Magnification = 1,
        },
        AttPosMods = {
            [3] = {
                vpos = Vector(0, 0, -0.3),
            }
        },
    },
    ["BerylHandguard"] = {
        VMBodygroups = {{ind = 7, bg = 5}}, -- "¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡" - Cat, 14/10/2020
        AttPosMods = {
            [4] = {
                vpos = Vector(0, 1.6, -1),
            },
            [5] = {
                vpos = Vector(1.2, 0.4, -1),
            }
        },
    },
    ["BerylDustCover"] = {
        VMBodygroups = {{ind = 8, bg = 5}},
        AttPosMods = {
            [1] = {
                vpos = Vector(0.18, -1.5, 0),
            }
        },
    },
    ["BerylMag"] = {
        VMBodygroups = {{ind = 2, bg = 6}},
    },

    -- AK-308 --

    ["308DustCover"] = {
        VMBodygroups = {{ind = 8, bg = 2}},
        AttPosMods = {
            [1] = {
                vpos = Vector(0.18, -1, 0),
            }
        },
    },

    -- Type 56 --
    
    ["Type56Barrel"] = {
        VMBodygroups = {{ind = 1, bg = 6}},
        Override_IronSightStruct = {
            Pos = Vector(-4.2, -3, 1.55),
            Ang = Angle(0.899, 0.05, 0),
            Magnification = 1,
        },
        AttPosMods = {
            [3] = {
                vpos = Vector(0, 0, -1.2),
            }
        },
    },
    ["Type562Stock"] = {
        VMBodygroups = {{ind = 4, bg = 7}},
    },
    
    -- AKB-15 --

    ["AKB15Stock"] = {
        VMBodygroups = {{ind = 4, bg = 9}},
    },
    ["AKB15Grip"] = {
        VMBodygroups = {{ind = 3, bg = 5}},
    },
    ["AKB15Mag"] = {
        VMBodygroups = {{ind = 2, bg = 7}},
    },
    
    -- AMD-65 --
    
    ["AMDGrip"] = {
        VMBodygroups = {{ind = 3, bg = 6}},
    },
    ["AMDMag"] = {
        VMBodygroups = {{ind = 2, bg = 8}},
    },
    ["AMDBarrel"] = {
        VMBodygroups = {{ind = 1, bg = 8},{ind = 6, bg = 5}},
        Override_IronSightStruct = {
            Pos = Vector(-4.2, -3, 1.65),
            Ang = Angle(0.899, 0.05, 0),
            Magnification = 1,
        },
        AttPosMods = {
            [3] = {
                vpos = Vector(0, 0.2, -5),
            }
        },
    },
    ["AMDStock"] = {
        VMBodygroups = {{ind = 4, bg = 9}},
    },
    ["AMDHandguard"] = {
        VMBodygroups = {{ind = 7, bg = 4}},
        AttPosMods = {
            [5] = {
                vpos = Vector(0.4, 1.4, -1),
            }
        },
    },
    ["DongHandguard"] = {
        VMBodygroups = {{ind = 7, bg = 7}},
        AttPosMods = {
            [5] = {
                vpos = Vector(0.4, 1.4, -1),
            }
        },
    },

    -- PP-19 --
    
    ["PP19Barrel"] = {
        VMBodygroups = {{ind = 1, bg = 9},{ind = 5, bg = 4},{ind = 6, bg = 6}},
        Override_IronSightStruct = {
            Pos = Vector(-4.2, -3, 1.64),
            Ang = Angle(0.699, 0.2, 0),
            Magnification = 1,
        },
        AttPosMods = {
            [3] = {
                vpos = Vector(0, 0, -8),
            }
        },
    },
    ["PP19Mag"] = {
        VMBodygroups = {{ind = 2, bg = 9}},
    },
    ["PP19DustCover"] = {
        VMBodygroups = {{ind = 8, bg = 6}},
    },
    ["PP19Grip"] = {
        VMBodygroups = {{ind = 3, bg = 7}},
    },

    -- CS/LR-14 --

    ["CSLRHandguard"] = {
        VMBodygroups = {{ind = 7, bg = 6}},
        AttPosMods = {
            [4] = {
                vpos = Vector(0, 1.7, -1.4),
            },
            [5] = {
                vpos = Vector(1.2, 0.4, -1),
                vang = Vector(1.2, 0.4, -1),
            }
        },
    },
}

-- Animations --

SWEP.Jamming = false
SWEP.HeatCapacity = 50
SWEP.HeatDissipation = 3
SWEP.HeatLockout = false
SWEP.HeatDelayTime = 0
SWEP.MeleeTime = 1

SWEP.Animations = {
    ["idle"] = false,
    ["ready"] = {
        Source = "ready",
        Framerate = 60,
        time = 90 / 60,
    },
    ["draw"] = {
        Source = "draw",
        time = 1,
        Framerate = 60,
    },
    ["fix"] = {
        Source = "fix_762",
        time = 75 / 60,
        Framerate = 60,
        SoundTable = {{ s = "weapons/arccw/ak/lowpolyak_empty.ogg", t = 0.03 }},
        LHIK = true,
        LHIKIn = 0.1,
        LHIKOut = 0.2,
    },
    ["draw_empty"] = {
        Source = "drawempty",
        time = 1,
        Framerate = 60,
    },
    ["bash"] = {
        Source = "bash",
        Framerate = 60,
        Time = 60 / 60,
        LHIK = true,
        LHIKIn = 0.2,
        LHIKOut = 0.3,
    },
    ["bash_knife"] = {
        Source = "bash_knife",
        Framerate = 60,
        Time = 60 / 60,
    },
    ["fire_iron"] = {
        Source = "fireiron",
        Framerate = 60,
        Time = 40 / 60,
        ShellEjectAt = 0.01,
        SoundTable = {{ s = "weapons/arccw/ak/lowpolyak_mech.ogg", t = 0.07 }},
    },
    ["fire"] = {
        Source = "fire",
        Framerate = 60,
        Time = 30 / 60,
        ShellEjectAt = 0.01,
        SoundTable = {{ s = "weapons/arccw/ak/lowpolyak_mech.ogg", t = 0.07 }},
    },
    ["fire_iron_empty"] = {
        Source = "fireironempty",
        Framerate = 60,
        Time = 40 / 60,
        ShellEjectAt = 0.01,
        SoundTable = {{ s = "weapons/arccw/ak/lowpolyak_empty.ogg", t = 0.03 }},
    },
    ["fire_empty"] = {
        Source = "fireempty",
        Framerate = 60,
        Time = 30 / 60,
        ShellEjectAt = 0.01,
        SoundTable = {{ s = "weapons/arccw/ak/lowpolyak_empty.ogg", t = 0.03 }},
    },

    -- 7.62 reloads --

    ["reload"] = {
        Source = "reload_762",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Time = 179 / 60,
        Framerate = 60,
        LastClip1OutTime = 1.4,
        LHIK = true,
        LHIKIn = 0.3,
        LHIKEaseIn = 0.2,
        LHIKEaseOut = 0.1,
        LHIKOut = 0.4,
    },
    ["reload_empty"] = {
        Source = "reload_762_empty",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Framerate = 60,
        Time = 213 / 60,
        LastClip1OutTime = 1,
        LHIK = true,
        LHIKIn = 0.4,
        LHIKEaseIn = 0.4,
        LHIKEaseOut = 0.2,
        LHIKOut = 0.4,
    },
    -- ["reload_iron"] = {
    --     Source = "reload_762_iron",
    --     TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
    --     Time = 179 / 60,
    --     Framerate = 60,
    --     LastClip1OutTime = 1.4,
    --     LHIK = true,
    --     LHIKIn = 0.26,
    --     LHIKEaseIn = 0.2,
    --     LHIKEaseOut = 0.22,
    --     LHIKOut = 0.44,
    -- },
    -- ["reload_empty_iron"] = {
    --     Source = "reload_762_empty_iron",
    --     TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
    --     Framerate = 60,
    --     Time = 213 / 60,
    --     LastClip1OutTime = 1.4,
    --     LHIK = true,
    --     LHIKIn = 0.26,
    --     LHIKEaseIn = 0.2,
    --     LHIKEaseOut = 0.22,
    --     LHIKOut = 1.6,
    -- },

    -- 5.45 & 5.56 reloads --

    ["reload_545"] = {
        Source = "reload_545",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Time = 179 / 60,
        Framerate = 60,
        LastClip1OutTime = 1.4,
        LHIK = true,
        LHIKIn = 0.3,
        LHIKEaseIn = 0.2,
        LHIKEaseOut = 0.1,
        LHIKOut = 0.4,
    },
    ["reload_empty_545"] = {
        Source = "reload_545_empty",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Framerate = 60,
        Time = 213 / 60,
        LastClip1OutTime = 1,
        LHIK = true,
        LHIKIn = 0.4,
        LHIKEaseIn = 0.4,
        LHIKEaseOut = 0.2,
        LHIKOut = 0.4,
    },
    -- ["reload_545_iron"] = {
    --     Source = "reload_545_iron",
    --     TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
    --     Time = 179 / 60,
    --     Framerate = 60,
    --     LastClip1OutTime = 1.4,
    --     LHIK = true,
    --     LHIKIn = 0.6,
    --     LHIKOut = 0.34,
    -- },
    -- ["reload_empty_545_iron"] = {
    --     Source = "reload_empty_545_iron",
    --     TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
    --     Framerate = 60,
    --     Time = 213 / 60,
    --     LastClip1OutTime = 1.4,
    --     LHIK = true,
    --     LHIKIn = 0.2,
    --     LHIKOut = 0.34,
    -- },

    -- 9mm Reloads

    ["reload_9mm"] = {
        Source = "reload_9mm",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Time = 179 / 60,
        Framerate = 60,
        LastClip1OutTime = 1.4,
        LHIK = true,
        LHIKIn = 0.3,
        LHIKEaseIn = 0.2,
        LHIKEaseOut = 0.1,
        LHIKOut = 0.4,
    },

    ["reload_empty_9mm"] = {
        Source = "reload_9mm_empty",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Time = 213 / 60,
        Framerate = 60,
        LastClip1OutTime = 1.4,
        LHIK = true,
        LHIKIn = 0.4,
        LHIKEaseIn = 0.4,
        LHIKEaseOut = 0.2,
        LHIKOut = 0.4,
    },
    -- ["reload_9mm_iron"] = {
    --     Source = "reload_9mm_iron",
    --     TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
    --     Time = 179 / 60,
    --     Framerate = 60,
    --     LastClip1OutTime = 1.4,
    --     LHIK = true,
    --     LHIKIn = 0.6,
    --     LHIKOut = 0.34,
    -- },
    -- ["reload_empty_9mm_iron"] = {
    --     Source = "reload_empty_9mm_iron",
    --     TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
    --     Framerate = 60,
    --     Time = 213 / 60,
    --     LastClip1OutTime = 1.4,
    --     LHIK = true,
    --     LHIKIn = 0.2,
    --     LHIKOut = 0.34,
    -- },
    
    -- Inspecc --

    ["enter_inspect"] = {
        Source = "inspect_start",
        time = 30 / 60,
        Framerate = 60,
        LHIK = true,
        LHIKIn = 0.1,
        LHIKOut = 0,
    },
    ["idle_inspect"] = {
        Source = "inspect_loop",
        time = 120 / 60,
        Framerate = 60,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0,
    },
    ["exit_inspect"] = {
        Source = "inspect_end",
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

SWEP.Hook_TranslateAnimation = function(wep, anim)
    if wep.Attachments[3].Installed == "go_muzz_bayonet" then
        if anim == "bash" then
            return "bash_knife"
        end
    end
end

function SWEP:Hook_NameChange(name) -- Thanks Arctic but I made a complete mess adapting this hook to the AK (It works tho)
    local eles = self:GetActiveElements()

    local prefix = "AK"
    local prefixRPK = ""
    local s = ""
    local model = "-47"
    local modelAlt = ""
    local stock = ""
    local stockAlt = ""
    local berylSufix = ""
    local rpkPrefix = ""
    local skin = ""
    local prefix100 = ""

    for i, k in pairs(eles or {}) do
        if k == "AKMBarrel" then
            model = "M"
        elseif k == "74Bak" || k == "74MBlack" || k == "RPK74Mag" then
            model = "-74"
            rpkPrefix = "-74"
            berylSufix = " M545"
            sufix100 = "7"
        elseif k == "109Stock" then
            s = "M"
        elseif k == "BerylMag" then
            model = "-101"
            rpkPrefix = "-101"
            berylSufix = " M556"
            sufix100 = "8"
        elseif k == "Type56Barrel" then
            prefix = ""
            modelAlt = "Type 56"
        elseif k == "AMDBarrel" then
            prefix = ""
            modelAlt = "AMD-65"
        elseif k == "BerylBarrel" then
            modelAlt = "FB Beryl"
            berylSufix = " M762"
        elseif k == "74UBarrel" then
            s = "U"
        elseif k == "Type562Stock" then
            stockAlt = "-2"
            stock = "S"
        elseif k == "AKMSStock" then
            stock = "S"
            stockAlt = "-1"
        elseif k == "74UStock" || k == "AMDStock" then
            stock = "S"
        elseif k == "109Barrel" then
            modelAlt = "-10"
            sufix100 = "9"
        elseif k == "RPKBarrel" then
            modelAlt = "RPK"
        elseif k == "skin_black" then
            skin = "M"
        elseif k == "PP19Mag" then
            modelAlt = "PP-19 Vityaz"
        end
    end

    if model == "M" then
        return prefix .. model .. s .. stock
    elseif modelAlt == "-10" then
        return prefix .. modelAlt .. sufix100
    elseif modelAlt == "PP-19 Vityaz" then
        return modelAlt
    elseif modelAlt == "FB Beryl" then
        return modelAlt .. berylSufix
    elseif modelAlt == "Type 56" then
        return modelAlt .. stockAlt
    elseif modelAlt == "AMD-65" then
        return modelAlt .. skin
    elseif modelAlt == "RPK" then
        return modelAlt .. s .. rpkPrefix .. skin
    else
        return prefix .. stock .. model .. s
    end
end

-- Attachments --

SWEP.RejectAttachments = {
  ["pistol_onehand"] = true,
  ["perk_extendedmags"] = true,
  ["muzz_hbar"] = true,
  ["muzz_lbar"] = true,
}

SWEP.Attachments = {
    {
        PrintName = "Optic",
        DefaultAttName = "Iron Sights",
        Slot = {"mw_optic_lp","optic_lp", "optic", "optic_sniper"},
        Bone = "DustCover",
        Offset = {
            vpos = Vector(0.18, -0.6, 0),
            vang = Angle(90, 0, -90),
        },
        ExtraSightDist = 7,
    },
    {
        PrintName = "Barrel",
        DefaultAttName = "Type 2 Barrel (AK-47)",
        Slot = {"lpak_barrel"},
		DefaultAttIcon = Material("entities/att/ak/acwatt_lpakdefbarrel.png")
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
        InstalledEles = {"nomz"}
    },
    { 
        PrintName = "Underbarrel",
        Slot = {"foregrip","bipod","ubgl"},
        Bone = "Handguard",
        Offset = {
            vpos = Vector(0, 1.4, 0),
            vang = Angle(90, 0, -90),
        },
		ExcludeFlags = {"FGHG"},
    },
    {
        PrintName = "Tactical",
        Slot = {"tac_pistol","mw_tac"},
        Bone = "Handguard",
        Offset = {
            vpos = Vector(0.4, 0.4, 0),
            vang = Angle(90, 0, 0),
        },
    },
    {
        PrintName = "Mag Type",
        Slot = {"lpak_mag"},
        DefaultAttName = "30 Round 7.62 Mag (AK-47)",
		DefaultAttIcon = Material("entities/att/ak/acwatt_lpak762mag.png")
    },
    { 
        PrintName = "Handguard",
        DefaultAttName = "Type 2 Handguard (AK-47)",
        Slot = {"lpak_handguard"},
        Bone = "Handguard",
        Offset = {
            vpos = Vector(0, 2, -1),
            vang = Angle(90, 0, -90),
        },
		DefaultAttIcon = Material("entities/att/ak/acwatt_lpakdefhand.png")
    },
    {
        PrintName = "Grip",
        DefaultAttName = "Type 2 Grip (AK-47)",
        Slot = "lpak_grip",
		DefaultAttIcon = Material("entities/att/ak/acwatt_lpakdefgrip.png")
    },
    {
        PrintName = "Stock",
        DefaultAttName = "Type 2 Stock (AK-47)",
        Slot = {"lpak_stock"},
		DefaultAttIcon = Material("entities/att/ak/acwatt_lpakdefstock.png")
    },
    {
        PrintName = "Dust Cover",
        Slot = {"lpak_dustcover"},
        DefaultAttName = "Type 2 Flat Dust Cover (AK-47)",
        KeepBaseIrons = true,
		DefaultAttIcon = Material("entities/att/ak/acwatt_lpakdefdustcover.png"),
    },
    {
        PrintName = "FCG",
        Slot = {"fcg"},
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
    -- This section exists for extra non bodygroup attachments --
    {
        PrintName = "Extra Attachments",
        Slot = {"lpak_extras"},
        DefaultAttName = "Default",
        FreeSlot = true, 
    },
}