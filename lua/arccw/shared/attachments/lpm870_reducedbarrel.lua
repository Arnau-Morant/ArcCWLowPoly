att.PrintName = "Sawn Off Barrel"
att.Icon = Material("entities/att/acwatt_lowpolym870_reducedbarrel.png")
att.Description = "Homemade barrel reduction with lower weight and precision."
att.Desc_Pros = {
    "- Who doesn't like a sawn off?",
}
att.Desc_Cons = {
    "- Removes Iron sights"
}
att.AutoStats = true
att.Slot = {"muzzle_870"}

att.Mult_ShootPitch = 1.1
att.Mult_AccuracyMOA = 1.5

att.Mult_Range = 0.8
att.Mult_Recoil = 1.15

att.Mult_CycleTime = 0.95
att.Mult_SightTime = 0.75
att.Mult_SightedSpeedMult = 1.2
att.Mult_SpeedMult = 1.15
att.Mult_MoveDispersion = 3

att.Add_BarrelLength = -32

att.ActivateElements = {"muzz_lbar"}