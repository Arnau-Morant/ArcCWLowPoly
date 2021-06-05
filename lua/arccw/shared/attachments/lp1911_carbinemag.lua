att.PrintName = "24 Round Mag (Carbine)"
att.Icon = Material("entities/att/1911/acwatt_lp1911carbinemag.png", "smooth")
att.Description = "Extended single stack mag designed for the Carbine version."
att.Desc_Pros = {
    "Increased magazine capacity",
}
att.Desc_Cons = {
}
att.Slot = "lp1911_mag"

att.AutoStats = true

att.SortOrder = -7

att.Mult_Recoil = 0.90
att.Mult_SightTime = 1.3
att.Override_ClipSize = 24


att.Hook_TranslateAnimation = function(wep, anim)
    return anim .. "_extended"
end

att.ActivateElements = {"CarbineMag"}