att.PrintName = "Extended Barrel (Carbine)"
att.Icon = Material("entities/att/1911/acwatt_lp1911carbinebarrel.png", "smooth")
att.Description = "Extended barrel designed to convert the 1911 into a carbine."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Slot = "lp1911_barrel"

att.AutoStats = true

att.Override_MuzzleEffectAttachment = 3

att.Mult_AccuracyMOA = 0.5
att.Mult_Recoil = 0.75
att.Mult_HipDispersion = 0.85
att.Mult_Range = 1.50
att.Mult_SpeedMult = 0.80
att.Mult_SightTime = 1.25
att.Mult_ShootPitch = 0.85

att.Add_BarrelLength = 20

att.ActivateElements = {"CarbineBarrel"}
att.GivesFlags = {"1911B"}