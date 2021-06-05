att.PrintName = "Bottom fed (Nerb)"
att.Icon = Material("entities/att/acwatt_lowpolybrennerb.png", "smooth")
att.Description = "Gigantic AK."
att.Desc_Pros = {
    "Faster reloads"
}
att.Desc_Cons = {
}
att.Slot = "lpbren_mech"
att.Mult_ReloadTime = 0.8

att.Override_CaseEffectAttachment = 5

att.Hook_TranslateAnimation = function(wep, anim)
    return anim .. "_why"
end

att.ActivateElements = {"why"}