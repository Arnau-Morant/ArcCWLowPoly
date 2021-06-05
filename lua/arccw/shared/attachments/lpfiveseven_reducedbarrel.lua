att.PrintName = "Snub Barrel (74mm)"
att.Icon = Material("entities/att/acwatt_lowpolyfivesevenredbar.png", "smooth")
att.Description = "Extremely small barrel, reduces accuracy increases movility and somehow boosts firerate."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Slot = "lpfiveseven_barrel"

att.AutoStats = true
att.SortOrder = -2
att.Override_MuzzleEffectAttachment = 3

att.Mult_AccuracyMOA = 2
att.Mult_RPM = 1.4
att.Mult_Range = 0.7
att.Mult_SightTime = 0.7
att.Mult_SpeedMult = 1.20
att.Mult_ShootPitch = 1.2
att.Mult_Recoil= 1.3

att.Add_BarrelLength = -7

att.ActivateElements = {"reducedbarrel"}
att.GivesFlags = {"reducedbarrel"}