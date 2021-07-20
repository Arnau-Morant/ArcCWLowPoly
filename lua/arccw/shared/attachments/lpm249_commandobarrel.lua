att.PrintName = "11' Commando Barrel"
att.Icon = Material("entities/att/acwatt_lpm249_commandohandguard.png", "smooth")
att.Description = "CQB oriented barrel / handguard configuration, includes a foregrip and has a higher ROF"
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Slot = "lpm249_barrel"

att.AutoStats = true
att.SortOrder = -3

att.LHIK = true
att.Model = "models/weapons/arccw/atts/fg_lhik.mdl"

att.Mult_RPM = 1.1
att.Mult_SideRecoil = 1.2
att.Mult_AccuracyMOA = 1.3
att.Mult_SightTime = 1.1
att.Mult_SpeedMult = 0.85
att.Mult_Range = 0.8
att.Mult_DamageMin = 0.9
att.Mult_SightedSpeedMult = 0.6
att.Mult_HipDispersion = 0.6

att.Add_BarrelLength = -6

att.ActivateElements = {"commandobar"}
att.GivesFlags = {"commandohg"}