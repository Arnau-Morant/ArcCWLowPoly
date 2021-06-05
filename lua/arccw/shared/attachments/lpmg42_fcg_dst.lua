att.PrintName = "Dual stage trigger"
att.Icon = Material("entities/att/acwatt_fcg_dst.png")
att.Description = "Allows the use of semi auto fire."
att.Desc_Pros = {
    "- Semi and full auto",
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
    "- Wasn't really designed for this gun",
}
att.Slot = "fcg_mg42"

att.Override_Firemodes = {
    {
        Mode = 2,
    },
    {
        Mode = 1,
    },
    {
        Mode = 0
    }
}

att.ActivateElements = {"dualstagetrigger"}