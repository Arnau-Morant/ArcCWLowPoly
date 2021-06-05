att.PrintName = "Integral Suppressor"
att.Icon = Material("entities/att/acwatt_lowpolysmg2_intsupp.png")
att.Description = "I'm not sure how we even got our hand on one of these."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.AutoStats = true

att.SortOrder = 100

att.ActivateElements = {"intsupp"}

att.Slot = "muzzle_smg2"
att.Override_MuzzleEffectAttachment = 3

att.Silencer = true
att.Override_MuzzleEffect = "muzzleflash_suppressed"

att.Mult_ShootVol = 0.75
att.Mult_AccuracyMOA = 0.75
att.Mult_Range = 1.25

att.Mult_SightTime = 1.1

att.Mult_HipDispersion = 1.5

att.Add_BarrelLength = 10