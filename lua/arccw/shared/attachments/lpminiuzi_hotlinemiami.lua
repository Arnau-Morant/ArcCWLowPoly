att.PrintName = "Hotline Miami"
att.Icon = Material("entities/att/acwatt_lowpolyminiuzi_hm.png")
att.Description = "Hotline Miami sound effects."
att.Desc_Pros = {
    "Replaces firing sounds"
}
att.Desc_Cons = {
}

att.Free = true

att.Slot = "sound_lpminiuzi"

att.Hook_GetShootSound = function(wep, sound)
    if wep:GetBuff_Override("Silencer") then
        return "weapons/arccw/miniuzi/lowpolyminiuzi_suppHM.ogg"
    else
        return "weapons/arccw/miniuzi/lowpolyminiuzi_shotHM.ogg"
    end
end