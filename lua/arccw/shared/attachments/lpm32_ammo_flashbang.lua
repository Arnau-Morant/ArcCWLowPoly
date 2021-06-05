att.PrintName = "40mm Flashbangs"
att.Icon = Material("entities/att/acwatt_lowpolym32_flashbang.png")
att.Description = "Load the cylinder with 6 40mm Flashbangs."
att.Desc_Pros = {
    "- Have your screen turn white",
    "- ASTW2 remaster when"
}
att.Desc_Cons = {
    "- Non lethal"
}

att.Slot = "ammo_m32"
att.Override_ShootEntity = "arccw_gl_flash"

att.ActivateElements = {"ammo_flashbang"}