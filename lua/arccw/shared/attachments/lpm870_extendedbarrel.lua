att.PrintName = "Extended Barrel"
att.Icon = Material("entities/att/acwatt_lowpolym870_extendedbarrel.png")
att.Description = "Barrel extension that improves accuracy and recoil control at the cost of weapon weight."
att.Desc_Pros = {
    "Adds a rear sight for reference"
}
att.Desc_Cons = {
}
att.AutoStats = true
att.Slot = {"muzzle_870"}

att.Mult_ShootPitch = 0.95
att.Mult_ShootVol = 1.1
att.Mult_AccuracyMOA = 0.7
att.Mult_Range = 1.2
att.Mult_Recoil = 0.95

att.Mult_SightTime = 1.35

att.Mult_SpeedMult = 0.85
att.Mult_SightedSpeedMult = 0.85
att.Mult_CycleTime = 1.1
att.Add_BarrelLength = 12

att.ActivateElements = {"muzz_hbar"}