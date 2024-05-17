function EEex_Actionbar_Hook_HasFullThieving(sprite)
    return sprite:getClass() ~= 5
    or EEex_GameObject_GetSelected():getActiveStats().m_nKit == 0x4000
end

function ArtificerActionbarListener(config, state)
   if 
      state == 5
      and EEex_GameObject_GetSelected():getActiveStats().m_nKit == 0x4000
      then
      EEex_Actionbar_SetButton(3, EEex_Actionbar_ButtonType.FIND_TRAPS)
      EEex_Actionbar_SetButton(4, EEex_Actionbar_ButtonType.THIEVING)
   end
end
EEex_Actionbar_AddListener(ArtificerActionbarListener)