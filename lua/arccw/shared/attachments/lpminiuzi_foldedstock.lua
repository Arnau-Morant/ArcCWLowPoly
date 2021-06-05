att.PrintName = "Folded Stock"
att.Icon = Material("entities/att/acwatt_lowpolyminiuzi_folded.png")
att.Description = "Folding the stock allows the user to fire while sprinting but reduces recoil control."
att.Desc_Pros = {
    "+Shoot while sprinting",
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
    "One handed",
}
att.AutoStats = true
att.Slot = "stock_miniuzi"

att.LHIK = true
att.LHIKHide = true

att.Override_ShootWhileSprint = true

att.Mult_MoveDispersion = 1.5

att.Mult_Recoil = 1.6
att.Mult_RecoilSide = 1.4

att.Mult_SightTime = 0.75
att.Mult_DrawTime = 0.75

att.Override_ActivePos = Vector(-2, -2, -1)
att.Override_ActiveAng = Angle(0, 0, -10)
att.Override_AddSightRoll = -10

att.Override_HoldtypeSights = "pistol"
att.Override_HoldtypeHolstered = "pistol"

att.ActivateElements = {"pistol_onehand"}

att.GivesFlags = {"onehanded"}