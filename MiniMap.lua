SLASH_HIDEMINIMAP1, SLASH_HIDEMINIMAP2 = '/HideMinimap', '/HideMinimap';
function SlashCmdList.HIDEMINIMAP(msg, editBox)
    MinimapClusterDB.showMinimapCluster = not MinimapClusterDB.showMinimapCluster
    MinimapCluster:SetShown(MinimapClusterDB.showMinimapCluster)
end

local frame = CreateFrame("Frame")
frame:RegisterEvent("ADDON_LOADED")
frame:RegisterEvent("PLAYER_LOGOUT")

frame:SetScript("OnEvent", function(self, event, arg1)
    if event == "ADDON_LOADED"  and arg1 == "MerlynsUI" then 
        if MinimapClusterDB == nil then 
            MinimapClusterDB = {}
        end
        if MinimapClusterDB.showMinimapCluster == nil then  
            MinimapClusterDB.showMinimapCluster = true
        end 
        MinimapCluster:SetShown(MinimapClusterDB.showMinimapCluster)

        settingsTable = {}
 
        MinimapCluster:SetShown(MinimapClusterDB.showMinimapCluster)

    end
end)

-- Note's so I don't forget the names V --

-- MinimapCluster:SetShown(MinimapClusterDB.showMinimapCluster)
        