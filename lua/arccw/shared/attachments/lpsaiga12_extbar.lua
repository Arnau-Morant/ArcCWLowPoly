att.PrintName = "740 mm Choke Barrel (Saiga-12)"
att.Icon = Material("entities/att/acwatt_lowpolysaiga12extbar.png")
att.Description = "Barrel extension that includes a built-in choke, somehow reduces firerate."
att.Desc_Pros = {
}
att.Desc_Cons = {
    "Disables muzzle attachments"
}
att.AutoStats = true
att.Slot = {"lpsaiga12_barrel"}
att.Override_MuzzleEffectAttachment = 3

att.Mult_AccuracyMOA = 0.65
att.Mult_Range = 1.4
att.Mult_Recoil = 0.80
att.Mult_SightTime = 1.2
att.Add_BarrelLength = 11
att.Mult_RPM = 0.75

att.ActivateElements = {"extbar"}
att.GivesFlags = {"extbar"}