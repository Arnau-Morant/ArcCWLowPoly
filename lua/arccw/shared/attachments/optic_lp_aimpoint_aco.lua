att.PrintName = "Aimpoint ACO (2x)"
att.Icon = Material("entities/att/acwatt_optic_lp_aimpoint_aco.png")
att.Description = "A low magnification sight designed for close-medium range."

att.SortOrder = 2

att.Desc_Pros = {
    "Precision sight picture",
    "Increased zoom",
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
    "Low poly"
}
att.AutoStats = true
att.Slot = "optic"

att.Model = "models/weapons/arccw/atts/lp_aimpoint_aco.mdl"

att.AdditionalSights = {
    {
        Pos = Vector(-0.01, 15, -1.55),
        Ang = Angle(0, 0, 0),
        Magnification = 2,
        ScrollFunc = ArcCW.SCROLL_ZOOM,
        ZoomLevels = 0,
        ZoomSound = "weapons/arccw/fiveseven/fiveseven_slideback.wav",
        IgnoreExtra = true
    }
}

att.Holosight = true
att.HolosightReticle = Material("hud/scopes/dotb.png")
att.HolosightNoFlare = true
att.HolosightSize = 10
att.HolosightBone = "holosight"
att.HolosightPiece = "models/weapons/arccw/atts/lp_aimpoint_aco_hsp.mdl"
att.Colorable = true

att.HolosightMagnification = 2
att.HolosightBlackbox = true

att.Mult_SightTime = 1.08
att.Mult_SightedSpeedMult = 0.94