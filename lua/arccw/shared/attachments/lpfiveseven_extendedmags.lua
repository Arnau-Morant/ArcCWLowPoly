att.PrintName = "35 Round 5.7 Mag (SS195)"
att.Icon = Material("entities/att/acwatt_lowpolyfivesevenextmag.png", "smooth")
att.Description = "35 round mags loaded with civilian grade ammunition, higher bullet count at the cost of velocity and penetration."
att.Desc_Pros = {
    "Increased magazine capacity"
}
att.Desc_Cons = {
    "Reduced penetration"
}
att.Slot = "lpfiveseven_mag"

att.AutoStats = true
att.SortOrder = -1

att.Mult_Recoil = 0.9
att.Mult_Range = 0.9
att.Override_ClipSize = 35
att.Mult_SightTime = 1.25
att.Override_Penetration = 5

att.Hook_TranslateAnimation = function(wep, anim)
    return anim .. "_ext"
end

att.ActivateElements = {"extmag"}