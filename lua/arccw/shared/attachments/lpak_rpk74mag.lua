att.PrintName = "45 Round 5.45 Mag (RPK-74)"
att.Icon = Material("entities/att/ak/acwatt_lpakrpkmag.png", "smooth")
att.Description = "5.45 extended polymer mag designed for the RPK-74."
att.Desc_Pros = {
    "Increased magazine capacity"
}
att.Desc_Cons = {
}
att.Slot = "lpak_mag"

att.AutoStats = true

att.Override_Trivia_Desc = "LMG AK variant, designed for suppressive fire."
att.Override_Trivia_Calibre = "5.45x39mm Soviet"
att.Override_Trivia_Class = "Assault Rifle"
att.Override_Trivia_Year = 1974

att.Mult_Recoil = 0.90
att.Mult_Damage = 0.80
att.Mult_DamageMin = 0.80
att.Override_Ammo = "smg1"
att.Override_ClipSize = 45
att.Override_ShellScale = 1.5
att.Mult_RPM = 1.084
att.Override_Penetration = 20
att.Mult_SightTime = 1.25

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

att.ActivateElements = {"RPK74Mag"}