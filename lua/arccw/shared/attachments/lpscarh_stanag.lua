att.PrintName = "30 Round Mag (STANAG)"
att.Icon = Material("entities/att/acwatt_lowpoly_stanag.png")
att.Description = "Converts the gun to a SCAR-L."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Slot = "lpscarh_mag"

att.AutoStats = true

att.MagReducer = true

att.Override_Trivia_Desc = "Light version of the SCAR series, has lower recoil."
att.Override_Trivia_Calibre = "5.56x45mm NATO"
att.Override_Trivia_Class = "Assault Rifle"

att.Mult_Recoil = 0.7
att.Mult_RecoilSide = 0.7
att.Mult_Damage = 0.52
att.Mult_DamageMin = 0.52
att.Override_Ammo = "smg1"
att.Override_ClipSize = 30
att.Mult_ShootPitch = 1.10
att.Override_ShellScale = 1.2
att.Mult_RPM = 1.084
att.Override_Penetration = 11

att.Hook_TranslateAnimation = function(wep, anim)
    return anim .. "_l"
end

att.ActivateElements = {"stanag"}