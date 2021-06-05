att.PrintName = "Light stock (Fictional)"
att.Icon = Material("entities/att/1911/acwatt_lp1911lightstock.png", "smooth")
att.Description = "Light metallic stock designed during WW1 for pilots."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Slot = "lp1911_stock"

att.AutoStats = true

att.SortOrder = -1

att.Mult_HipDispersion = 0.9
att.Mult_Recoil = 0.85
att.Mult_SightTime = 1.10

att.Override_ActivePos = Vector(0,-2,0)

att.Override_CrouchPos = Vector(0,-2,0)
att.Override_CrouchAng = Vector(0,0,0)

att.Hook_TranslateAnimation = function(wep, anim)
    return anim .. "_stock"
end

att.ActivateElements = {"LightStock"}