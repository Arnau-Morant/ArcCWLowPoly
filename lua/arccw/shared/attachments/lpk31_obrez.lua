att.PrintName = "248mm Barrel (Obrez)"
att.Icon = Material("entities/att/acwatt_lowpolyk31obrezbarrel.png", "smooth")
att.Description = "Homemade barrel reduction, trades accuracy by high movility."
att.Desc_Pros = {
    "+50% Movement speed",
    "-40% Sight time",
    "+15% Cycle time",
    "-20 Barrel length",
}
att.Desc_Cons = {
    "Increases MOA to 28",
    "+300% Recoil",
    "+200% Hip fire spread",
    "-75% Range",
}
att.Slot = "lpk31_barrel"

att.AutoStats = false
att.Override_MuzzleEffectAttachment = 4
att.SortOrder = -3

att.LHIK = true
att.Model = "models/weapons/arccw/atts/foregrip_obrez.mdl"

att.Mult_AccuracyMOA = 200
att.Mult_Recoil = 4
att.Mult_SightTime = 0.60
att.Mult_SpeedMult = 1.5
att.Mult_ShootPitch = 1.3
att.Mult_Range = 0.35
att.Mult_CycleTime = 0.85
att.Mult_HipDispersion = 3

att.Add_BarrelLength = -20

att.Override_HoldtypeActive = "pistol"

att.ActivateElements = {"obrezbarrel"}
att.GivesFlags = {"obrezbarrel"}