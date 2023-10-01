SLASH_HIDEENCOUNTERBAR1, SLASH_HIDEENCOUNTERBAR2 = '/HideEncounterBar', '/HideEncounterBar';
function SlashCmdList.HIDEENCOUNTERBAR(msg, editBox)
    EncounterBarDB.showEncounterBar = not EncounterBarDB.showEncounterBar
    EncounterBar:SetShown(EncounterBarDB.showEncounterBar)
end

local frame = CreateFrame("Frame")
frame:RegisterEvent("ADDON_LOADED")
frame:RegisterEvent("PLAYER_LOGOUT")

frame:SetScript("OnEvent", function(self, event, arg1)
    if event == "ADDON_LOADED"  and arg1 == "MerlynsUI" then 
        if EncounterBarDB == nil then 
            EncounterBarDB = {}
        end
        if EncounterBarDB.showEncounterBar == nil then  
            EncounterBarDB.showEncounterBar = true
        end 
        EncounterBar:SetShown(EncounterBarDB.showEncounterBar)

        settingsTable = {}
 
        EncounterBar:SetShown(EncounterBarDB.showEncounterBar)

    end
end)

-- Note's so I don't forget the names V --

-- EncounterBar:SetShown(EncounterBarDB.showEncounterBar)