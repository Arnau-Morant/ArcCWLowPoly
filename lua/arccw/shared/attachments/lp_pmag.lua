att.PrintName = "30 Round Mag (PMAG)"
att.Icon = Material("entities/att/acwatt_lowpoly_pmag.png")
att.Description = "30 round polymer mag, minimal weight reduction."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.AutoStats = true
att.Slot = "mag_556"

att.Mult_SightTime = 0.95
att.Mult_Recoil = 1.05
att.Mult_ReloadTime = 0.98
att.Override_ClipSize = 30

att.Hook_TranslateAnimation = function(wep, anim)
    return anim .. "_pmag"
end

att.ActivateElements = {"pmag"}