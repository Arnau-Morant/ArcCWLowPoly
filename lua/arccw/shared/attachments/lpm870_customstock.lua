att.PrintName = "Customized Stock"
att.Icon = Material("entities/att/acwatt_lowpolym870_customstock.png")
att.Description = "Lighter stock gives more comfort."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Slot = "stock_870"

att.AutoStats = true

att.Mult_Recoil = 1.35
att.Mult_SpeedMult = 1.10
att.Mult_SightTime = 0.90

att.ActivateElements = {"customstock"}

att.Hook_TranslateAnimation = function(wep, anim)
    return anim .. "_grip"
end