SLASH_HIDEFRIENDSBUTTON1, SLASH_HIDEFRIENDSBUTTON2 = '/HideFriendsButton', '/HideFriendsButton';
function SlashCmdList.HIDEFRIENDSBUTTON(msg, editBox)
    QuickJoinToastButton.showQuickJoinToastButton = not QuickJoinToastButton.showQuickJoinToastButton
    QuickJoinToastButton:SetShown(QuickJoinToastButton.showQuickJoinToastButton)
end

local frame = CreateFrame("Frame")
frame:RegisterEvent("ADDON_LOADED")
frame:RegisterEvent("PLAYER_LOGOUT")

frame:SetScript("OnEvent", function(self, event, arg1)
    if event == "ADDON_LOADED"  and arg1 == "MerlynsUI" then 
        if QuickJoinToastButtonDB == nil then 
            QuickJoinToastButtonDB = {}
        end
        if QuickJoinToastButtonDB.showQuickJoinToastButton == nil then  
            QuickJoinToastButtonDB.showQuickJoinToastButton = true
        end
        QuickJoinToastButton:SetShown(QuickJoinToastButtonDB.showQuickJoinToastButton)

        settingsTable = {}
 
        QuickJoinToastButton:SetShown(QuickJoinToastButtonDB.showQuickJoinToastButton)
        
    end
end)

-- Note's so I don't forget the names V --

-- QuickJoinToastButton:SetShown(QuickJoinToastButtonDB.showQuickJoinToastButton)
        