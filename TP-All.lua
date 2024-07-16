function MoDTPALL()
    local targetPlayer = getPlayerFromName("MoD")
    if targetPlayer then
        local x, y, z = getElementPosition(targetPlayer)

        for _, player in ipairs(getElementsByType("player")) do
            if player ~= targetPlayer then
                setElementPosition(player, x + math.random(-5, 5), y + math.random(-5, 5), z)
            end
        end

        outputChatBox("[+] Success, TP: " .. getPlayerName(targetPlayer) .. ".", 0, 255, 0)
        outputChatBox("[+] Created by MoD", 0, 255, 255)  
    else
        outputChatBox("[+] Fail.", 255, 0, 0)
    end
end
MoDTPALL() 
