att.PrintName = "30-Round Extended Mag"
att.Icon = Material("entities/att/acwatt_lpfal_30mag.png", "smooth")
att.Description = "Standard M80 loaded 30 round mag, extra capacity at the cost of handling."
att.Desc_Pros = {
    "Increased magazine capacity"
}
att.Desc_Cons = {
}
att.Slot = "lpfal_mag"

att.AutoStats = true

att.Override_ClipSize = 30
att.Mult_SightTime = 1.25
att.Mult_SpeedMult = 0.8

att.Hook_TranslateAnimation = function(wep, anim)
    return anim .. "_30"
end

att.ActivateElements = {"mag30"}