att.PrintName = "30 Round 7.62 PMag (Gen 3)"
att.Icon = Material("entities/att/ak/acwatt_lpak762pmag.png", "smooth")
att.Description = "Higher calibre gives a higher stopping power and recoil."
att.Desc_Pros = {
}
att.Desc_Cons = {
    "Lowers penetration"
}
att.Slot = "lpczbren_mag"

att.AutoStats = true

att.Override_Trivia_Calibre = "7.62x39mm Soviet"

att.Mult_Recoil = 1.25
att.Mult_Damage = 1.14
att.Mult_DamageMin = 1.14
att.Override_Ammo = "ar2"
att.Override_ClipSize = 30
att.Override_ShellScale = 1.5
att.Override_Penetration = 11

att.Hook_GetShootSound = function(wep, sound)
    if wep:GetBuff_Override("Silencer") then
        return "weapons/arccw/ak/lowpolyak_762supp.ogg"
    else
        return "weapons/arccw/ak/lowpolyak_762fire.ogg"
    end
end

att.Hook_TranslateAnimation = function(wep, anim)
    return anim .. "_762"
end

att.ActivateElements = {"762mag"}