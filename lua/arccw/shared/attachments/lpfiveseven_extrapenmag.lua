att.PrintName = "17 Round 5.7 Mag (SS190)"
att.Icon = Material("entities/att/acwatt_lowpolyfivesevenstmag.png", "smooth")
att.Description = "17 round mags loaded with AP ammo, higher velocity and penetration."
att.Desc_Pros = {
    "Increased penetration"
}
att.Desc_Cons = {
    "Reduced magazine capacity"
}
att.Slot = "lpfiveseven_mag"

att.AutoStats = true
att.SortOrder = 1

att.Mult_Recoil = 1.1
att.Mult_Damage = 0.9
att.Mult_Range = 1.35
att.Override_ClipSize = 17
att.Mult_SightTime = 0.9
att.Override_Penetration = 22

att.ActivateElements = {"apmag"}