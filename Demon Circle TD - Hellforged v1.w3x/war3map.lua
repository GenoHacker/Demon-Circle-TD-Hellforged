udg_I_Round = 0
udg_I_NumberOfCreeps = 0
udg_T_NextRound = nil
udg_TW_NextRound = nil
udg_I_Kills = __jarray(0)
udg_UT_UnitType = __jarray(0)
udg_LB_Info = nil
udg_Temp_Point = nil
udg_Temp_Point2 = nil
udg_Temp_Point3 = nil
udg_Temp_Point4 = nil
udg_Temp_Point5 = nil
udg_Temp_Point6 = nil
udg_Temp_Point7 = nil
udg_Temp_Point8 = nil
udg_Temp_Point1 = nil
udg_Zoom_Cam = __jarray(0)
udg_Temp_Integer = 0
udg_Integer_Spawncount = 0
gg_rct_Start1 = nil
gg_rct_Start2 = nil
gg_rct_Start3 = nil
gg_rct_Start4 = nil
gg_rct_Start5 = nil
gg_rct_Start6 = nil
gg_rct_Start7 = nil
gg_rct_Start8 = nil
gg_rct_CreepSpawn1 = nil
gg_rct_CreepSpawn2 = nil
gg_rct_CreepSpawn3 = nil
gg_rct_CreepSpawn4 = nil
gg_rct_CreepSpawn5 = nil
gg_rct_CreepSpawn6 = nil
gg_rct_CreepSpawn7 = nil
gg_rct_CreepSpawn8 = nil
gg_rct_Waypoint_1 = nil
gg_rct_Waypoint_3 = nil
gg_rct_Waypoint_5 = nil
gg_rct_Waypoint_7 = nil
gg_rct_Waypoint_2 = nil
gg_rct_Waypoint_4 = nil
gg_rct_Waypoint_6 = nil
gg_rct_Waypoint_8 = nil
gg_snd_PurgeTarget = nil
gg_snd_Wave_Air = nil
gg_snd_Wave_Immune = nil
gg_snd_Wave_Normal = nil
gg_snd_Wave_Hero = nil
gg_snd_Wave_Boss = nil
gg_snd_Score_Screen_Music = nil
gg_trg_Map_Initialization = nil
gg_trg_Starting_Locations = nil
gg_trg_Sell_Towers = nil
gg_trg_Leaderboard = nil
gg_trg_Next_Round = nil
gg_trg_Wave_Spawning = nil
gg_trg_Creep_Spawn_1 = nil
gg_trg_Creep_Spawn_2 = nil
gg_trg_Creep_Spawn_3 = nil
gg_trg_Creep_Spawn_4 = nil
gg_trg_Creep_Spawn_5 = nil
gg_trg_Creep_Spawn_6 = nil
gg_trg_Creep_Spawn_7 = nil
gg_trg_Creep_Spawn_8 = nil
gg_trg_Kill_Count = nil
gg_trg_Creep_Count = nil
gg_trg_Creep_Count_Remove = nil
gg_trg_Leaving_Players = nil
gg_trg_Remove_Dying_Unit_Heroes = nil
gg_trg_Camera_Zoom = nil
function InitGlobals()
    local i = 0
    udg_I_Round = 0
    udg_I_NumberOfCreeps = 0
    udg_T_NextRound = CreateTimer()
    i = 0
    while (true) do
        if ((i > 1)) then break end
        udg_I_Kills[i] = 0
        i = i + 1
    end
    i = 0
    while (true) do
        if ((i > 1)) then break end
        udg_Zoom_Cam[i] = 0
        i = i + 1
    end
    udg_Temp_Integer = 0
    udg_Integer_Spawncount = 15
end

function InitSounds()
    gg_snd_PurgeTarget = CreateSound("Abilities\\Spells\\Orc\\Purge\\PurgeTarget1.wav", false, false, true, 10, 10, "DefaultEAXON")
    SetSoundDuration(gg_snd_PurgeTarget, 2095)
    SetSoundChannel(gg_snd_PurgeTarget, 0)
    SetSoundVolume(gg_snd_PurgeTarget, -1)
    SetSoundPitch(gg_snd_PurgeTarget, 1.0)
    gg_snd_Wave_Air = CreateSound("Sound\\Music\\mp3Music\\Tension.mp3", false, false, false, 10, 10, "DefaultEAXON")
    SetSoundDuration(gg_snd_Wave_Air, 19527)
    SetSoundChannel(gg_snd_Wave_Air, 0)
    SetSoundVolume(gg_snd_Wave_Air, 127)
    SetSoundPitch(gg_snd_Wave_Air, 1.0)
    gg_snd_Wave_Immune = CreateSound("Sound\\Music\\mp3Music\\NightElfVictory.mp3", false, false, false, 10, 10, "DefaultEAXON")
    SetSoundDuration(gg_snd_Wave_Immune, 21983)
    SetSoundChannel(gg_snd_Wave_Immune, 0)
    SetSoundVolume(gg_snd_Wave_Immune, 127)
    SetSoundPitch(gg_snd_Wave_Immune, 1.2)
    gg_snd_Wave_Normal = CreateSound("Sound\\Music\\mp3Music\\OrcDefeat.mp3", false, false, false, 20, 10, "DefaultEAXON")
    SetSoundDuration(gg_snd_Wave_Normal, 39223)
    SetSoundChannel(gg_snd_Wave_Normal, 0)
    SetSoundVolume(gg_snd_Wave_Normal, 100)
    SetSoundPitch(gg_snd_Wave_Normal, 1.5)
    gg_snd_Wave_Hero = CreateSound("Sound\\Music\\mp3Music\\Doom.mp3", false, false, false, 10, 10, "DefaultEAXON")
    SetSoundDuration(gg_snd_Wave_Hero, 66103)
    SetSoundChannel(gg_snd_Wave_Hero, 0)
    SetSoundVolume(gg_snd_Wave_Hero, 127)
    SetSoundPitch(gg_snd_Wave_Hero, 1.0)
    gg_snd_Wave_Boss = CreateSound("Sound\\Music\\mp3Music\\Comradeship.mp3", false, false, false, 10, 10, "DefaultEAXON")
    SetSoundDuration(gg_snd_Wave_Boss, 124905)
    SetSoundChannel(gg_snd_Wave_Boss, 0)
    SetSoundVolume(gg_snd_Wave_Boss, 127)
    SetSoundPitch(gg_snd_Wave_Boss, 1.0)
    gg_snd_Score_Screen_Music = CreateSound("Score Screen Music.mp3", false, false, false, 10, 10, "DefaultEAXON")
    SetSoundDuration(gg_snd_Score_Screen_Music, 6791)
    SetSoundChannel(gg_snd_Score_Screen_Music, 0)
    SetSoundVolume(gg_snd_Score_Screen_Music, 127)
    SetSoundPitch(gg_snd_Score_Screen_Music, 1.0)
end

function CreateRegions()
    local we
    gg_rct_Start1 = Rect(-4480.0, 3712.0, -4224.0, 3968.0)
    gg_rct_Start2 = Rect(-2688.0, 4736.0, -2432.0, 4992.0)
    gg_rct_Start3 = Rect(-896.0, 3712.0, -640.0, 3968.0)
    gg_rct_Start4 = Rect(128.0, 1920.0, 384.0, 2176.0)
    gg_rct_Start5 = Rect(-896.0, 128.0, -640.0, 384.0)
    gg_rct_Start6 = Rect(-2688.0, -896.0, -2432.0, -640.0)
    gg_rct_Start7 = Rect(-4480.0, 128.0, -4224.0, 384.0)
    gg_rct_Start8 = Rect(-5504.0, 1920.0, -5248.0, 2176.0)
    gg_rct_CreepSpawn1 = Rect(-5888.0, 4992.0, -5504.0, 5376.0)
    gg_rct_CreepSpawn2 = Rect(-2816.0, 5888.0, -2304.0, 6400.0)
    gg_rct_CreepSpawn3 = Rect(384.0, 4960.0, 768.0, 5376.0)
    gg_rct_CreepSpawn4 = Rect(1280.0, 1792.0, 1792.0, 2304.0)
    gg_rct_CreepSpawn5 = Rect(384.0, -1280.0, 768.0, -864.0)
    gg_rct_CreepSpawn6 = Rect(-2816.0, -2304.0, -2304.0, -1792.0)
    gg_rct_CreepSpawn7 = Rect(-5888.0, -1280.0, -5504.0, -896.0)
    gg_rct_CreepSpawn8 = Rect(-6912.0, 1792.0, -6400.0, 2304.0)
    gg_rct_Waypoint_1 = Rect(-4864.0, 4224.0, -4736.0, 4352.0)
    gg_rct_Waypoint_3 = Rect(-384.0, 4224.0, -256.0, 4352.0)
    gg_rct_Waypoint_5 = Rect(-384.0, -256.0, -256.0, -128.0)
    gg_rct_Waypoint_7 = Rect(-4864.0, -256.0, -4736.0, -128.0)
    gg_rct_Waypoint_2 = Rect(-2624.0, 5312.0, -2496.0, 5440.0)
    gg_rct_Waypoint_4 = Rect(704.0, 1984.0, 832.0, 2112.0)
    gg_rct_Waypoint_6 = Rect(-2624.0, -1344.0, -2496.0, -1216.0)
    gg_rct_Waypoint_8 = Rect(-5952.0, 1984.0, -5824.0, 2112.0)
end

function Trig_Map_Initialization_Func001A()
    SetPlayerStateBJ(GetEnumPlayer(), PLAYER_STATE_RESOURCE_GOLD, 50)
    CreateFogModifierRectBJ(true, GetEnumPlayer(), FOG_OF_WAR_VISIBLE, GetPlayableMapRect())
end

function Trig_Map_Initialization_Actions()
    ForForce(GetPlayersAll(), Trig_Map_Initialization_Func001A)
    SetPlayerFlagBJ(PLAYER_STATE_GIVES_BOUNTY, true, Player(10))
    SetPlayerFlagBJ(PLAYER_STATE_GIVES_BOUNTY, true, Player(11))
    DisplayTimedTextToForce(GetPlayersAll(), 40.00, "TRIGSTR_479")
    DisplayTimedTextToForce(GetPlayersAll(), 45.00, "TRIGSTR_457")
    SetTerrainFogExBJ(0, 2750.00, 10000.00, 0.00, 75.00, 100.00, 85.00)
    UseTimeOfDayBJ(false)
    CreateQuestBJ(bj_QUESTTYPE_REQ_DISCOVERED, "TRIGSTR_482", "TRIGSTR_483", "ReplaceableTextures\\CommandButtons\\BTNGatherGold.blp")
    CreateQuestBJ(bj_QUESTTYPE_OPT_DISCOVERED, "TRIGSTR_539", "TRIGSTR_540", "ReplaceableTextures\\CommandButtons\\BTNQuest_Scroll.blp")
    CreateQuestBJ(bj_QUESTTYPE_OPT_DISCOVERED, "TRIGSTR_612", "TRIGSTR_613", "ReplaceableTextures\\CommandButtons\\BTNQuest_Scroll.blp")
    udg_UT_UnitType[1] = FourCC("h009")
    udg_UT_UnitType[2] = FourCC("h000")
    udg_UT_UnitType[3] = FourCC("h001")
    udg_UT_UnitType[4] = FourCC("h002")
    udg_UT_UnitType[5] = FourCC("h003")
    udg_UT_UnitType[6] = FourCC("h004")
    udg_UT_UnitType[7] = FourCC("h005")
    udg_UT_UnitType[8] = FourCC("h006")
    udg_UT_UnitType[9] = FourCC("h007")
    udg_UT_UnitType[10] = FourCC("h008")
    udg_UT_UnitType[11] = FourCC("h00J")
    udg_UT_UnitType[12] = FourCC("h00A")
    udg_UT_UnitType[13] = FourCC("h00B")
    udg_UT_UnitType[14] = FourCC("h00C")
    udg_UT_UnitType[15] = FourCC("h00D")
    udg_UT_UnitType[16] = FourCC("h028")
    udg_UT_UnitType[17] = FourCC("h00F")
    udg_UT_UnitType[18] = FourCC("h00G")
    udg_UT_UnitType[19] = FourCC("h00H")
    udg_UT_UnitType[20] = FourCC("h00I")
    udg_UT_UnitType[21] = FourCC("h00T")
    udg_UT_UnitType[22] = FourCC("h00K")
    udg_UT_UnitType[23] = FourCC("h00L")
    udg_UT_UnitType[24] = FourCC("h00M")
    udg_UT_UnitType[25] = FourCC("h00N")
    udg_UT_UnitType[26] = FourCC("h00O")
    udg_UT_UnitType[27] = FourCC("h00P")
    udg_UT_UnitType[28] = FourCC("h00Q")
    udg_UT_UnitType[29] = FourCC("h00R")
    udg_UT_UnitType[30] = FourCC("h00S")
    udg_UT_UnitType[31] = FourCC("h013")
    udg_UT_UnitType[32] = FourCC("h00U")
    udg_UT_UnitType[33] = FourCC("h00V")
    udg_UT_UnitType[34] = FourCC("h00W")
    udg_UT_UnitType[35] = FourCC("h00X")
    udg_UT_UnitType[36] = FourCC("h00Y")
    udg_UT_UnitType[37] = FourCC("h00Z")
    udg_UT_UnitType[38] = FourCC("h010")
    udg_UT_UnitType[39] = FourCC("h011")
    udg_UT_UnitType[40] = FourCC("h012")
    udg_UT_UnitType[41] = FourCC("h01D")
    udg_UT_UnitType[42] = FourCC("h014")
    udg_UT_UnitType[43] = FourCC("h015")
    udg_UT_UnitType[44] = FourCC("h016")
    udg_UT_UnitType[45] = FourCC("h017")
    udg_UT_UnitType[46] = FourCC("h018")
    udg_UT_UnitType[47] = FourCC("h019")
    udg_UT_UnitType[48] = FourCC("h01A")
    udg_UT_UnitType[49] = FourCC("h01B")
    udg_UT_UnitType[50] = FourCC("h027")
    udg_UT_UnitType[51] = FourCC("h01C")
    udg_UT_UnitType[52] = FourCC("h01E")
    udg_UT_UnitType[53] = FourCC("h01F")
    udg_UT_UnitType[54] = FourCC("h01G")
    udg_UT_UnitType[55] = FourCC("h01H")
    udg_UT_UnitType[56] = FourCC("h01I")
    udg_UT_UnitType[57] = FourCC("h01J")
    udg_UT_UnitType[58] = FourCC("h01K")
    udg_UT_UnitType[59] = FourCC("h01L")
    udg_UT_UnitType[60] = FourCC("h01M")
    udg_UT_UnitType[61] = FourCC("h01N")
    udg_UT_UnitType[62] = FourCC("h01O")
    udg_UT_UnitType[63] = FourCC("h01P")
    udg_UT_UnitType[64] = FourCC("h01Q")
    udg_UT_UnitType[65] = FourCC("h01R")
    udg_UT_UnitType[66] = FourCC("h01S")
    udg_UT_UnitType[67] = FourCC("h01T")
    udg_UT_UnitType[68] = FourCC("h01U")
    udg_UT_UnitType[69] = FourCC("h01V")
    udg_UT_UnitType[70] = FourCC("h01W")
    udg_UT_UnitType[71] = FourCC("h01X")
    udg_UT_UnitType[72] = FourCC("h01Y")
    udg_UT_UnitType[73] = FourCC("h01Z")
    udg_UT_UnitType[74] = FourCC("h020")
    udg_UT_UnitType[75] = FourCC("h021")
    udg_UT_UnitType[76] = FourCC("h022")
    udg_UT_UnitType[77] = FourCC("h023")
    udg_UT_UnitType[78] = FourCC("h024")
    udg_UT_UnitType[79] = FourCC("h025")
    udg_UT_UnitType[80] = FourCC("h026")
end

function InitTrig_Map_Initialization()
    gg_trg_Map_Initialization = CreateTrigger()
    TriggerAddAction(gg_trg_Map_Initialization, Trig_Map_Initialization_Actions)
end

function Trig_Starting_Locations_Func002Func001C()
    if (not (GetPlayerSlotState(ConvertedPlayer(GetForLoopIndexA())) == PLAYER_SLOT_STATE_PLAYING)) then
        return false
    end
    return true
end

function Trig_Starting_Locations_Actions()
    bj_forLoopAIndex = 1
    bj_forLoopAIndexEnd = 8
    while (true) do
        if (bj_forLoopAIndex > bj_forLoopAIndexEnd) then break end
        if (Trig_Starting_Locations_Func002Func001C()) then
            udg_Temp_Point = GetPlayerStartLocationLoc(ConvertedPlayer(GetForLoopIndexA()))
            CreateNUnitsAtLoc(1, FourCC("u005"), ConvertedPlayer(GetForLoopIndexA()), udg_Temp_Point, bj_UNIT_FACING)
                        RemoveLocation(udg_Temp_Point)
        else
        end
        bj_forLoopAIndex = bj_forLoopAIndex + 1
    end
    StartTimerBJ(udg_T_NextRound, false, 30)
    CreateTimerDialogBJ(GetLastCreatedTimerBJ(), ("Round " .. (I2S((udg_I_Round + 1)) .. " in:")))
    TimerDialogDisplayBJ(true, GetLastCreatedTimerDialogBJ())
    udg_TW_NextRound = GetLastCreatedTimerDialogBJ()
end

function InitTrig_Starting_Locations()
    gg_trg_Starting_Locations = CreateTrigger()
    TriggerRegisterTimerEventSingle(gg_trg_Starting_Locations, 0.00)
    TriggerAddAction(gg_trg_Starting_Locations, Trig_Starting_Locations_Actions)
end

function Trig_Sell_Towers_Conditions()
    if (not (GetSpellAbilityId() == FourCC("A000"))) then
        return false
    end
    return true
end

function Trig_Sell_Towers_Actions()
    KillUnit(GetTriggerUnit())
    AddSpecialEffectLocBJ(GetUnitLoc(GetTriggerUnit()), "Abilities\\Spells\\Other\\Awaken\\Awaken.mdl")
    DestroyEffectBJ(GetLastCreatedEffectBJ())
    DisplayTextToForce(GetForceOfPlayer(GetOwningPlayer(GetTriggerUnit())), ("|cffffcc00You get " .. (I2S(GetUnitPointValue(GetTriggerUnit())) .. (" gold for selling a " .. (GetUnitName(GetTriggerUnit()) .. ".|r")))))
    AdjustPlayerStateBJ(GetUnitPointValue(GetTriggerUnit()), GetOwningPlayer(GetTriggerUnit()), PLAYER_STATE_RESOURCE_GOLD)
end

function InitTrig_Sell_Towers()
    gg_trg_Sell_Towers = CreateTrigger()
    TriggerRegisterAnyUnitEventBJ(gg_trg_Sell_Towers, EVENT_PLAYER_UNIT_SPELL_CAST)
    TriggerAddCondition(gg_trg_Sell_Towers, Condition(Trig_Sell_Towers_Conditions))
    TriggerAddAction(gg_trg_Sell_Towers, Trig_Sell_Towers_Actions)
end

function Trig_Leaderboard_Func003Func001C()
    if (not (GetPlayerSlotState(ConvertedPlayer(GetForLoopIndexA())) == PLAYER_SLOT_STATE_PLAYING)) then
        return false
    end
    return true
end

function Trig_Leaderboard_Actions()
    CreateLeaderboardBJ(GetPlayersAll(), "TRIGSTR_038")
    udg_LB_Info = GetLastCreatedLeaderboard()
    bj_forLoopAIndex = 1
    bj_forLoopAIndexEnd = 8
    while (true) do
        if (bj_forLoopAIndex > bj_forLoopAIndexEnd) then break end
        if (Trig_Leaderboard_Func003Func001C()) then
            LeaderboardAddItemBJ(ConvertedPlayer(GetForLoopIndexA()), udg_LB_Info, GetPlayerName(ConvertedPlayer(GetForLoopIndexA())), udg_I_Kills[GetConvertedPlayerId(ConvertedPlayer(GetForLoopIndexA()))])
        else
            LeaderboardAddItemBJ(ConvertedPlayer(GetForLoopIndexA()), udg_LB_Info, "TRIGSTR_116", udg_I_Kills[GetConvertedPlayerId(ConvertedPlayer(GetForLoopIndexA()))])
        end
        bj_forLoopAIndex = bj_forLoopAIndex + 1
    end
    LeaderboardAddItemBJ(Player(9), GetLastCreatedLeaderboard(), "TRIGSTR_040", udg_I_Round)
    LeaderboardAddItemBJ(Player(8), GetLastCreatedLeaderboard(), "TRIGSTR_039", udg_I_NumberOfCreeps)
end

function InitTrig_Leaderboard()
    gg_trg_Leaderboard = CreateTrigger()
    TriggerRegisterTimerEventSingle(gg_trg_Leaderboard, 0.00)
    TriggerAddAction(gg_trg_Leaderboard, Trig_Leaderboard_Actions)
end

function Trig_Next_Round_Func001Func003A()
    CustomVictoryBJ(GetEnumPlayer(), true, true)
end

function Trig_Next_Round_Func001C()
    if (not (udg_I_Round == 80)) then
        return false
    end
    return true
end

function Trig_Next_Round_Func008C()
    if (not (udg_I_Round ~= 80)) then
        return false
    end
    return true
end

function Trig_Next_Round_Actions()
    if (Trig_Next_Round_Func001C()) then
        DisplayTextToForce(GetPlayersAll(), "TRIGSTR_063")
        TriggerSleepAction(5.00)
        ForForce(GetPlayersByMapControl(MAP_CONTROL_USER), Trig_Next_Round_Func001Func003A)
        DestroyTimerDialogBJ(udg_TW_NextRound)
        return 
    else
    end
    udg_I_Round = (udg_I_Round + 1)
    DisplayTextToForce(GetPlayersAll(), ("|cffffcc00Level " .. (I2S(udg_I_Round) .. "!|r")))
    LeaderboardSetPlayerItemValueBJ(Player(9), GetLastCreatedLeaderboard(), udg_I_Round)
    udg_Integer_Spawncount = 0
    DestroyTimerDialogBJ(udg_TW_NextRound)
    StartTimerBJ(udg_T_NextRound, false, 30.00)
    if (Trig_Next_Round_Func008C()) then
        CreateTimerDialogBJ(GetLastCreatedTimerBJ(), ("Round " .. (I2S((udg_I_Round + 1)) .. " in:")))
        TimerDialogDisplayBJ(true, GetLastCreatedTimerDialogBJ())
        udg_TW_NextRound = GetLastCreatedTimerDialogBJ()
    else
        CreateTimerDialogBJ(GetLastCreatedTimerBJ(), "TRIGSTR_220")
        TimerDialogDisplayBJ(true, GetLastCreatedTimerDialogBJ())
        udg_TW_NextRound = GetLastCreatedTimerDialogBJ()
    end
end

function InitTrig_Next_Round()
    gg_trg_Next_Round = CreateTrigger()
    TriggerRegisterTimerExpireEventBJ(gg_trg_Next_Round, udg_T_NextRound)
    TriggerAddAction(gg_trg_Next_Round, Trig_Next_Round_Actions)
end

function Trig_Wave_Spawning_Conditions()
    if (not (udg_Integer_Spawncount <= 14)) then
        return false
    end
    return true
end

function Trig_Wave_Spawning_Func004C()
    if (not (GetPlayerSlotState(Player(0)) == PLAYER_SLOT_STATE_PLAYING)) then
        return false
    end
    return true
end

function Trig_Wave_Spawning_Func007C()
    if (not (GetPlayerSlotState(Player(1)) == PLAYER_SLOT_STATE_PLAYING)) then
        return false
    end
    return true
end

function Trig_Wave_Spawning_Func010C()
    if (not (GetPlayerSlotState(Player(2)) == PLAYER_SLOT_STATE_PLAYING)) then
        return false
    end
    return true
end

function Trig_Wave_Spawning_Func013C()
    if (not (GetPlayerSlotState(Player(3)) == PLAYER_SLOT_STATE_PLAYING)) then
        return false
    end
    return true
end

function Trig_Wave_Spawning_Func016C()
    if (not (GetPlayerSlotState(Player(4)) == PLAYER_SLOT_STATE_PLAYING)) then
        return false
    end
    return true
end

function Trig_Wave_Spawning_Func019C()
    if (not (GetPlayerSlotState(Player(5)) == PLAYER_SLOT_STATE_PLAYING)) then
        return false
    end
    return true
end

function Trig_Wave_Spawning_Func022C()
    if (not (GetPlayerSlotState(Player(6)) == PLAYER_SLOT_STATE_PLAYING)) then
        return false
    end
    return true
end

function Trig_Wave_Spawning_Func025C()
    if (not (GetPlayerSlotState(Player(7)) == PLAYER_SLOT_STATE_PLAYING)) then
        return false
    end
    return true
end

function Trig_Wave_Spawning_Actions()
    udg_Integer_Spawncount = (udg_Integer_Spawncount + 1)
    udg_Temp_Point1 = GetRectCenter(gg_rct_CreepSpawn1)
    if (Trig_Wave_Spawning_Func004C()) then
        CreateNUnitsAtLoc(1, udg_UT_UnitType[udg_I_Round], Player(11), udg_Temp_Point1, bj_UNIT_FACING)
        UnitAddAbilityBJ(FourCC("Aeth"), GetLastCreatedUnit())
    else
    end
        RemoveLocation(udg_Temp_Point1)
    udg_Temp_Point2 = GetRectCenter(gg_rct_CreepSpawn2)
    if (Trig_Wave_Spawning_Func007C()) then
        CreateNUnitsAtLoc(1, udg_UT_UnitType[udg_I_Round], Player(11), udg_Temp_Point2, bj_UNIT_FACING)
        UnitAddAbilityBJ(FourCC("Aeth"), GetLastCreatedUnit())
    else
    end
        RemoveLocation(udg_Temp_Point2)
    udg_Temp_Point3 = GetRectCenter(gg_rct_CreepSpawn3)
    if (Trig_Wave_Spawning_Func010C()) then
        CreateNUnitsAtLoc(1, udg_UT_UnitType[udg_I_Round], Player(11), udg_Temp_Point3, bj_UNIT_FACING)
        UnitAddAbilityBJ(FourCC("Aeth"), GetLastCreatedUnit())
    else
    end
        RemoveLocation(udg_Temp_Point3)
    udg_Temp_Point4 = GetRectCenter(gg_rct_CreepSpawn4)
    if (Trig_Wave_Spawning_Func013C()) then
        CreateNUnitsAtLoc(1, udg_UT_UnitType[udg_I_Round], Player(11), udg_Temp_Point4, bj_UNIT_FACING)
        UnitAddAbilityBJ(FourCC("Aeth"), GetLastCreatedUnit())
    else
    end
        RemoveLocation(udg_Temp_Point4)
    udg_Temp_Point5 = GetRectCenter(gg_rct_CreepSpawn5)
    if (Trig_Wave_Spawning_Func016C()) then
        CreateNUnitsAtLoc(1, udg_UT_UnitType[udg_I_Round], Player(10), udg_Temp_Point5, bj_UNIT_FACING)
        UnitAddAbilityBJ(FourCC("Aeth"), GetLastCreatedUnit())
    else
    end
        RemoveLocation(udg_Temp_Point5)
    udg_Temp_Point6 = GetRectCenter(gg_rct_CreepSpawn6)
    if (Trig_Wave_Spawning_Func019C()) then
        CreateNUnitsAtLoc(1, udg_UT_UnitType[udg_I_Round], Player(10), udg_Temp_Point6, bj_UNIT_FACING)
        UnitAddAbilityBJ(FourCC("Aeth"), GetLastCreatedUnit())
    else
    end
        RemoveLocation(udg_Temp_Point6)
    udg_Temp_Point7 = GetRectCenter(gg_rct_CreepSpawn7)
    if (Trig_Wave_Spawning_Func022C()) then
        CreateNUnitsAtLoc(1, udg_UT_UnitType[udg_I_Round], Player(10), udg_Temp_Point7, bj_UNIT_FACING)
        UnitAddAbilityBJ(FourCC("Aeth"), GetLastCreatedUnit())
    else
    end
        RemoveLocation(udg_Temp_Point7)
    udg_Temp_Point8 = GetRectCenter(gg_rct_CreepSpawn8)
    if (Trig_Wave_Spawning_Func025C()) then
        CreateNUnitsAtLoc(1, udg_UT_UnitType[udg_I_Round], Player(10), udg_Temp_Point8, bj_UNIT_FACING)
        UnitAddAbilityBJ(FourCC("Aeth"), GetLastCreatedUnit())
    else
    end
        RemoveLocation(udg_Temp_Point8)
end

function InitTrig_Wave_Spawning()
    gg_trg_Wave_Spawning = CreateTrigger()
    TriggerRegisterTimerEventPeriodic(gg_trg_Wave_Spawning, 0.25)
    TriggerAddCondition(gg_trg_Wave_Spawning, Condition(Trig_Wave_Spawning_Conditions))
    TriggerAddAction(gg_trg_Wave_Spawning, Trig_Wave_Spawning_Actions)
end

function Trig_Creep_Spawn_1_Func004C()
    if (GetOwningPlayer(GetTriggerUnit()) == Player(11)) then
        return true
    end
    if (GetOwningPlayer(GetTriggerUnit()) == Player(10)) then
        return true
    end
    return false
end

function Trig_Creep_Spawn_1_Conditions()
    if (not Trig_Creep_Spawn_1_Func004C()) then
        return false
    end
    return true
end

function Trig_Creep_Spawn_1_Actions()
    udg_Temp_Point1 = GetRectCenter(gg_rct_Waypoint_1)
    IssuePointOrderLocBJ(GetTriggerUnit(), "move", udg_Temp_Point1)
        RemoveLocation(udg_Temp_Point1)
end

function InitTrig_Creep_Spawn_1()
    gg_trg_Creep_Spawn_1 = CreateTrigger()
    TriggerRegisterEnterRectSimple(gg_trg_Creep_Spawn_1, gg_rct_CreepSpawn1)
    TriggerRegisterEnterRectSimple(gg_trg_Creep_Spawn_1, gg_rct_Waypoint_8)
    TriggerAddCondition(gg_trg_Creep_Spawn_1, Condition(Trig_Creep_Spawn_1_Conditions))
    TriggerAddAction(gg_trg_Creep_Spawn_1, Trig_Creep_Spawn_1_Actions)
end

function Trig_Creep_Spawn_2_Func004C()
    if (GetOwningPlayer(GetTriggerUnit()) == Player(11)) then
        return true
    end
    if (GetOwningPlayer(GetTriggerUnit()) == Player(10)) then
        return true
    end
    return false
end

function Trig_Creep_Spawn_2_Conditions()
    if (not Trig_Creep_Spawn_2_Func004C()) then
        return false
    end
    return true
end

function Trig_Creep_Spawn_2_Actions()
    udg_Temp_Point2 = GetRectCenter(gg_rct_Waypoint_2)
    IssuePointOrderLocBJ(GetTriggerUnit(), "move", udg_Temp_Point2)
        RemoveLocation(udg_Temp_Point2)
end

function InitTrig_Creep_Spawn_2()
    gg_trg_Creep_Spawn_2 = CreateTrigger()
    TriggerRegisterEnterRectSimple(gg_trg_Creep_Spawn_2, gg_rct_CreepSpawn2)
    TriggerRegisterEnterRectSimple(gg_trg_Creep_Spawn_2, gg_rct_Waypoint_1)
    TriggerAddCondition(gg_trg_Creep_Spawn_2, Condition(Trig_Creep_Spawn_2_Conditions))
    TriggerAddAction(gg_trg_Creep_Spawn_2, Trig_Creep_Spawn_2_Actions)
end

function Trig_Creep_Spawn_3_Func004C()
    if (GetOwningPlayer(GetTriggerUnit()) == Player(11)) then
        return true
    end
    if (GetOwningPlayer(GetTriggerUnit()) == Player(10)) then
        return true
    end
    return false
end

function Trig_Creep_Spawn_3_Conditions()
    if (not Trig_Creep_Spawn_3_Func004C()) then
        return false
    end
    return true
end

function Trig_Creep_Spawn_3_Actions()
    udg_Temp_Point3 = GetRectCenter(gg_rct_Waypoint_3)
    IssuePointOrderLocBJ(GetTriggerUnit(), "move", udg_Temp_Point3)
        RemoveLocation(udg_Temp_Point3)
end

function InitTrig_Creep_Spawn_3()
    gg_trg_Creep_Spawn_3 = CreateTrigger()
    TriggerRegisterEnterRectSimple(gg_trg_Creep_Spawn_3, gg_rct_CreepSpawn3)
    TriggerRegisterEnterRectSimple(gg_trg_Creep_Spawn_3, gg_rct_Waypoint_2)
    TriggerAddCondition(gg_trg_Creep_Spawn_3, Condition(Trig_Creep_Spawn_3_Conditions))
    TriggerAddAction(gg_trg_Creep_Spawn_3, Trig_Creep_Spawn_3_Actions)
end

function Trig_Creep_Spawn_4_Func004C()
    if (GetOwningPlayer(GetTriggerUnit()) == Player(11)) then
        return true
    end
    if (GetOwningPlayer(GetTriggerUnit()) == Player(10)) then
        return true
    end
    return false
end

function Trig_Creep_Spawn_4_Conditions()
    if (not Trig_Creep_Spawn_4_Func004C()) then
        return false
    end
    return true
end

function Trig_Creep_Spawn_4_Actions()
    udg_Temp_Point4 = GetRectCenter(gg_rct_Waypoint_4)
    IssuePointOrderLocBJ(GetTriggerUnit(), "move", udg_Temp_Point4)
        RemoveLocation(udg_Temp_Point4)
end

function InitTrig_Creep_Spawn_4()
    gg_trg_Creep_Spawn_4 = CreateTrigger()
    TriggerRegisterEnterRectSimple(gg_trg_Creep_Spawn_4, gg_rct_CreepSpawn4)
    TriggerRegisterEnterRectSimple(gg_trg_Creep_Spawn_4, gg_rct_Waypoint_3)
    TriggerAddCondition(gg_trg_Creep_Spawn_4, Condition(Trig_Creep_Spawn_4_Conditions))
    TriggerAddAction(gg_trg_Creep_Spawn_4, Trig_Creep_Spawn_4_Actions)
end

function Trig_Creep_Spawn_5_Func004C()
    if (GetOwningPlayer(GetTriggerUnit()) == Player(11)) then
        return true
    end
    if (GetOwningPlayer(GetTriggerUnit()) == Player(10)) then
        return true
    end
    return false
end

function Trig_Creep_Spawn_5_Conditions()
    if (not Trig_Creep_Spawn_5_Func004C()) then
        return false
    end
    return true
end

function Trig_Creep_Spawn_5_Actions()
    udg_Temp_Point5 = GetRectCenter(gg_rct_Waypoint_5)
    IssuePointOrderLocBJ(GetTriggerUnit(), "move", udg_Temp_Point5)
        RemoveLocation(udg_Temp_Point5)
end

function InitTrig_Creep_Spawn_5()
    gg_trg_Creep_Spawn_5 = CreateTrigger()
    TriggerRegisterEnterRectSimple(gg_trg_Creep_Spawn_5, gg_rct_CreepSpawn5)
    TriggerRegisterEnterRectSimple(gg_trg_Creep_Spawn_5, gg_rct_Waypoint_4)
    TriggerAddCondition(gg_trg_Creep_Spawn_5, Condition(Trig_Creep_Spawn_5_Conditions))
    TriggerAddAction(gg_trg_Creep_Spawn_5, Trig_Creep_Spawn_5_Actions)
end

function Trig_Creep_Spawn_6_Func004C()
    if (GetOwningPlayer(GetTriggerUnit()) == Player(11)) then
        return true
    end
    if (GetOwningPlayer(GetTriggerUnit()) == Player(10)) then
        return true
    end
    return false
end

function Trig_Creep_Spawn_6_Conditions()
    if (not Trig_Creep_Spawn_6_Func004C()) then
        return false
    end
    return true
end

function Trig_Creep_Spawn_6_Actions()
    udg_Temp_Point6 = GetRectCenter(gg_rct_Waypoint_6)
    IssuePointOrderLocBJ(GetTriggerUnit(), "move", udg_Temp_Point6)
        RemoveLocation(udg_Temp_Point6)
end

function InitTrig_Creep_Spawn_6()
    gg_trg_Creep_Spawn_6 = CreateTrigger()
    TriggerRegisterEnterRectSimple(gg_trg_Creep_Spawn_6, gg_rct_CreepSpawn6)
    TriggerRegisterEnterRectSimple(gg_trg_Creep_Spawn_6, gg_rct_Waypoint_5)
    TriggerAddCondition(gg_trg_Creep_Spawn_6, Condition(Trig_Creep_Spawn_6_Conditions))
    TriggerAddAction(gg_trg_Creep_Spawn_6, Trig_Creep_Spawn_6_Actions)
end

function Trig_Creep_Spawn_7_Func004C()
    if (GetOwningPlayer(GetTriggerUnit()) == Player(11)) then
        return true
    end
    if (GetOwningPlayer(GetTriggerUnit()) == Player(10)) then
        return true
    end
    return false
end

function Trig_Creep_Spawn_7_Conditions()
    if (not Trig_Creep_Spawn_7_Func004C()) then
        return false
    end
    return true
end

function Trig_Creep_Spawn_7_Actions()
    udg_Temp_Point7 = GetRectCenter(gg_rct_Waypoint_7)
    IssuePointOrderLocBJ(GetTriggerUnit(), "move", udg_Temp_Point7)
        RemoveLocation(udg_Temp_Point7)
end

function InitTrig_Creep_Spawn_7()
    gg_trg_Creep_Spawn_7 = CreateTrigger()
    TriggerRegisterEnterRectSimple(gg_trg_Creep_Spawn_7, gg_rct_CreepSpawn7)
    TriggerRegisterEnterRectSimple(gg_trg_Creep_Spawn_7, gg_rct_Waypoint_6)
    TriggerAddCondition(gg_trg_Creep_Spawn_7, Condition(Trig_Creep_Spawn_7_Conditions))
    TriggerAddAction(gg_trg_Creep_Spawn_7, Trig_Creep_Spawn_7_Actions)
end

function Trig_Creep_Spawn_8_Func004C()
    if (GetOwningPlayer(GetTriggerUnit()) == Player(11)) then
        return true
    end
    if (GetOwningPlayer(GetTriggerUnit()) == Player(10)) then
        return true
    end
    return false
end

function Trig_Creep_Spawn_8_Conditions()
    if (not Trig_Creep_Spawn_8_Func004C()) then
        return false
    end
    return true
end

function Trig_Creep_Spawn_8_Actions()
    udg_Temp_Point8 = GetRectCenter(gg_rct_Waypoint_8)
    IssuePointOrderLocBJ(GetTriggerUnit(), "move", udg_Temp_Point8)
        RemoveLocation(udg_Temp_Point8)
end

function InitTrig_Creep_Spawn_8()
    gg_trg_Creep_Spawn_8 = CreateTrigger()
    TriggerRegisterEnterRectSimple(gg_trg_Creep_Spawn_8, gg_rct_CreepSpawn8)
    TriggerRegisterEnterRectSimple(gg_trg_Creep_Spawn_8, gg_rct_Waypoint_7)
    TriggerAddCondition(gg_trg_Creep_Spawn_8, Condition(Trig_Creep_Spawn_8_Conditions))
    TriggerAddAction(gg_trg_Creep_Spawn_8, Trig_Creep_Spawn_8_Actions)
end

function Trig_Kill_Count_Conditions()
    if (not (GetOwningPlayer(GetTriggerUnit()) == Player(11))) then
        return false
    end
    return true
end

function Trig_Kill_Count_Func001Func001C()
    if (GetOwningPlayer(GetTriggerUnit()) == Player(10)) then
        return true
    end
    if (GetOwningPlayer(GetTriggerUnit()) == Player(11)) then
        return true
    end
    return false
end

function Trig_Kill_Count_Func001C()
    if (not Trig_Kill_Count_Func001Func001C()) then
        return false
    end
    return true
end

function Trig_Kill_Count_Actions()
    if (Trig_Kill_Count_Func001C()) then
        LeaderboardSetPlayerItemValueBJ(GetOwningPlayer(GetKillingUnitBJ()), udg_LB_Info, udg_I_Kills[GetConvertedPlayerId(GetOwningPlayer(GetKillingUnitBJ()))])
        udg_I_Kills[GetConvertedPlayerId(GetOwningPlayer(GetKillingUnitBJ()))] = (udg_I_Kills[GetConvertedPlayerId(GetOwningPlayer(GetKillingUnitBJ()))] + 1)
    else
    end
end

function InitTrig_Kill_Count()
    gg_trg_Kill_Count = CreateTrigger()
    TriggerRegisterAnyUnitEventBJ(gg_trg_Kill_Count, EVENT_PLAYER_UNIT_DEATH)
    TriggerAddCondition(gg_trg_Kill_Count, Condition(Trig_Kill_Count_Conditions))
    TriggerAddAction(gg_trg_Kill_Count, Trig_Kill_Count_Actions)
end

function Trig_Creep_Count_Func011Func001A()
    CustomDefeatBJ(GetEnumPlayer(), "TRIGSTR_041")
end

function Trig_Creep_Count_Func011C()
    if (not (udg_I_NumberOfCreeps == 250)) then
        return false
    end
    return true
end

function Trig_Creep_Count_Actions()
    udg_I_NumberOfCreeps = (udg_I_NumberOfCreeps + 1)
    LeaderboardSetPlayerItemValueBJ(Player(8), udg_LB_Info, udg_I_NumberOfCreeps)
    if (Trig_Creep_Count_Func011C()) then
        ForForce(GetPlayersByMapControl(MAP_CONTROL_USER), Trig_Creep_Count_Func011Func001A)
    else
    end
end

function InitTrig_Creep_Count()
    gg_trg_Creep_Count = CreateTrigger()
    TriggerRegisterLeaveRectSimple(gg_trg_Creep_Count, gg_rct_CreepSpawn1)
    TriggerRegisterLeaveRectSimple(gg_trg_Creep_Count, gg_rct_CreepSpawn2)
    TriggerRegisterLeaveRectSimple(gg_trg_Creep_Count, gg_rct_CreepSpawn3)
    TriggerRegisterLeaveRectSimple(gg_trg_Creep_Count, gg_rct_CreepSpawn4)
    TriggerRegisterLeaveRectSimple(gg_trg_Creep_Count, gg_rct_CreepSpawn5)
    TriggerRegisterLeaveRectSimple(gg_trg_Creep_Count, gg_rct_CreepSpawn6)
    TriggerRegisterLeaveRectSimple(gg_trg_Creep_Count, gg_rct_CreepSpawn7)
    TriggerRegisterLeaveRectSimple(gg_trg_Creep_Count, gg_rct_CreepSpawn8)
    TriggerAddAction(gg_trg_Creep_Count, Trig_Creep_Count_Actions)
end

function Trig_Creep_Count_Remove_Actions()
    udg_I_NumberOfCreeps = (udg_I_NumberOfCreeps - 1)
    LeaderboardSetPlayerItemValueBJ(Player(8), udg_LB_Info, udg_I_NumberOfCreeps)
end

function InitTrig_Creep_Count_Remove()
    gg_trg_Creep_Count_Remove = CreateTrigger()
    TriggerRegisterPlayerUnitEventSimple(gg_trg_Creep_Count_Remove, Player(10), EVENT_PLAYER_UNIT_DEATH)
    TriggerRegisterPlayerUnitEventSimple(gg_trg_Creep_Count_Remove, Player(11), EVENT_PLAYER_UNIT_DEATH)
    TriggerAddAction(gg_trg_Creep_Count_Remove, Trig_Creep_Count_Remove_Actions)
end

function Trig_Leaving_Players_Func003Func001002001001001()
    return (GetPlayerSlotState(GetFilterPlayer()) == PLAYER_SLOT_STATE_PLAYING)
end

function Trig_Leaving_Players_Func003Func001002001001002001()
    return (IsPlayerAlly(GetFilterPlayer(), GetTriggerPlayer()) == true)
end

function Trig_Leaving_Players_Func003Func001002001001002002()
    return (GetFilterPlayer() ~= GetTriggerPlayer())
end

function Trig_Leaving_Players_Func003Func001002001001002()
    return GetBooleanAnd(Trig_Leaving_Players_Func003Func001002001001002001(), Trig_Leaving_Players_Func003Func001002001001002002())
end

function Trig_Leaving_Players_Func003Func001002001001()
    return GetBooleanAnd(Trig_Leaving_Players_Func003Func001002001001001(), Trig_Leaving_Players_Func003Func001002001001002())
end

function Trig_Leaving_Players_Func003A()
    SetUnitOwner(GetEnumUnit(), ForcePickRandomPlayer(GetPlayersMatching(Condition(Trig_Leaving_Players_Func003Func001002001001))), true)
end

function Trig_Leaving_Players_Actions()
    DisplayTextToForce(GetPlayersAll(), (("|cffffaa00" .. GetPlayerName(GetTriggerPlayer())) .. "has left the game!!|r"))
    KillUnit(GroupPickRandomUnit(GetUnitsOfPlayerAndTypeId(GetTriggerPlayer(), FourCC("u005"))))
    ForGroupBJ(GetUnitsOfPlayerAll(GetTriggerPlayer()), Trig_Leaving_Players_Func003A)
    LeaderboardSetPlayerItemLabelBJ(GetTriggerPlayer(), udg_LB_Info, "TRIGSTR_112")
end

function InitTrig_Leaving_Players()
    gg_trg_Leaving_Players = CreateTrigger()
    TriggerRegisterPlayerEventLeave(gg_trg_Leaving_Players, Player(0))
    TriggerRegisterPlayerEventLeave(gg_trg_Leaving_Players, Player(1))
    TriggerRegisterPlayerEventLeave(gg_trg_Leaving_Players, Player(2))
    TriggerRegisterPlayerEventLeave(gg_trg_Leaving_Players, Player(3))
    TriggerRegisterPlayerEventLeave(gg_trg_Leaving_Players, Player(4))
    TriggerRegisterPlayerEventLeave(gg_trg_Leaving_Players, Player(5))
    TriggerRegisterPlayerEventLeave(gg_trg_Leaving_Players, Player(6))
    TriggerRegisterPlayerEventLeave(gg_trg_Leaving_Players, Player(7))
    TriggerAddAction(gg_trg_Leaving_Players, Trig_Leaving_Players_Actions)
end

function Trig_Remove_Dying_Unit_Heroes_Func003C()
    if (GetUnitTypeId(GetTriggerUnit()) == FourCC("h00H")) then
        return true
    end
    if (GetUnitTypeId(GetTriggerUnit()) == FourCC("h00I")) then
        return true
    end
    if (GetUnitTypeId(GetTriggerUnit()) == FourCC("h00L")) then
        return true
    end
    if (GetUnitTypeId(GetTriggerUnit()) == FourCC("h00M")) then
        return true
    end
    if (GetUnitTypeId(GetTriggerUnit()) == FourCC("h00N")) then
        return true
    end
    if (GetUnitTypeId(GetTriggerUnit()) == FourCC("h00O")) then
        return true
    end
    if (GetUnitTypeId(GetTriggerUnit()) == FourCC("h00R")) then
        return true
    end
    if (GetUnitTypeId(GetTriggerUnit()) == FourCC("h00S")) then
        return true
    end
    if (GetUnitTypeId(GetTriggerUnit()) == FourCC("h012")) then
        return true
    end
    if (GetUnitTypeId(GetTriggerUnit()) == FourCC("h025")) then
        return true
    end
    if (GetUnitTypeId(GetTriggerUnit()) == FourCC("h026")) then
        return true
    end
    return false
end

function Trig_Remove_Dying_Unit_Heroes_Conditions()
    if (not Trig_Remove_Dying_Unit_Heroes_Func003C()) then
        return false
    end
    return true
end

function Trig_Remove_Dying_Unit_Heroes_Actions()
    TriggerSleepAction(5.00)
    RemoveUnit(GetTriggerUnit())
end

function InitTrig_Remove_Dying_Unit_Heroes()
    gg_trg_Remove_Dying_Unit_Heroes = CreateTrigger()
    TriggerRegisterAnyUnitEventBJ(gg_trg_Remove_Dying_Unit_Heroes, EVENT_PLAYER_UNIT_DEATH)
    TriggerAddCondition(gg_trg_Remove_Dying_Unit_Heroes, Condition(Trig_Remove_Dying_Unit_Heroes_Conditions))
    TriggerAddAction(gg_trg_Remove_Dying_Unit_Heroes, Trig_Remove_Dying_Unit_Heroes_Actions)
end

function Trig_Camera_Zoom_Conditions()
    if (not (StringLength(GetEventPlayerChatString()) <= 12)) then
        return false
    end
    return true
end

function Trig_Camera_Zoom_Func001Func005C()
    if (not (udg_Temp_Integer > 199)) then
        return false
    end
    if (not (udg_Temp_Integer <= 2800)) then
        return false
    end
    return true
end

function Trig_Camera_Zoom_Func001C()
    if (not (GetEventPlayerChatString() == "-zoom")) then
        return false
    end
    return true
end

function Trig_Camera_Zoom_Actions()
    if (Trig_Camera_Zoom_Func001C()) then
        SetCameraFieldForPlayer(GetTriggerPlayer(), CAMERA_FIELD_TARGET_DISTANCE, I2R(udg_Zoom_Cam[GetConvertedPlayerId(GetTriggerPlayer())]), 0.20)
        DisplayTimedTextToForce(GetForceOfPlayer(GetTriggerPlayer()), 3.00, ("|c00FFcc00Set to last Zoom distance of " .. (I2S(udg_Zoom_Cam[GetConvertedPlayerId(GetTriggerPlayer())]) .. "|r")))
    else
        udg_Temp_Integer = S2I(SubStringBJ(GetEventPlayerChatString(), 7, StringLength(GetEventPlayerChatString())))
        if (Trig_Camera_Zoom_Func001Func005C()) then
            udg_Zoom_Cam[GetConvertedPlayerId(GetTriggerPlayer())] = udg_Temp_Integer
            SetCameraFieldForPlayer(GetTriggerPlayer(), CAMERA_FIELD_TARGET_DISTANCE, I2R(udg_Temp_Integer), 0.20)
        else
            DisplayTimedTextToForce(GetForceOfPlayer(GetTriggerPlayer()), 6.00, "TRIGSTR_477")
        end
    end
end

function InitTrig_Camera_Zoom()
    gg_trg_Camera_Zoom = CreateTrigger()
    TriggerRegisterPlayerChatEvent(gg_trg_Camera_Zoom, Player(0), "-zoom", false)
    TriggerRegisterPlayerChatEvent(gg_trg_Camera_Zoom, Player(1), "-zoom", false)
    TriggerRegisterPlayerChatEvent(gg_trg_Camera_Zoom, Player(2), "-zoom", false)
    TriggerRegisterPlayerChatEvent(gg_trg_Camera_Zoom, Player(3), "-zoom", false)
    TriggerRegisterPlayerChatEvent(gg_trg_Camera_Zoom, Player(4), "-zoom", false)
    TriggerRegisterPlayerChatEvent(gg_trg_Camera_Zoom, Player(5), "-zoom", false)
    TriggerRegisterPlayerChatEvent(gg_trg_Camera_Zoom, Player(6), "-zoom", false)
    TriggerRegisterPlayerChatEvent(gg_trg_Camera_Zoom, Player(7), "-zoom", false)
    TriggerRegisterPlayerChatEvent(gg_trg_Camera_Zoom, Player(8), "-zoom", false)
    TriggerRegisterPlayerChatEvent(gg_trg_Camera_Zoom, Player(9), "-zoom", false)
    TriggerAddCondition(gg_trg_Camera_Zoom, Condition(Trig_Camera_Zoom_Conditions))
    TriggerAddAction(gg_trg_Camera_Zoom, Trig_Camera_Zoom_Actions)
end

function InitCustomTriggers()
    InitTrig_Map_Initialization()
    InitTrig_Starting_Locations()
    InitTrig_Sell_Towers()
    InitTrig_Leaderboard()
    InitTrig_Next_Round()
    InitTrig_Wave_Spawning()
    InitTrig_Creep_Spawn_1()
    InitTrig_Creep_Spawn_2()
    InitTrig_Creep_Spawn_3()
    InitTrig_Creep_Spawn_4()
    InitTrig_Creep_Spawn_5()
    InitTrig_Creep_Spawn_6()
    InitTrig_Creep_Spawn_7()
    InitTrig_Creep_Spawn_8()
    InitTrig_Kill_Count()
    InitTrig_Creep_Count()
    InitTrig_Creep_Count_Remove()
    InitTrig_Leaving_Players()
    InitTrig_Remove_Dying_Unit_Heroes()
    InitTrig_Camera_Zoom()
end

function RunInitializationTriggers()
    ConditionalTriggerExecute(gg_trg_Map_Initialization)
end

function InitCustomPlayerSlots()
    SetPlayerStartLocation(Player(0), 0)
    ForcePlayerStartLocation(Player(0), 0)
    SetPlayerColor(Player(0), ConvertPlayerColor(0))
    SetPlayerRacePreference(Player(0), RACE_PREF_UNDEAD)
    SetPlayerRaceSelectable(Player(0), false)
    SetPlayerController(Player(0), MAP_CONTROL_USER)
    SetPlayerStartLocation(Player(1), 1)
    ForcePlayerStartLocation(Player(1), 1)
    SetPlayerColor(Player(1), ConvertPlayerColor(1))
    SetPlayerRacePreference(Player(1), RACE_PREF_UNDEAD)
    SetPlayerRaceSelectable(Player(1), false)
    SetPlayerController(Player(1), MAP_CONTROL_USER)
    SetPlayerStartLocation(Player(2), 2)
    ForcePlayerStartLocation(Player(2), 2)
    SetPlayerColor(Player(2), ConvertPlayerColor(2))
    SetPlayerRacePreference(Player(2), RACE_PREF_UNDEAD)
    SetPlayerRaceSelectable(Player(2), false)
    SetPlayerController(Player(2), MAP_CONTROL_USER)
    SetPlayerStartLocation(Player(3), 3)
    ForcePlayerStartLocation(Player(3), 3)
    SetPlayerColor(Player(3), ConvertPlayerColor(3))
    SetPlayerRacePreference(Player(3), RACE_PREF_UNDEAD)
    SetPlayerRaceSelectable(Player(3), false)
    SetPlayerController(Player(3), MAP_CONTROL_USER)
    SetPlayerStartLocation(Player(4), 4)
    ForcePlayerStartLocation(Player(4), 4)
    SetPlayerColor(Player(4), ConvertPlayerColor(4))
    SetPlayerRacePreference(Player(4), RACE_PREF_UNDEAD)
    SetPlayerRaceSelectable(Player(4), false)
    SetPlayerController(Player(4), MAP_CONTROL_USER)
    SetPlayerStartLocation(Player(5), 5)
    ForcePlayerStartLocation(Player(5), 5)
    SetPlayerColor(Player(5), ConvertPlayerColor(5))
    SetPlayerRacePreference(Player(5), RACE_PREF_UNDEAD)
    SetPlayerRaceSelectable(Player(5), false)
    SetPlayerController(Player(5), MAP_CONTROL_USER)
    SetPlayerStartLocation(Player(6), 6)
    ForcePlayerStartLocation(Player(6), 6)
    SetPlayerColor(Player(6), ConvertPlayerColor(6))
    SetPlayerRacePreference(Player(6), RACE_PREF_UNDEAD)
    SetPlayerRaceSelectable(Player(6), false)
    SetPlayerController(Player(6), MAP_CONTROL_USER)
    SetPlayerStartLocation(Player(7), 7)
    ForcePlayerStartLocation(Player(7), 7)
    SetPlayerColor(Player(7), ConvertPlayerColor(7))
    SetPlayerRacePreference(Player(7), RACE_PREF_UNDEAD)
    SetPlayerRaceSelectable(Player(7), false)
    SetPlayerController(Player(7), MAP_CONTROL_USER)
    SetPlayerStartLocation(Player(11), 8)
    ForcePlayerStartLocation(Player(11), 8)
    SetPlayerColor(Player(11), ConvertPlayerColor(11))
    SetPlayerRacePreference(Player(11), RACE_PREF_UNDEAD)
    SetPlayerRaceSelectable(Player(11), false)
    SetPlayerController(Player(11), MAP_CONTROL_COMPUTER)
end

function InitCustomTeams()
    SetPlayerTeam(Player(0), 0)
    SetPlayerState(Player(0), PLAYER_STATE_ALLIED_VICTORY, 1)
    SetPlayerTeam(Player(1), 0)
    SetPlayerState(Player(1), PLAYER_STATE_ALLIED_VICTORY, 1)
    SetPlayerTeam(Player(2), 0)
    SetPlayerState(Player(2), PLAYER_STATE_ALLIED_VICTORY, 1)
    SetPlayerTeam(Player(3), 0)
    SetPlayerState(Player(3), PLAYER_STATE_ALLIED_VICTORY, 1)
    SetPlayerTeam(Player(4), 0)
    SetPlayerState(Player(4), PLAYER_STATE_ALLIED_VICTORY, 1)
    SetPlayerTeam(Player(5), 0)
    SetPlayerState(Player(5), PLAYER_STATE_ALLIED_VICTORY, 1)
    SetPlayerTeam(Player(6), 0)
    SetPlayerState(Player(6), PLAYER_STATE_ALLIED_VICTORY, 1)
    SetPlayerTeam(Player(7), 0)
    SetPlayerState(Player(7), PLAYER_STATE_ALLIED_VICTORY, 1)
    SetPlayerAllianceStateAllyBJ(Player(0), Player(1), true)
    SetPlayerAllianceStateAllyBJ(Player(0), Player(2), true)
    SetPlayerAllianceStateAllyBJ(Player(0), Player(3), true)
    SetPlayerAllianceStateAllyBJ(Player(0), Player(4), true)
    SetPlayerAllianceStateAllyBJ(Player(0), Player(5), true)
    SetPlayerAllianceStateAllyBJ(Player(0), Player(6), true)
    SetPlayerAllianceStateAllyBJ(Player(0), Player(7), true)
    SetPlayerAllianceStateAllyBJ(Player(1), Player(0), true)
    SetPlayerAllianceStateAllyBJ(Player(1), Player(2), true)
    SetPlayerAllianceStateAllyBJ(Player(1), Player(3), true)
    SetPlayerAllianceStateAllyBJ(Player(1), Player(4), true)
    SetPlayerAllianceStateAllyBJ(Player(1), Player(5), true)
    SetPlayerAllianceStateAllyBJ(Player(1), Player(6), true)
    SetPlayerAllianceStateAllyBJ(Player(1), Player(7), true)
    SetPlayerAllianceStateAllyBJ(Player(2), Player(0), true)
    SetPlayerAllianceStateAllyBJ(Player(2), Player(1), true)
    SetPlayerAllianceStateAllyBJ(Player(2), Player(3), true)
    SetPlayerAllianceStateAllyBJ(Player(2), Player(4), true)
    SetPlayerAllianceStateAllyBJ(Player(2), Player(5), true)
    SetPlayerAllianceStateAllyBJ(Player(2), Player(6), true)
    SetPlayerAllianceStateAllyBJ(Player(2), Player(7), true)
    SetPlayerAllianceStateAllyBJ(Player(3), Player(0), true)
    SetPlayerAllianceStateAllyBJ(Player(3), Player(1), true)
    SetPlayerAllianceStateAllyBJ(Player(3), Player(2), true)
    SetPlayerAllianceStateAllyBJ(Player(3), Player(4), true)
    SetPlayerAllianceStateAllyBJ(Player(3), Player(5), true)
    SetPlayerAllianceStateAllyBJ(Player(3), Player(6), true)
    SetPlayerAllianceStateAllyBJ(Player(3), Player(7), true)
    SetPlayerAllianceStateAllyBJ(Player(4), Player(0), true)
    SetPlayerAllianceStateAllyBJ(Player(4), Player(1), true)
    SetPlayerAllianceStateAllyBJ(Player(4), Player(2), true)
    SetPlayerAllianceStateAllyBJ(Player(4), Player(3), true)
    SetPlayerAllianceStateAllyBJ(Player(4), Player(5), true)
    SetPlayerAllianceStateAllyBJ(Player(4), Player(6), true)
    SetPlayerAllianceStateAllyBJ(Player(4), Player(7), true)
    SetPlayerAllianceStateAllyBJ(Player(5), Player(0), true)
    SetPlayerAllianceStateAllyBJ(Player(5), Player(1), true)
    SetPlayerAllianceStateAllyBJ(Player(5), Player(2), true)
    SetPlayerAllianceStateAllyBJ(Player(5), Player(3), true)
    SetPlayerAllianceStateAllyBJ(Player(5), Player(4), true)
    SetPlayerAllianceStateAllyBJ(Player(5), Player(6), true)
    SetPlayerAllianceStateAllyBJ(Player(5), Player(7), true)
    SetPlayerAllianceStateAllyBJ(Player(6), Player(0), true)
    SetPlayerAllianceStateAllyBJ(Player(6), Player(1), true)
    SetPlayerAllianceStateAllyBJ(Player(6), Player(2), true)
    SetPlayerAllianceStateAllyBJ(Player(6), Player(3), true)
    SetPlayerAllianceStateAllyBJ(Player(6), Player(4), true)
    SetPlayerAllianceStateAllyBJ(Player(6), Player(5), true)
    SetPlayerAllianceStateAllyBJ(Player(6), Player(7), true)
    SetPlayerAllianceStateAllyBJ(Player(7), Player(0), true)
    SetPlayerAllianceStateAllyBJ(Player(7), Player(1), true)
    SetPlayerAllianceStateAllyBJ(Player(7), Player(2), true)
    SetPlayerAllianceStateAllyBJ(Player(7), Player(3), true)
    SetPlayerAllianceStateAllyBJ(Player(7), Player(4), true)
    SetPlayerAllianceStateAllyBJ(Player(7), Player(5), true)
    SetPlayerAllianceStateAllyBJ(Player(7), Player(6), true)
    SetPlayerAllianceStateVisionBJ(Player(0), Player(1), true)
    SetPlayerAllianceStateVisionBJ(Player(0), Player(2), true)
    SetPlayerAllianceStateVisionBJ(Player(0), Player(3), true)
    SetPlayerAllianceStateVisionBJ(Player(0), Player(4), true)
    SetPlayerAllianceStateVisionBJ(Player(0), Player(5), true)
    SetPlayerAllianceStateVisionBJ(Player(0), Player(6), true)
    SetPlayerAllianceStateVisionBJ(Player(0), Player(7), true)
    SetPlayerAllianceStateVisionBJ(Player(1), Player(0), true)
    SetPlayerAllianceStateVisionBJ(Player(1), Player(2), true)
    SetPlayerAllianceStateVisionBJ(Player(1), Player(3), true)
    SetPlayerAllianceStateVisionBJ(Player(1), Player(4), true)
    SetPlayerAllianceStateVisionBJ(Player(1), Player(5), true)
    SetPlayerAllianceStateVisionBJ(Player(1), Player(6), true)
    SetPlayerAllianceStateVisionBJ(Player(1), Player(7), true)
    SetPlayerAllianceStateVisionBJ(Player(2), Player(0), true)
    SetPlayerAllianceStateVisionBJ(Player(2), Player(1), true)
    SetPlayerAllianceStateVisionBJ(Player(2), Player(3), true)
    SetPlayerAllianceStateVisionBJ(Player(2), Player(4), true)
    SetPlayerAllianceStateVisionBJ(Player(2), Player(5), true)
    SetPlayerAllianceStateVisionBJ(Player(2), Player(6), true)
    SetPlayerAllianceStateVisionBJ(Player(2), Player(7), true)
    SetPlayerAllianceStateVisionBJ(Player(3), Player(0), true)
    SetPlayerAllianceStateVisionBJ(Player(3), Player(1), true)
    SetPlayerAllianceStateVisionBJ(Player(3), Player(2), true)
    SetPlayerAllianceStateVisionBJ(Player(3), Player(4), true)
    SetPlayerAllianceStateVisionBJ(Player(3), Player(5), true)
    SetPlayerAllianceStateVisionBJ(Player(3), Player(6), true)
    SetPlayerAllianceStateVisionBJ(Player(3), Player(7), true)
    SetPlayerAllianceStateVisionBJ(Player(4), Player(0), true)
    SetPlayerAllianceStateVisionBJ(Player(4), Player(1), true)
    SetPlayerAllianceStateVisionBJ(Player(4), Player(2), true)
    SetPlayerAllianceStateVisionBJ(Player(4), Player(3), true)
    SetPlayerAllianceStateVisionBJ(Player(4), Player(5), true)
    SetPlayerAllianceStateVisionBJ(Player(4), Player(6), true)
    SetPlayerAllianceStateVisionBJ(Player(4), Player(7), true)
    SetPlayerAllianceStateVisionBJ(Player(5), Player(0), true)
    SetPlayerAllianceStateVisionBJ(Player(5), Player(1), true)
    SetPlayerAllianceStateVisionBJ(Player(5), Player(2), true)
    SetPlayerAllianceStateVisionBJ(Player(5), Player(3), true)
    SetPlayerAllianceStateVisionBJ(Player(5), Player(4), true)
    SetPlayerAllianceStateVisionBJ(Player(5), Player(6), true)
    SetPlayerAllianceStateVisionBJ(Player(5), Player(7), true)
    SetPlayerAllianceStateVisionBJ(Player(6), Player(0), true)
    SetPlayerAllianceStateVisionBJ(Player(6), Player(1), true)
    SetPlayerAllianceStateVisionBJ(Player(6), Player(2), true)
    SetPlayerAllianceStateVisionBJ(Player(6), Player(3), true)
    SetPlayerAllianceStateVisionBJ(Player(6), Player(4), true)
    SetPlayerAllianceStateVisionBJ(Player(6), Player(5), true)
    SetPlayerAllianceStateVisionBJ(Player(6), Player(7), true)
    SetPlayerAllianceStateVisionBJ(Player(7), Player(0), true)
    SetPlayerAllianceStateVisionBJ(Player(7), Player(1), true)
    SetPlayerAllianceStateVisionBJ(Player(7), Player(2), true)
    SetPlayerAllianceStateVisionBJ(Player(7), Player(3), true)
    SetPlayerAllianceStateVisionBJ(Player(7), Player(4), true)
    SetPlayerAllianceStateVisionBJ(Player(7), Player(5), true)
    SetPlayerAllianceStateVisionBJ(Player(7), Player(6), true)
    SetPlayerTeam(Player(11), 1)
    SetPlayerState(Player(11), PLAYER_STATE_ALLIED_VICTORY, 1)
end

function InitAllyPriorities()
    SetStartLocPrioCount(0, 2)
    SetStartLocPrio(0, 0, 1, MAP_LOC_PRIO_HIGH)
    SetStartLocPrio(0, 1, 7, MAP_LOC_PRIO_HIGH)
    SetStartLocPrioCount(1, 2)
    SetStartLocPrio(1, 0, 0, MAP_LOC_PRIO_HIGH)
    SetStartLocPrio(1, 1, 2, MAP_LOC_PRIO_HIGH)
    SetStartLocPrioCount(2, 2)
    SetStartLocPrio(2, 0, 1, MAP_LOC_PRIO_HIGH)
    SetStartLocPrio(2, 1, 3, MAP_LOC_PRIO_HIGH)
    SetStartLocPrioCount(3, 2)
    SetStartLocPrio(3, 0, 2, MAP_LOC_PRIO_HIGH)
    SetStartLocPrio(3, 1, 4, MAP_LOC_PRIO_HIGH)
    SetStartLocPrioCount(4, 2)
    SetStartLocPrio(4, 0, 3, MAP_LOC_PRIO_HIGH)
    SetStartLocPrio(4, 1, 5, MAP_LOC_PRIO_HIGH)
    SetStartLocPrioCount(5, 2)
    SetStartLocPrio(5, 0, 4, MAP_LOC_PRIO_HIGH)
    SetStartLocPrio(5, 1, 6, MAP_LOC_PRIO_HIGH)
    SetStartLocPrioCount(6, 2)
    SetStartLocPrio(6, 0, 5, MAP_LOC_PRIO_HIGH)
    SetStartLocPrio(6, 1, 7, MAP_LOC_PRIO_HIGH)
    SetStartLocPrioCount(7, 2)
    SetStartLocPrio(7, 0, 0, MAP_LOC_PRIO_HIGH)
    SetStartLocPrio(7, 1, 6, MAP_LOC_PRIO_HIGH)
end

function main()
    SetCameraBounds(-7168.0 + GetCameraMargin(CAMERA_MARGIN_LEFT), -2560.0 + GetCameraMargin(CAMERA_MARGIN_BOTTOM), 2048.0 - GetCameraMargin(CAMERA_MARGIN_RIGHT), 6656.0 - GetCameraMargin(CAMERA_MARGIN_TOP), -7168.0 + GetCameraMargin(CAMERA_MARGIN_LEFT), 6656.0 - GetCameraMargin(CAMERA_MARGIN_TOP), 2048.0 - GetCameraMargin(CAMERA_MARGIN_RIGHT), -2560.0 + GetCameraMargin(CAMERA_MARGIN_BOTTOM))
    SetDayNightModels("Environment\\DNC\\DNCDungeon\\DNCDungeonTerrain\\DNCDungeonTerrain.mdl", "Environment\\DNC\\DNCDungeon\\DNCDungeonUnit\\DNCDungeonUnit.mdl")
    NewSoundEnvironment("Default")
    SetAmbientDaySound("DungeonDay")
    SetAmbientNightSound("DungeonNight")
    SetMapMusic("Music", true, 0)
    InitSounds()
    CreateRegions()
    InitBlizzard()
    InitGlobals()
    InitCustomTriggers()
    RunInitializationTriggers()
end

function config()
    SetMapName("TRIGSTR_001")
    SetMapDescription("TRIGSTR_385")
    SetPlayers(9)
    SetTeams(9)
    SetGamePlacement(MAP_PLACEMENT_TEAMS_TOGETHER)
    DefineStartLocation(0, -4096.0, 3584.0)
    DefineStartLocation(1, -2560.0, 4608.0)
    DefineStartLocation(2, -1024.0, 3584.0)
    DefineStartLocation(3, 0.0, 2048.0)
    DefineStartLocation(4, -1024.0, 512.0)
    DefineStartLocation(5, -2560.0, -512.0)
    DefineStartLocation(6, -4096.0, 512.0)
    DefineStartLocation(7, -5120.0, 2048.0)
    DefineStartLocation(8, -2560.0, 2048.0)
    InitCustomPlayerSlots()
    InitCustomTeams()
    InitAllyPriorities()
end

