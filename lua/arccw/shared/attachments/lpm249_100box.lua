att.PrintName = "100-Round Soft Pack"
att.Icon = Material("entities/att/acwatt_lpm249_softpack.png", "smooth")
att.Description = "Soft pack pouch plus half the ammo count, greatly increases movility."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Slot = "lpm249_mag"

att.AutoStats = true
att.SortOrder = -3

att.Override_ClipSize = 100
att.Mult_Recoil = 1.15
att.Mult_RecoilSide = 0.85
att.Mult_SightTime = 0.8
att.Mult_SpeedMult = 1.2
att.Mult_SightedSpeedMult = 1.3

att.Hook_TranslateAnimation = function(wep, anim)
    return anim .. "_100"
end

att.ActivateElements = {"100box"}