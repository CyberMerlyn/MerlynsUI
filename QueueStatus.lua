SLASH_HIDEQUEUESTATUS1, SLASH_HIDEQUEUESTATUS2 = '/HideQueueStatus', '/HideQueueStatus';
function SlashCmdList.HIDEQUEUESTATUS(msg, editBox)
    QueueStatusButtonDB.showQueueStatusButton = not QueueStatusButtonDB.showQueueStatusButton
    QueueStatusButton:SetShown(QueueStatusButtonDB.showQueueStatusButton)
end

local frame = CreateFrame("Frame")
frame:RegisterEvent("ADDON_LOADED")
frame:RegisterEvent("PLAYER_LOGOUT")

frame:SetScript("OnEvent", function(self, event, arg1)
    if event == "ADDON_LOADED"  and arg1 == "MerlynsUI" then 
        if QueueStatusButtonDB == nil then 
            QueueStatusButtonDB = {}
        end
        if QueueStatusButtonDB.showQueueStatusButton == nil then  
            QueueStatusButtonDB.showQueueStatusButton = true
        end 
        QueueStatusButton:SetShown(QueueStatusButtonDB.showQueueStatusButton)

        settingsTable = {}
 
        QueueStatusButton:SetShown(QueueStatusButtonDB.showQueueStatusButton)

    end
end)

-- Note's so I don't forget the names V --

-- QueueStatusButton:SetShown(QueueStatusButtonDB.showQueueStatusButton)