att.PrintName = "14 Round .22 LR Mag (Classic)"
att.Icon = Material("entities/att/1911/acwatt_lp191122mag.png", "smooth")
att.Description = "Calibre reduction, reduces recoil and damage a lot."
att.Desc_Pros = {
    "Increased magazine capacity",
}
att.Desc_Cons = {
}
att.Slot = "lp1911_mag"

att.AutoStats = true

att.SortOrder = -10

att.Override_Trivia_Calibre = ".22 LR"

att.Mult_Recoil = 0.35
att.Mult_Damage = 0.40
att.Mult_DamageMin = 0.60
att.Mult_Range = 0.8
att.Override_ShellScale = 1.3
att.Override_Penetration = 4
att.Mult_SightTime = 0.7
att.Mult_ReloadTime = 0.90
att.Override_ClipSize = 14

att.ActivateElements = {"Classic22Mag"}

att.Hook_GetShootSound = function(wep, sound)
    if wep:GetBuff_Override("Silencer") then
        return "weapons/arccw/1911/lowpoly1911_22supp.ogg"
    else
        return "weapons/arccw/1911/lowpoly1911_22fire.ogg"
    end
end