att.PrintName = "20 Round 7.62 Mag (HK 417)"
att.Icon = Material("entities/att/acwatt_lowpolyhk416762mag.png", "smooth")
att.Description = "HK 417 DMR conversion."
att.Desc_Pros = {
}
att.Desc_Cons = {
    "Reduced magazine capacity",
    "Semi-auto fire only"
}
att.Slot = "lphk416_mag"

att.AutoStats = true

att.Override_Trivia_Calibre = "7.62x51mm NATO"

att.Mult_Recoil = 1.30
att.Mult_Damage = 1.5
att.Mult_DamageMin = 1.5
att.Override_Ammo = "ar2"
att.Override_ClipSize = 20
att.Override_ShellScale = 1.8
att.Mult_RPM = 0.834
att.Override_Penetration = 17
att.Mult_AccuracyMOA = 0.75
att.Mult_Range = 1.25

att.Override_Trivia_Desc = "High caliber conversion for the 416 rifle."
att.Override_Trivia_Class = "DMR"
att.Override_Trivia_Year = 2006

att.Override_Firemodes = {
    {
        Mode = 1,
    },
    {
        Mode = 0,
    },
}

att.Hook_GetShootSound = function(wep, sound)
    if wep:GetBuff_Override("Silencer") then
        return "weapons/arccw/hk416/lowpolyhk416_762supp.ogg"
    else
        return "weapons/arccw/hk416/lowpolyhk416_762fire.ogg"
    end
end

att.ActivateElements = {"hk417mag"}