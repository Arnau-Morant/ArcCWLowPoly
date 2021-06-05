att.PrintName = "40 Round Mag"
att.Icon = Material("entities/att/acwatt_lowpolyminiuzi_extendedmag.png")
att.Description = "High capacity mag, increments weight lowering some recoil."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Slot = "mag_miniuzi"

att.AutoStats = true
att.MagExtender = true
att.SortOrder = -5

att.Mult_SightTime = 1.20
att.Mult_Recoil = 0.95
att.Mult_ReloadTime = 1.15

att.ActivateElements = {"extendedmag"}

att.Hook_TranslateAnimation = function(wep, anim)
    return anim .. "_extended"
end

att.Hook_Compatible = function(wep)
    if (wep.RegularClipSize or wep.Primary.ClipSize) == wep.ExtendedClipSize then return false end
end