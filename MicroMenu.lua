SLASH_MICROMENU1, SLASH_MICROMENU2 = '/MicroMenu', '/MicroMenu';
function SlashCmdList.MICROMENU(msg, editBox)
    MicroMenuDB.showMicroMenu = not MicroMenuDB.showMicroMenu
    MicroMenu:SetShown(MicroMenuDB.showMicroMenu)
end

local frame = CreateFrame("Frame")
frame:RegisterEvent("ADDON_LOADED")
frame:RegisterEvent("PLAYER_LOGOUT")

frame:SetScript("OnEvent", function(self, event, arg1)
    if event == "ADDON_LOADED"  and arg1 == "MerlynsUI" then 
        if MicroMenuDB == nil then 
            MicroMenuDB = {}
        end
        if MicroMenuDB.showMicroMenu == nil then 
            MicroMenuDB.showMicroMenu = true
        end
        MicroMenu:SetShown(MicroMenuDB.showMicroMenu)
    end
end)

-- Note's so I don't forget the names V --

-- MicroMenu:Hide()
