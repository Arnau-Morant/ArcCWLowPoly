att.PrintName = "60 Round Mag (MAG5-60)"
att.Icon = Material("entities/att/acwatt_lowpoly_stanag60.png")
att.Description = "High capacity 60 round mag, heavy frontal weight increment, has a chance to jam."
att.Desc_Pros = {
}
att.Desc_Cons = {
    "Unreliable for sustained fire"
}
att.Desc_Neutrals = {
    "If you dislike the jamming feature",
    "use GamerBarney's cheaty attachment pack!"
}
att.Slot = "mag_556"

att.AutoStats = true
att.MagExtender = true

att.Mult_AccuracyMOA = 1.2
att.Mult_SpeedMult = 0.85
att.Mult_SightTime = 1.30
att.Mult_Recoil = 0.90
att.Override_ClipSize = 60

att.Override_Jamming = true
att.Override_HeatCapacity = 45

att.Hook_TranslateAnimation = function(wep, anim)
    return anim .. "_extended"
end

att.ActivateElements = {"extendedmag"}