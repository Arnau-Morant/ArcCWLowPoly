att.PrintName = "Trijicon RX01 (RDS)"
att.Icon = Material("entities/att/acwatt_optic_lp_reflex.png")
att.Description = "Reflex sight with a high mount."

att.SortOrder = 0

att.Desc_Pros = {
    "Precision sight picture"
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
    "Low poly"
}
att.AutoStats = true
att.Slot = "optic"

att.Model = "models/weapons/arccw/atts/lp_reflex.mdl"

att.AdditionalSights = {
    {
        Pos = Vector(0, 7, -1.5),
        Ang = Angle(0, 0, 0),
        Magnification = 1.1,
        ScrollFunc = ArcCW.SCROLL_NONE
    }
}

att.Holosight = true
att.HolosightReticle = Material("holosights/dot.png")
att.HolosightSize = 0.5
att.HolosightBone = "holosight"

att.Mult_SightTime = 1.03

att.Colorable = true