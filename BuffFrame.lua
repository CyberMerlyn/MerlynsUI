SLASH_HIDEBUFFS1, SLASH_HIDEBUFFS2 = '/HideBuffs', '/HideBuffs';
function SlashCmdList.HIDEBUFFS(msg, editBox)
    BuffFrameDB.showBuffFrame = not BuffFrameDB.showBuffFrame
    BuffFrame:SetShown(BuffFrameDB.showBuffFrame)
end

local frame = CreateFrame("Frame")
frame:RegisterEvent("ADDON_LOADED")
frame:RegisterEvent("PLAYER_LOGOUT")

frame:SetScript("OnEvent", function(self, event, arg1)
    if event == "ADDON_LOADED"  and arg1 == "MerlynsUI" then 
        if BuffFrameDB == nil then 
            BuffFrameDB = {}
        end
        if BuffFrameDB.showBuffFrame == nil then  
            BuffFrameDB.showBuffFrame = true
        end 
        BuffFrame:SetShown(BuffFrameDB.showBuffFrame)

        settingsTable = {}
 
        BuffFrame:SetShown(BuffFrameDB.showBuffFrame)

    end
end)

-- Note's so I don't forget the names V --

-- BuffFrame:SetShown(BuffFrameDB.showBuffFrame)