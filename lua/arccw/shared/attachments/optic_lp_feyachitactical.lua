att.PrintName = "Feyachi Tactical (4-8x)"
att.Icon = Material("entities/att/acwatt_optic_lp_feyachitactical.png")
att.Description = "A medium to high magnification sight for precise long range shooting."

att.SortOrder = 5

att.Desc_Pros = {
    "Precision sight picture",
    "Zoom",
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
    "Low poly"
}
att.AutoStats = true
att.Slot = "optic_sniper"

att.Model = "models/weapons/arccw/atts/lp_feyachitactical.mdl"

att.AdditionalSights = {
    {
        Pos = Vector(0.008, 14, -1.9),
        Ang = Angle(0, 0, 0),
        Magnification = 2.4,
        ScrollFunc = ArcCW.SCROLL_ZOOM,
        ZoomLevels = 4,
        ZoomSound = "weapons/arccw/fiveseven/fiveseven_slideback.wav",
        IgnoreExtra = true
    }
}

att.ScopeGlint = true

att.Holosight = true
att.HolosightReticle = Material("hud/scopes/fiach.png")
att.HolosightNoFlare = true
att.HolosightSize = 30
att.HolosightBone = "holosight"
att.HolosightPiece = "models/weapons/arccw/atts/lp_feyachitactical_hsp.mdl"
att.Colorable = true

att.HolosightMagnification = 3
att.HolosightBlackbox = true

att.HolosightMagnificationMin = 4
att.HolosightMagnificationMax = 8

att.Mult_SightTime = 1.4
att.Mult_SightedSpeedMult = 0.75
att.Mult_SpeedMult = 0.84