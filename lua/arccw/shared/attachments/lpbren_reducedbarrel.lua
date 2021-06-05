att.PrintName = "14 in Barrel (Sawn-Off)"
att.Icon = Material("entities/att/acwatt_lowpolybrenredbarrel.png", "smooth")
att.Description = "Homemade barrel reduction, reduces accuracy but makes it easier to operate in CQC."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Slot = "lpbren_barrel"

att.AutoStats = true
att.Override_MuzzleEffectAttachment = 3
att.SortOrder = -3

att.Mult_AccuracyMOA = 2
att.Mult_Recoil = 1.20
att.Mult_SightTime = 0.8
att.Mult_SpeedMult = 1.15
att.Mult_ShootPitch = 1.1

att.Add_BarrelLength = -10

att.ActivateElements = {"BrenRedBarrel"}