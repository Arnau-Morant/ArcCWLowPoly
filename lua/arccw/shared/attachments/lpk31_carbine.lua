att.PrintName = "344mm Barrel (Carbine)"
att.Icon = Material("entities/att/acwatt_lowpolyk31redbarrel.png", "smooth")
att.Description = "Carbine barrel, reduces accuracy and increases handling."
att.Desc_Pros = {
    "+10% Movement speed",
    "-20% Sight time",
    "+10% Cycle time",
    "-14 Barrel length",
}
att.Desc_Cons = {
    "Increases MOA to 3.5",
    "+25% Recoil",
    "-25% Range",
}
att.Slot = "lpk31_barrel"

att.AutoStats = false
att.Override_MuzzleEffectAttachment = 3
att.SortOrder = -3

att.Mult_AccuracyMOA = 25
att.Mult_Recoil = 1.25
att.Mult_SightTime = 0.80
att.Mult_SpeedMult = 1.1
att.Mult_Range = 0.75
att.Mult_ShootPitch = 1.1
att.Mult_CycleTime = 0.9

att.Add_BarrelLength = -14

att.ActivateElements = {"carbinebarrel"}