att.PrintName = "7 Round .50 AE Mag (M45A1)"
att.Icon = Material("entities/att/1911/acwatt_lp191150mag.png", "smooth")
att.Description = ".50 AE bullets hit much harder close range but have a high damage dropoff."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Slot = "lp1911_mag"

att.AutoStats = true

att.SortOrder = -10

att.Override_Trivia_Calibre = ".50 Action Express"

att.Mult_Recoil = 1.6
att.Mult_Damage = 1.45
att.Mult_DamageMin = 1.05
att.Mult_Range = 1.2
att.Mult_RPM = 0.6
att.Override_Ammo = "357"
att.Override_ShellScale = 2.3
att.Override_Penetration = 14
att.Mult_SightTime = 1.25
att.Mult_ReloadTime = 1.10
att.Override_ClipSize = 7

att.ActivateElements = {"50Mag"}

att.Hook_GetShootSound = function(wep, sound)
    if wep:GetBuff_Override("Silencer") then
        return "weapons/arccw/1911/lowpoly1911_50supp.ogg"
    else
        return "weapons/arccw/1911/lowpoly1911_50fire.ogg"
    end
end