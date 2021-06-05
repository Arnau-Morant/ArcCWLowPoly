att.PrintName = "14 in Barrel (CQB)"
att.Icon = Material("entities/att/acwatt_lowpolym82cqbbarrel.png", "smooth")
att.Description = "Reduced barrel size, useful for CQB."
att.Desc_Pros = {
    "+10% Movement speed",
    "+10% Fire rate",
    "-20% Sight time",
    "-15 Barrel length",
}
att.Desc_Cons = {
    "Increases MOA to 2.5",
    "+20% Recoil",
    "-30% Range",
}
att.Slot = "lpm82_barrel"

att.AutoStats = false
att.Override_MuzzleEffectAttachment = 4
att.SortOrder = -3

att.Mult_RPM = 1.1
att.Mult_AccuracyMOA = 50
att.Mult_Recoil = 1.2
att.Mult_SightTime = 0.8
att.Mult_SpeedMult = 1.1
att.Mult_ShootPitch = 1.1
att.Mult_Range = 0.7

att.Add_BarrelLength = -15

att.ActivateElements = {"cqbbarrel"}