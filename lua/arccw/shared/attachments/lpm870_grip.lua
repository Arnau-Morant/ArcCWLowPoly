att.PrintName = "Pistol Grip"
att.Icon = Material("entities/att/acwatt_lowpolym870_grip.png")
att.Description = "Don't like the stock?"
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Slot = "stock_870"

att.AutoStats = true

att.Mult_Recoil = 1.5
att.Mult_SpeedMult = 1.5
att.Mult_SightTime = 0.7
att.Mult_HipDispersion = 1.4

att.ActivateElements = {"nostock"}

att.Hook_TranslateAnimation = function(wep, anim)
    return anim .. "_grip"
end