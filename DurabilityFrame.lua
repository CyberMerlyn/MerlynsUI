SLASH_HIDEREPAIRFRAME1, SLASH_HIDEREPAIRFRAME2 = '/HideRepairFrame', '/HideRepairFrame';
function SlashCmdList.HIDEREPAIRFRAME(msg, editBox)
    DurabilityFrameDB.showDurabilityFrame = not DurabilityFrameDB.showDurabilityFrame
    DurabilityFrame:SetShown(DurabilityFrameDB.showDurabilityFrame)
end

local frame = CreateFrame("Frame")
frame:RegisterEvent("ADDON_LOADED")
frame:RegisterEvent("PLAYER_LOGOUT")

frame:SetScript("OnEvent", function(self, event, arg1)
    if event == "ADDON_LOADED"  and arg1 == "MerlynsUI" then 
        if DurabilityFrameDB == nil then 
            DurabilityFrameDB = {}
        end
        if DurabilityFrameDB.showDurabilityFrame == nil then  
            DurabilityFrameDB.showDurabilityFrame = true
        end 
        DurabilityFrame:SetShown(DurabilityFrameDB.showDurabilityFrame)

        settingsTable = {}
 
        DurabilityFrame:SetShown(DurabilityFrameDB.showDurabilityFrame)

    end
end)

-- Note's so I don't forget the names V --

-- DurabilityFrame:SetShown(DurabilityFrameDB.showDurabilityFrame)
