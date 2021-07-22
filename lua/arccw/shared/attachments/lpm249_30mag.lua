att.PrintName = "30-Round STANAG Mag"
att.Icon = Material("entities/att/acwatt_lowpolyhk416defmag.png", "smooth")
att.Description = "Side loaded STANAG, effectively turns your gun into a really heavy assault rifle."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Slot = "lpm249_mag"

att.AutoStats = true
att.SortOrder = -4

att.Override_ClipSize = 30
att.Mult_Recoil = 1.5
att.Mult_RecoilSide = 0.7
att.Mult_SightTime = 0.6
att.Mult_SpeedMult = 1.3
att.Mult_SightedSpeedMult = 1.4
att.Mult_ReloadTime = 0.49

att.Hook_TranslateAnimation = function(wep, anim)
    return anim .. "_30"
end

att.ActivateElements = {"30mag"}