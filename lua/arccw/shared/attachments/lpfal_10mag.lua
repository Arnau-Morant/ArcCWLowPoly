att.PrintName = "10-Round Compact AP Mag"
att.Icon = Material("entities/att/acwatt_lpfal_10mag.png", "smooth")
att.Description = "M62 loaded 10 round mag, offers great penetration and tracers at the cost of capacity."
att.Desc_Pros = {
    "Tracers",
    "Greater penetration"
}
att.Desc_Cons = {
    "Reduced magazine capacity"
}
att.Slot = "lpfal_mag"

att.AutoStats = true

att.Override_ClipSize = 10
att.Override_Penetration = 33
att.Mult_Range = 1.5
att.Mult_DamageMin = 1.15
att.Mult_SightTime = 0.7
att.Override_TracerNum = 1

att.Hook_TranslateAnimation = function(wep, anim)
    return anim .. "_10"
end

att.ActivateElements = {"mag10"}