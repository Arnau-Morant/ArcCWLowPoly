att.PrintName = "Heavy stock (Carbine)"
att.Icon = Material("entities/att/1911/acwatt_lp1911heavystock.png", "smooth")
att.Description = "Heavy wooden stock designed for tankists."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Slot = "lp1911_stock"

att.AutoStats = true

att.SortOrder = -1

att.Mult_HipDispersion = 0.8
att.Mult_Recoil = 0.7
att.Mult_SightTime = 1.20
att.Mult_SpeedMult = 0.75

att.Override_ActivePos = Vector(0,-2,0)

att.Override_CrouchPos = Vector(0,-2,0)
att.Override_CrouchAng = Vector(0,0,0)

att.Hook_TranslateAnimation = function(wep, anim)
    return anim .. "_stock"
end

att.ActivateElements = {"HeavyStock"}