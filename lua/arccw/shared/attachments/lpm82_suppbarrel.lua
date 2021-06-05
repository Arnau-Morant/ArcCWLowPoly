att.PrintName = "27 in Suppressed Barrel (M82A1)"
att.Icon = Material("entities/att/acwatt_lowpolym82suppbarrel.png", "smooth")
att.Description = "Specialized 12.7x99 mm suppressor designed for the M82."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Slot = "lpm82_barrel"

att.AutoStats = true
att.Override_MuzzleEffectAttachment = 4

att.Mult_ShootVol = 0.8
att.Mult_Recoil = 0.75
att.Mult_SightTime = 1.4
att.Mult_SpeedMult = 0.8
att.Mult_Range = 1.25

att.Silencer = true
att.Override_MuzzleEffect = "muzzleflash_shotgun" -- Looks much better than muzzleflash_suppressed
att.Add_BarrelLength = 11

att.ActivateElements = {"suppbarrel"}