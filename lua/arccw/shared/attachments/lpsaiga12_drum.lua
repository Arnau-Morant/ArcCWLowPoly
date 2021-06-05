att.PrintName = "20 Round Drum (Saiga-12)"
att.Icon = Material("entities/att/acwatt_lowpolysaiga12drum.png", "smooth")
att.Description = "12 Gauge drum mag designed for the Saiga-12."
att.Desc_Pros = {
    "Increased magazine capacity"
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
    "Sorry for no wireframe :("
}
att.Slot = "lpsaiga12_mag"

att.AutoStats = true
att.SortOrder = -1

att.Mult_SightTime = 2
att.Mult_Recoil = 0.8
att.Mult_ReloadTime = 1.2
att.Mult_SpeedMult = 0.75
att.Override_ClipSize = 20

att.Hook_TranslateAnimation = function(wep, anim)
    return anim .. "_drum"
end

att.ActivateElements = {"drum"}

-- Thanks to DaxzMidnight for providing the model