att.PrintName = "Micro MRO (RDS)"
att.Icon = Material("entities/att/acwatt_optic_lp_micro_mro.png")
att.Description = "Close quarters sight with a riser."

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
att.Slot = {"optic","optic_lp"}

att.Model = "models/weapons/arccw/atts/lp_micro_mro.mdl"

att.AdditionalSights = {
    {
        Pos = Vector(0, 15, -1.8),
        Ang = Angle(0, 0, 0),
        Magnification = 1.1,
        ScrollFunc = ArcCW.SCROLL_NONE
    }
}

att.Holosight = true
att.HolosightReticle = Material("holosights/dot.png")
att.HolosightSize = 0.3
att.HolosightBone = "holosight"

att.Mult_SightTime = 1.05

att.Colorable = true