att.PrintName = "24' Heavyweight DMR Barrel"
att.Icon = Material("entities/att/acwatt_lpfal_extmodhand.png", "smooth")
att.Description = "DMR Barrel extreme accuracy on forced semi-auto fire."
att.Desc_Pros = {
}
att.Desc_Cons = {
    "Semi-automatic fire only"
}
att.Slot = "lpfal_hand"

att.AutoStats = true

att.Mult_AccuracyMOA = 0.2
att.Mult_SightTime = 1.4
att.Mult_SpeedMult = 0.75
att.Mult_RPM = 0.6
att.Mult_HipDispersion = 1.2
att.Mult_Recoil = 0.7
att.Mult_Range = 2
att.Mult_ShootPitch = 0.9
att.Mult_HipDispersion = 1.6

att.Override_Trivia_Class = "DMR"

att.Override_Firemodes = {
    {
        Mode = 1,
    },
    {
        Mode = 0
    }
}

att.LHIK = true

att.Model = "models/weapons/arccw/atts/osw_lhik.mdl"

att.ActivateElements = {"extmodhand"}