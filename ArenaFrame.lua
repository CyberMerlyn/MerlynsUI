SLASH_HIDEARENAFRAME1, SLASH_HIDEARENAFRAME2 = '/HideArenaFrame', '/HideArenaFrame';
function SlashCmdList.HIDEARENAFRAME(msg, editBox)
    CompactArenaFrameDB.showCompactArenaFrame = not CompactArenaFrameDB.showCompactArenaFrame
    CompactArenaFrame:SetShown(CompactArenaFrameDB.showCompactArenaFrame)
end

local frame = CreateFrame("Frame")
frame:RegisterEvent("ADDON_LOADED")
frame:RegisterEvent("PLAYER_LOGOUT")

frame:SetScript("OnEvent", function(self, event, arg1)
    if event == "ADDON_LOADED"  and arg1 == "MerlynsUI" then 
        if CompactArenaFrameDB == nil then 
            CompactArenaFrameDB = {}
        end
        if CompactArenaFrameDB.showCompactArenaFrame == nil then  
            CompactArenaFrameDB.showCompactArenaFrame = true
        end 
        CompactArenaFrame:SetShown(CompactArenaFrameDB.showCompactArenaFrame)

        settingsTable = {}
 
        CompactArenaFrame:SetShown(CompactArenaFrameDB.showCompactArenaFrame)

    end
end)

-- Note's so I don't forget the names V --

-- CompactArenaFrame:SetShown(CompactArenaFrameDB.showCompactArenaFrame)
