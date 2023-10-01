SLASH_HIDEDEBUFFS1, SLASH_HIDEDEBUFFS2 = '/HideDebuffs', '/HideDebuffs';
function SlashCmdList.HIDEDEBUFFS(msg, editBox)
    DebuffFrameDB.showDebuffFrame = not DebuffFrameDB.showDebuffFrame
    DebuffFrame:SetShown(DebuffFrameDB.showDebuffFrame)
end

local frame = CreateFrame("Frame")
frame:RegisterEvent("ADDON_LOADED")
frame:RegisterEvent("PLAYER_LOGOUT")

frame:SetScript("OnEvent", function(self, event, arg1)
    if event == "ADDON_LOADED"  and arg1 == "MerlynsUI" then 
        if DebuffFrameDB == nil then 
            DebuffFrameDB = {}
        end
        if DebuffFrameDB.showBuffFrame == nil then  
            DebuffFrameDB.showBuffFrame = true
        end 
        DebuffFrame:SetShown(DebuffFrameDB.showDebuffFrame)

        settingsTable = {}
 
        DebuffFrame:SetShown(DebuffFrameDB.showDebuffFrame)

    end
end)

-- Note's so I don't forget the names V --

-- DebuffFrame:SetShown(DebuffFrameDB.showDebuffFrame)