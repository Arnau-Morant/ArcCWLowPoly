att.PrintName = "30 Round 5.56 Mag (AK-101)"
att.Icon = Material("entities/att/ak/acwatt_lpak556mag.png", "smooth")
att.Description = "Lowers recoil and damage."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Slot = "lpak_mag"

att.AutoStats = true

att.Override_Trivia_Calibre = "5.56x45mm NATO"

att.Mult_Recoil = 0.95
att.Mult_Damage = 0.9
att.Mult_DamageMin = 0.9
att.Override_Ammo = "smg1"
att.Override_ClipSize = 30
att.Override_ShellScale = 1.55
att.Mult_RPM = 1.1
att.Override_Penetration = 23
att.Mult_ShootPitch = 0.90

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

att.ActivateElements = {"BerylMag"}