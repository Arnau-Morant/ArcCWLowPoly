att.PrintName = "20 Round Mag"
att.Icon = Material("entities/att/acwatt_lowpolyminiuzi_reducedmag.png")
att.Description = "Low capacity mag, reduces weight and reload times."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.AutoStats = true
att.Slot = "mag_miniuzi"

att.Mult_SightTime = 0.9
att.Mult_Recoil = 1.05
att.Mult_SpeedMult = 1.1
att.Mult_ReloadTime = 0.9

att.MagReducer = true

att.Hook_TranslateAnimation = function(wep, anim)
    return anim .. "_reduced"
end

att.ActivateElements = {"reducedmag"}