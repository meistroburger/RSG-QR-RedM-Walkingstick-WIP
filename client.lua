function giveWalkingStick(player, duration)
    -- Get the player's Ped object
    local ped = GetPlayerPed(player)

    -- Attach the "walkingstick" prop to the player's hand
    AttachPropToPed(ped, GetHashKey("prop_walkingstick"), GetPedBoneIndex(ped, 28422), 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1, 1, 0, 0, 2, 1)

    -- Change the player's walking style to that of an injured person
    SetPedMovementClipset(ped, "move_m@injured", 1.0)

    -- Remove the walking stick after the duration expires
    SetTimeout(duration, function()
        -- Detach the "walkingstick" prop from the player's hand
        DetachPropFromPed(ped, GetHashKey("prop_walkingstick"))

        -- Reset the player's walking style to normal
        ResetPedMovementClipset(ped, 1.0)
    end)
end
