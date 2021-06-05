att.PrintName = "40mm Incendiary"
att.Icon = Material("entities/att/acwatt_lowpolym32_incendiary.png")
att.Description = "Load the cylinder with 6 40mm Incendiary grenades."
att.Desc_Pros = {
    "- Area denial",
}
att.Desc_Cons = {
    "- Less lethal on impact",
}
att.Desc_Neutrals = {
}
att.Slot = "ammo_m32"
att.Override_ShootEntity = "arccw_lpm32_thermite"

att.ActivateElements = {"ammo_incendiary"}