att.PrintName = "171mm CQC Barrel"
att.Icon = Material("entities/att/acwatt_lowpolyarx160_reducedbarrel.png")
att.Description = "171mm barrel, lowers weight at the cost of precision and recoil."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.AutoStats = true
att.Slot = {"lpscarh_barrel"}

att.Override_MuzzleEffectAttachment = 4

att.Mult_ShootPitch = 1.1
att.Mult_AccuracyMOA = 1.25
att.Mult_MoveDispersion = 1.3

att.Mult_Range = 0.8
att.Mult_Recoil = 1.25

att.Mult_SightTime = 0.8
att.Mult_SightedSpeedMult = 1.1
att.Mult_SpeedMult = 1.15

att.Add_BarrelLength = -4

att.ActivateElements = {"muzz_lbar","lifh"}