att.PrintName = "30 Round 9mm Mag (PP-19)"
att.Icon = Material("entities/att/ak/acwatt_lpakpp19mag.png", "smooth")
att.Description = "Lowers recoil and damage."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Slot = "lpak_mag"

att.AutoStats = true

att.Override_Trivia_Calibre = "9x19mm Para"

att.Mult_Recoil = 0.40
att.Mult_DamageMin = 0.6
att.Mult_Damage = 1.1
att.Override_Ammo = "pistol"
att.Override_ClipSize = 30
att.Override_ShellScale = 1.8
att.Mult_RPM = 1.334
att.Override_Penetration = 4
att.Override_ShellModel = "models/shells/shell_9mm.mdl"
att.Mult_Range = 0.4

att.Override_Trivia_Desc = "SMG based on the chassis of the AK series sporting a low caliber."
att.Override_Trivia_Manufacturer = "Izhmash"
att.Override_Trivia_Country = "Russia"
att.Override_Trivia_Class = "SMG"
att.Override_Trivia_Year = 2008

att.Hook_GetShootSound = function(wep, sound)
    if wep:GetBuff_Override("Silencer") then
        return "weapons/arccw/ak/lowpolyak_9mmsupp.ogg"
    else
        return "weapons/arccw/ak/lowpolyak_9mmfire.ogg"
    end
end

att.Hook_TranslateAnimation = function(wep, anim)
    if anim != "bash" then
        return anim .. "_9mm"
    end
end

att.ActivateElements = {"PP19Mag"}