att.PrintName = "Extended Barrel (RPK)"
att.Icon = Material("entities/att/ak/acwatt_lpakrpkbarrel.png", "smooth")
att.Description = "Extended heavy weight barrel seen in the RPK series, increments range and lowers recoil."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Slot = "lpak_barrel"

att.Override_Trivia_Desc = "Light machine gun version adaptation of the AK series, the long barrel makes the gun extremely precise."
att.Override_Trivia_Class = "Light Machine Gun"
att.Override_Trivia_Year = 1960

att.AutoStats = true
att.SortOrder = -2
att.Override_MuzzleEffectAttachment = 3

att.Mult_Recoil = 0.85
att.Mult_AccuracyMOA = 0.75
att.Mult_Range = 1.25
att.Mult_SightTime = 1.25
att.Mult_SpeedMult = 0.90
att.Mult_ShootPitch = 0.95

att.Add_BarrelLength = 14

att.ActivateElements = {"RPKBarrel"}