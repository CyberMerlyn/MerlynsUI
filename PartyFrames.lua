SLASH_HIDEPARTYFRAMES1, SLASH_HIDEPARTYFRAMES2 = '/HidePartyFrames', '/HidePartyFrames';
function SlashCmdList.HIDEPARTYFRAMES(msg, editBox)
    PartyFrameDB.showPartyFrame = not PartyFrameDB.showPartyFrame
    PartyFrame:SetShown(PartyFrameDB.showPartyFrame)
end

local frame = CreateFrame("Frame")
frame:RegisterEvent("ADDON_LOADED")
frame:RegisterEvent("PLAYER_LOGOUT")

frame:SetScript("OnEvent", function(self, event, arg1)
    if event == "ADDON_LOADED"  and arg1 == "MerlynsUI" then 
        if PartyFrameDB == nil then 
            PartyFrameDB = {}
        end
        if PartyFrameDB.showPartyFrame == nil then  
            PartyFrameDB.showPartyFrame = true
        end 
        PartyFrame:SetShown(PartyFrameDB.showPartyFrame)

        settingsTable = {}
 
        PartyFrame:SetShown(PartyFrameDB.showPartyFrame)

    end
end)

-- Note's so I don't forget the names V --

-- PartyFrame:SetShown(PartyFrameDB.showPartyFrame)
        