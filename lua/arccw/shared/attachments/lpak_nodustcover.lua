att.PrintName = "No Dust Cover (Jamming)"
att.Icon = Material("entities/att/ak/acwatt_lpaknodustcover.png", "smooth")
att.Description = "It'll get dirtier."
att.Desc_Pros = {
}
att.Desc_Cons = {
    "Can jam",
}
att.Slot = "lpak_dustcover"

att.Override_Jamming = true
att.Free = true

att.ActivateElements = {"NoDustCover"}