SLASH_MERLYNSUI, SLASH_MERLYNSUI = '/MerlynsUI', '/MerlynsUI';
function SlashCmdList.MerlynsUI(msg, editBox)
    BagBarDB.showBagBar = not BagBarDB.showBagBar
    MainMenuBarBackpackButton:SetShown(BagBarDB.showBagBar)                                 
    BagBarExpandToggle:SetShown(BagBarDB.showBagBar)
    CharacterBag0Slot:SetShown(BagBarDB.showBagBar)
    CharacterBag1Slot:SetShown(BagBarDB.showBagBar)
    CharacterBag2Slot:SetShown(BagBarDB.showBagBar)
    CharacterBag3Slot:SetShown(BagBarDB.showBagBar)
    CharacterReagentBag0Slot:SetShown(BagBarDB.showBagBar)
    QuickJoinToastButton:SetShown(QuickJoinToastButton.showQuickJoinToastButton)
    MicroMenu:SetShown(BagBarDB.showBagBar)
    CompactArenaFrame:SetShown(BagBarDB.showBagBar)
    BuffFrame:SetShown(BagBarDB.showBagBar)
    DebuffFrame:SetShown(BagBarDB.showBagBar)
    DurabilityFrame:SetShown(BagBarDB.showBagBar)
    EncounterBar:SetShown(BagBarDB.showBagBar)
    MinimapCluster:SetShown(BagBarDB.showBagBar)
    ObjectiveTrackerBlocksFrame:SetShown(BagBarDB.showBagBar)
    ObjectiveTrackerFrame.HeaderMenu:SetShown(BagBarDB.showBagBar)
    PartyFrame:SetShown(BagBarDB.showBagBar)
    QueueStatusButton:SetShown(BagBarDB.showBagBar)
    CompactRaidFrameContainer:SetShown(BagBarDB.showBagBar)
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
        MainMenuBarBackpackButton:SetShown(BagBarDB.showBagBar)                                 
        BagBarExpandToggle:SetShown(BagBarDB.showBagBar)
        CharacterBag0Slot:SetShown(BagBarDB.showBagBar)
        CharacterBag1Slot:SetShown(BagBarDB.showBagBar)
        CharacterBag2Slot:SetShown(BagBarDB.showBagBar)
        CharacterBag3Slot:SetShown(BagBarDB.showBagBar)
        CharacterReagentBag0Slot:SetShown(BagBarDB.showBagBar)
        QuickJoinToastButton:SetShown(QuickJoinToastButton.showQuickJoinToastButton)
        MicroMenu:SetShown(BagBarDB.showBagBar)
        CompactArenaFrame:SetShown(BagBarDB.showBagBar)
        BuffFrame:SetShown(BagBarDB.showBagBar)
        DebuffFrame:SetShown(BagBarDB.showBagBar)
        DurabilityFrame:SetShown(BagBarDB.showBagBar)
        EncounterBar:SetShown(BagBarDB.showBagBar)
        MinimapCluster:SetShown(BagBarDB.showBagBar)
        ObjectiveTrackerBlocksFrame:SetShown(BagBarDB.showBagBar)
        ObjectiveTrackerFrame.HeaderMenu:SetShown(BagBarDB.showBagBar)
        PartyFrame:SetShown(BagBarDB.showBagBar)
        QueueStatusButton:SetShown(BagBarDB.showBagBar)
        CompactRaidFrameContainer:SetShown(BagBarDB.showBagBar)
        
        settingsTable = {}
 
        MainMenuBarBackpackButton:SetShown(BagBarDB.showBagBar)                                 
        BagBarExpandToggle:SetShown(BagBarDB.showBagBar)
        CharacterBag0Slot:SetShown(BagBarDB.showBagBar)
        CharacterBag1Slot:SetShown(BagBarDB.showBagBar)
        CharacterBag2Slot:SetShown(BagBarDB.showBagBar)
        CharacterBag3Slot:SetShown(BagBarDB.showBagBar)
        CharacterReagentBag0Slot:SetShown(BagBarDB.showBagBar)
        QuickJoinToastButton:SetShown(QuickJoinToastButton.showQuickJoinToastButton)
        MicroMenu:SetShown(BagBarDB.showBagBar)
        CompactArenaFrame:SetShown(BagBarDB.showBagBar)
        BuffFrame:SetShown(BagBarDB.showBagBar)
        DebuffFrame:SetShown(BagBarDB.showBagBar)
        DurabilityFrame:SetShown(BagBarDB.showBagBar)
        EncounterBar:SetShown(BagBarDB.showBagBar)
        MinimapCluster:SetShown(BagBarDB.showBagBar)
        ObjectiveTrackerBlocksFrame:SetShown(BagBarDB.showBagBar)
        ObjectiveTrackerFrame.HeaderMenu:SetShown(BagBarDB.showBagBar)
        PartyFrame:SetShown(BagBarDB.showBagBar)
        QueueStatusButton:SetShown(BagBarDB.showBagBar)
        CompactRaidFrameContainer:SetShown(BagBarDB.showBagBar)
        
    end
end)

-- Note's so I don't forget the names V --

--MainMenuBarBackpackButton:SetShown(BagBarDB.showBagBar)                                 
--BagBarExpandToggle:SetShown(BagBarDB.showBagBar)
--CharacterBag0Slot:SetShown(BagBarDB.showBagBar)
--CharacterBag1Slot:SetShown(BagBarDB.showBagBar)
--CharacterBag2Slot:SetShown(BagBarDB.showBagBar)
--CharacterBag3Slot:SetShown(BagBarDB.showBagBar)
--CharacterReagentBag0Slot:SetShown(BagBarDB.showBagBar)
--QuickJoinToastButton:SetShown(QuickJoinToastButton.showQuickJoinToastButton)
--MicroMenu:SetShown(BagBarDB.showBagBar)
--CompactArenaFrame:SetShown(BagBarDB.showBagBar)
--BuffFrame:SetShown(BagBarDB.showBagBar)
--DebuffFrame:SetShown(BagBarDB.showBagBar)
--DurabilityFrame:SetShown(BagBarDB.showBagBar)
--EncounterBar:SetShown(BagBarDB.showBagBar)
--MinimapCluster:SetShown(BagBarDB.showBagBar)
--ObjectiveTrackerBlocksFrame:SetShown(BagBarDB.showBagBar)
--ObjectiveTrackerFrame.HeaderMenu:SetShown(BagBarDB.showBagBar)
--PlayerFrame:SetShown(BagBarDB.showBagBar)
--QueueStatusButton:SetShown(BagBarDB.showBagBar)
--CompactRaidFrameContainer:SetShown(BagBarDB.showBagBar)