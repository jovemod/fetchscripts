local isCursorActive = false

function toggleCursor(state)
    showCursor(state)
    isCursorActive = state
end

addEventHandler("onClientKey", root, 
    function(button, press)
        if button == "mouse3" then
            if press then
                toggleCursor(true)
            else
                toggleCursor(false)
            end
        end
    end
)

addEventHandler("onClientClick", root,
    function(button, state, absoluteX, absoluteY, worldX, worldY, worldZ, clickedElement)
        if isCursorActive and button == "right" and state == "down" then
            local player = getLocalPlayer()
            if isPedInVehicle(player) then
                local vehicle = getPedOccupiedVehicle(player)
                setElementPosition(vehicle, worldX, worldY, worldZ + 1) -- Teleporta o veículo do jogador
            else
                setElementPosition(player, worldX, worldY, worldZ + 1) -- Teleporta o jogador
            end
            outputChatBox("SUCESS", 0 ,255, 0)
        end
    end
)
