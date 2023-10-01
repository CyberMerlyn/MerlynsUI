SLASH_HIDERAIDFRAMES1, SLASH_HIDERAIDFRAMES2 = '/HideRaidFrames', '/HideRaidFrames';
function SlashCmdList.HIDERAIDFRAMES(msg, editBox)
    CompactRaidFrameContainerDB.showCompactRaidFrameContainer = not CompactRaidFrameContainerDB.showCompactRaidFrameContainer
    CompactRaidFrameContainer:SetShown(CompactRaidFrameContainerDB.showCompactRaidFrameContainer)
end

local frame = CreateFrame("Frame")
frame:RegisterEvent("ADDON_LOADED")
frame:RegisterEvent("PLAYER_LOGOUT")

frame:SetScript("OnEvent", function(self, event, arg1)
    if event == "ADDON_LOADED"  and arg1 == "MerlynsUI" then 
        if CompactRaidFrameContainerDB == nil then 
            CompactRaidFrameContainerDB = {}
        end
        if CompactRaidFrameContainerDB.showCompactRaidFrameContainer == nil then  
            CompactRaidFrameContainerDB.showCompactRaidFrameContainer = true
        end 
        CompactRaidFrameContainer:SetShown(CompactRaidFrameContainerDB.showCompactRaidFrameContainer)

        settingsTable = {}
 
        CompactRaidFrameContainer:SetShown(CompactRaidFrameContainerDB.showCompactRaidFrameContainer)

    end
end)

-- Note's so I don't forget the names V --

-- CompactRaidFrameContainer:SetShown(CompactRaidFrameContainerDB.showCompactRaidFrameContainer)
        