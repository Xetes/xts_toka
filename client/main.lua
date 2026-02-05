local tokaAcik = false
local eskiSac = nil

RegisterCommand("toka", function() -- you can change the command from here/komutu burdan değiştirebilirsiniz 
    local ped = PlayerPedId()

    if not tokaAcik then
        eskiSac = {
            drawable = GetPedDrawableVariation(ped, 2),
            texture = GetPedTextureVariation(ped, 2)
        }

        SetPedComponentVariation(ped, 2, 0, 0, 2)
        tokaAcik = true
    else
        if eskiSac then
            SetPedComponentVariation(
                ped,
                2,
                eskiSac.drawable,
                eskiSac.texture,
                2
            )
        end
        tokaAcik = false
    end
end, false)