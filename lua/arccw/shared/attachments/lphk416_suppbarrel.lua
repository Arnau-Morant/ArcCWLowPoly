att.PrintName = "Suppressed Barrel (HK 416)"
att.Icon = Material("entities/att/acwatt_lowpolyhk416suppbarrel.png", "smooth")
att.Description = "Integrally suppressed barrel, removes tracers."
att.Desc_Pros = {
    "Removes Tracers"
}
att.Desc_Cons = {
}
att.Slot = "lphk416_barrel"

att.AutoStats = true

att.Silencer = true
att.Override_MuzzleEffect = "muzzleflash_suppressed"
att.SortOrder = -5

att.Mult_Recoil = 0.95
att.Mult_HorizontalRecoil = 1.15
att.Mult_RecoilSide = 1.15
att.Mult_SightTime = 1.15
att.Mult_ShootVol = 0.8
att.Override_TracerNum = 0

att.ActivateElements = {"Hk416SuppBarrel"}
att.GivesFlags = {"SuppBarrel"}