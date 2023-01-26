RegisterCommand("walkingstick", function(source, args)
    -- Check if the player has the "doctors" role
    if IsPlayerAceAllowed(source, "doctors") then
        -- Get the player ID and duration from the command arguments
        local playerId = tonumber(args[1])
        local duration = tonumber(args[2])

        -- Give the walking stick to the player
        giveWalkingStick(playerId, duration)
    else
        -- Send a message to the player if they don't have the required role
        TriggerClientEvent("chat:addMessage", source, { args = {"You do not have permission to use this command."}})
    end
end, false)
