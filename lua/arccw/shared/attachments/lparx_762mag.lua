att.PrintName = "30 Round 7.62 Mag (PMAG)"
att.Icon = Material("entities/att/ak/acwatt_lpak762mag.png", "smooth")
att.Description = "Has higher damage and recoil."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Slot = "mag_762"

att.Override_Trivia_Calibre = "7.62x39mm Soviet"

att.AutoStats = true

att.Mult_Recoil = 1.20
att.Mult_Damage = 1.10
att.Mult_DamageMin = 1.10
att.Override_Ammo = "ar2"
att.Override_ClipSize = 30
att.Override_ShellScale = 1.5
att.Override_Penetration = 24
att.Mult_ShootPitch = 0.88

att.Hook_TranslateAnimation = function(wep, anim)
    return anim .. "_762"
end

att.ActivateElements = {"762ARX"}