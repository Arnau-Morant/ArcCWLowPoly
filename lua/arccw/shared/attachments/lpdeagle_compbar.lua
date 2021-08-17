att.PrintName = "Compensated Barrel"
att.Icon = Material("entities/att/acwatt_lowpolyczbrenredbarrel.png", "smooth")
att.Description = "abc"
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Slot = "lpdeagle_barrel"

att.AutoStats = true

att.Mult_AccuracyMOA = 1.2
att.Mult_Range = 0.7
att.Mult_Recoil = 0.6

att.Hook_TranslateAnimation = function(wep, anim)
    return anim .. "_comp"
end

att.ActivateElements = {"compbar"}