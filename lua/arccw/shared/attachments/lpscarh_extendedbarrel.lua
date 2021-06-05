att.PrintName = "500mm LB Barrel"
att.Icon = Material("entities/att/acwatt_lowpolyarx160_extendedbarrel.png")
att.Description = "500mm barrel, improves accuracy and recoil control at the cost of weapon weight."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.AutoStats = true
att.Slot = {"lpscarh_barrel"}

att.Override_MuzzleEffectAttachment = 3

att.Mult_ShootPitch = 0.95
att.Mult_ShootVol = 1.1
att.Mult_AccuracyMOA = 0.5
att.Mult_Range = 1.4
att.Mult_Recoil = 0.95

att.Mult_SightTime = 1.35

att.Mult_SpeedMult = 0.9
att.Mult_SightedSpeedMult = 0.9
att.Add_BarrelLength = 12

att.ActivateElements = {"muzz_hbar","hefh"}