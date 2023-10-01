SLASH_BAGBAR1, SLASH_BAGBAR2 = '/BagBar', '/BagBar';
function SlashCmdList.BAGBAR(msg, editBox)
    BagBarDB.showBagBar = not BagBarDB.showBagBar
    MainMenuBarBackpackButton:SetShown(BagBarDB.showBagBar)                                 
    BagBarExpandToggle:SetShown(BagBarDB.showBagBar)
    CharacterBag0Slot:SetShown(BagBarDB.showBagBar)
    CharacterBag1Slot:SetShown(BagBarDB.showBagBar)
    CharacterBag2Slot:SetShown(BagBarDB.showBagBar)
    CharacterBag3Slot:SetShown(BagBarDB.showBagBar)
    CharacterReagentBag0Slot:SetShown(BagBarDB.showBagBar)
end

local frame = CreateFrame("Frame")
frame:RegisterEvent("ADDON_LOADED")
frame:RegisterEvent("PLAYER_LOGOUT")

frame:SetScript("OnEvent", function(self, event, arg1)
    if event == "ADDON_LOADED"  and arg1 == "MerlynsUI" then 
        if BagBarDB == nil then 
            BagBarDB = {}
        end
        if BagBarDB.showBagBar == nil then 
            BagBarDB.showBagBar = true
        end 
        BagBarExpandToggle:SetShown(BagBarDB.showBagBar)
        MainMenuBarBackpackButton:SetShown(BagBarDB.showBagBar)                                 
        CharacterReagentBag0Slot:SetShown(BagBarDB.showBagBar)
        
        settingsTable = {}
 
        CharacterBag0Slot:SetShown(BagBarDB.showBagBar)
        CharacterBag1Slot:SetShown(BagBarDB.showBagBar)
        CharacterBag2Slot:SetShown(BagBarDB.showBagBar)
        CharacterBag3Slot:SetShown(BagBarDB.showBagBar)
  
    end
end)

-- Note's so I don't forget the names V --

-- MainMenuBarBackpackButton:Hide()
-- BagBarExpandToggle:Hide()
-- CharacterBag0Slot:Hide()
-- CharacterBag1Slot:Hide()
-- CharacterBag2Slot:Hide()
-- CharacterBag3Slot:Hide()
-- CharacterReagentBag0Slot:Hide()
