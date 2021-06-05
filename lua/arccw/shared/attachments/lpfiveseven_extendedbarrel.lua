att.PrintName = "Extended Barrel (168mm)"
att.Icon = Material("entities/att/acwatt_lowpolyfivesevenextbar.png", "smooth")
att.Description = "Extended barrel, increases accuracy but reduces firerate and movility."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Slot = "lpfiveseven_barrel"

att.AutoStats = true
att.SortOrder = 1
att.Override_MuzzleEffectAttachment = 4

att.Mult_AccuracyMOA = 0.75
att.Mult_RPM = 0.9
att.Mult_Range = 1.2
att.Mult_SightTime = 1.4
att.Mult_SpeedMult = 0.80
att.Mult_ShootPitch = 0.94
att.Mult_Recoil= 0.8

att.Add_BarrelLength = 6

att.ActivateElements = {"extendedbarrel"}