att.PrintName = "30 Round 5.45 Mag (AK-74)"
att.Icon = Material("entities/att/ak/acwatt_lpak545mag.png", "smooth")
att.Description = "Lowers recoil and damage."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Slot = "lpak_mag"

att.AutoStats = true

att.Override_Trivia_Calibre = "5.45x39mm Soviet"

att.Mult_Recoil = 0.90
att.Mult_Damage = 0.80
att.Mult_DamageMin = 0.80
att.Override_Ammo = "smg1"
att.Override_ClipSize = 30
att.Override_ShellScale = 1.5
att.Mult_RPM = 1.084
att.Override_Penetration = 20

att.Hook_GetShootSound = function(wep, sound)
    if wep:GetBuff_Override("Silencer") then
        return "weapons/arccw/ak/lowpolyak_545supp.ogg"
    else
        return "weapons/arccw/ak/lowpolyak_545fire.ogg"
    end
end

att.Hook_TranslateAnimation = function(wep, anim)
    if anim != "bash" then
        return anim .. "_545"
    end
end

att.ActivateElements = {"74Bak"}