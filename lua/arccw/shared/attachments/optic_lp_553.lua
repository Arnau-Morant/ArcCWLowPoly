att.PrintName = "EOtech 553 (HOLO)"
att.Icon = Material("entities/att/acwatt_optic_lp_553.png")
att.Description = "Holografic sight for precise close to medium range picture."

att.SortOrder = 0.5

att.Desc_Pros = {
    "Precision sight picture"
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
    "Low poly"
}
att.AutoStats = true
att.Slot = {"optic"}

att.Model = "models/weapons/arccw/atts/lp_553.mdl"

att.AdditionalSights = {
    {
        Pos = Vector(0, 12, -1.35),
        Ang = Angle(0, 0, 0),
        Magnification = 1.1,
        ScrollFunc = ArcCW.SCROLL_NONE
    }
}

att.Holosight = true
att.HolosightReticle = Material("holosights/eotech.png")
att.HolosightFlare = Material("holosights/eotech_flare.png")
att.HolosightSize = 1
att.HolosightBone = "holosight"

att.Mult_SightTime = 1.075

att.Colorable = true