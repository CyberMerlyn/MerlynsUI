SLASH_HIDEQUESTLOG1, SLASH_HIDEQUESTLOG2 = '/HideQuestLog', '/HideQuestLog';
function SlashCmdList.HIDEQUESTLOG(msg, editBox)
    ObjectiveTrackerBlocksFrameDB.showObjectiveTrackerBlocksFrame = not ObjectiveTrackerBlocksFrameDB.showObjectiveTrackerBlocksFrame
    ObjectiveTrackerBlocksFrame:SetShown(ObjectiveTrackerBlocksFrameDB.showObjectiveTrackerBlocksFrame)
    ObjectiveTrackerFrame.HeaderMenu:SetShown(ObjectiveTrackerBlocksFrameDB.showObjectiveTrackerBlocksFrame)
end

local frame = CreateFrame("Frame")
frame:RegisterEvent("ADDON_LOADED")
frame:RegisterEvent("PLAYER_LOGOUT")

frame:SetScript("OnEvent", function(self, event, arg1)
    if event == "ADDON_LOADED"  and arg1 == "MerlynsUI" then 
        if ObjectiveTrackerBlocksFrameDB == nil then 
            ObjectiveTrackerBlocksFrameDB = {}
        end
        if ObjectiveTrackerBlocksFrameDB.showObjectiveTrackerBlocksFrame == nil then  
            ObjectiveTrackerBlocksFrameDB.showObjectiveTrackerBlocksFrame = true
        end 
        ObjectiveTrackerBlocksFrame:SetShown(ObjectiveTrackerBlocksFrameDB.showObjectiveTrackerBlocksFrame)
        ObjectiveTrackerFrame.HeaderMenu:SetShown(ObjectiveTrackerBlocksFrameDB.showObjectiveTrackerBlocksFrame)

        settingsTable = {}
 
        ObjectiveTrackerBlocksFrame:SetShown(ObjectiveTrackerBlocksFrameDB.showObjectiveTrackerBlocksFrame)
        ObjectiveTrackerFrame.HeaderMenu:SetShown(ObjectiveTrackerBlocksFrameDB.showObjectiveTrackerBlocksFrame)

    end
end)

-- Note's so I don't forget the names V --

-- ObjectiveTrackerBlocksFrame:SetShown(ObjectiveTrackerBlocksFrameDB.showObjectiveTrackerBlocksFrame)
-- ObjectiveTrackerFrame.HeaderMenu:SetShown(ObjectiveTrackerBlocksFrameDB.showObjectiveTrackerBlocksFrame)