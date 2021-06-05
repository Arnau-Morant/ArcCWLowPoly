att.PrintName = "5 Round 25mm Mags (XM109)"
att.Icon = Material("entities/att/acwatt_lowpolym82_hemag.png")
att.Description = "25x59mm HE rounds."
att.Desc_Pros = {
    "Explosive ammo",
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
    "Completely overpowered, have fun"
}
att.AutoStats = true
att.Slot = "lpm82_mags"

att.Override_Trivia_Calibre = "25x59mm"
att.Override_Trivia_Mechanism = "Short recoil"

att.Hook_BulletHit = function(wep, data)
    local ent = data.tr.Entity
    local effectdata = EffectData()
    effectdata:SetOrigin( data.tr.HitPos )
    util.Effect( "Explosion", effectdata)
    local rad = math.Clamp(math.ceil(wep:GetDamage(0)), 384, 500)
    util.BlastDamage(wep, wep:GetOwner(), data.tr.HitPos, rad, wep:GetDamage(data.range))
    if ent:IsValid() and ent:GetClass() == {"npc_helicopter"} then
        data.dmgtype = DMG_AIRBOAT
    end
end

att.ActivateElements = {"hemags"}
att.GivesFlags = {"exploammo"}

-- Thanks to Enriks-Da8 for providing the code for the explosive ammo