att.PrintName = "8 Shell Tube"
att.Icon = Material("entities/att/acwatt_lowpolym870_extendedtube.png")
att.Description = "High capacity tube, increments frontal weight lowering some recoil."
att.Desc_Pros = {
    "+ 2 more shells",
}
att.Desc_Cons = {
}
att.Slot = "870tube"

att.AutoStats = true
att.MagExtender = true

att.Mult_SightTime = 1.15
att.Mult_Recoil = 0.95
att.Mult_CycleTime = 1.1
att.Override_ClipSize = 8

att.ActivateElements = {"extendedtube"}

att.Hook_Compatible = function(wep)
    if (wep.RegularClipSize or wep.Primary.ClipSize) == wep.ExtendedClipSize then return false end
end