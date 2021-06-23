att.PrintName = "32 Round 9mm Mag (HK 419)"
att.Icon = Material("entities/att/acwatt_lowpolyhk419mag.png", "smooth")
att.Description = "HK 419 SMG conversion."
att.Desc_Pros = {
    "Extended magazine capacity",
}
att.Desc_Cons = {
}
att.Slot = "lphk416_mag"

att.AutoStats = true
att.Override_Trivia_Calibre = "9x19mm Para"
att.SortOrder = -5

att.Mult_Recoil = 0.60
att.Mult_SightTime = 0.75
att.Mult_Damage = 0.8
att.Mult_DamageMin = 0.7
att.Override_Ammo = "pistol"
att.Override_ClipSize = 32
att.Override_ShellModel = "models/shells/shell_9mm.mdl"
att.Override_ShellScale = 1.2
att.Override_Penetration = 4
att.Mult_Range = 0.5

att.Override_Trivia_Desc = "SMG version, uses a bolt adapted for 9mm rounds."
att.Override_Trivia_Class = "SMG"

att.Hook_GetShootSound = function(wep, sound)
    if wep:GetBuff_Override("Silencer") then
        return "weapons/arccw/hk416/lowpolyhk416_9mmsupp.ogg"
    else
        return "weapons/arccw/hk416/lowpolyhk416_9mmfire.ogg"
    end
end

att.Hook_TranslateAnimation = function(wep, anim)
    return anim .. "_419"
end

att.ActivateElements = {"hk419mag"}