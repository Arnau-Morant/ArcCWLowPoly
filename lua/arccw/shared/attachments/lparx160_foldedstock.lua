att.PrintName = "Folded Stock"
att.Icon = Material("entities/att/acwatt_lowpolyarx160_folded.png")
att.Description = "Makes the gun more comfortable for CQC at the cost of recoil and accuracy."
att.Desc_Pros = {
    "Reduces gun length"
}
att.Desc_Cons = {
}
att.AutoStats = true
att.Slot = "stock_arx160"

att.Mult_MoveDispersion = 1.5
att.Mult_AccuracyMOA = 2

att.Mult_Recoil = 1.8
att.Mult_RecoilSide = 1.4

att.Mult_SightTime = 0.65
att.Mult_DrawTime = 0.5
att.Mult_SpeedMult = 1.15
att.Mult_HipDispersion = 1.3

att.Add_BarrelLength = -18

att.Override_ActivePos = Vector(-2, -2, -1)
att.Override_ActiveAng = Angle(0, 0, -3)

att.ActivateElements = {"foldedstock"}