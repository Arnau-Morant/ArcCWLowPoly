att.PrintName = "AT3 ARO (RDS)"
att.Icon = Material("entities/att/acwatt_optic_lp_at3_aro.png")
att.Description = "Low profile red dot."

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
att.Slot = "optic_lp"

att.Model = "models/weapons/arccw/atts/lp_at3_aro.mdl"

att.AdditionalSights = {
    {
        Pos = Vector(0, 7, -0.9),
        Ang = Angle(0, 0, 0),
        Magnification = 1.1,
        ScrollFunc = ArcCW.SCROLL_NONE
    }
}

att.Holosight = true
att.HolosightReticle = Material("holosights/dot.png")
att.HolosightSize = 0.5
att.HolosightBone = "holosight"

att.Mult_SightTime = 1.05

att.Colorable = true