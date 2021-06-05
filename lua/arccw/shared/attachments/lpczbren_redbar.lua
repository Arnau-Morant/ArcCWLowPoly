att.PrintName = "277 mm Barrel (CQB)"
att.Icon = Material("entities/att/acwatt_lowpolyczbrenredbarrel.png", "smooth")
att.Description = "CQB focused barrel reduction, reduces accuracy and increases recoil."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Slot = "lpczbren_barrel"

att.AutoStats = true
att.Override_MuzzleEffectAttachment = 3
att.SortOrder = -3

att.Mult_AccuracyMOA = 1.5
att.Mult_Recoil = 1.20
att.Mult_SightTime = 0.8
att.Mult_SpeedMult = 1.15
att.Mult_ShootPitch = 1.1

att.Add_BarrelLength = -14

att.ActivateElements = {"redbar"}