globals
//globals from tese:
constant boolean LIBRARY_tese=true
//endglobals from tese
    // User-defined
    integer                 udg_numCreepPlayers        = 0
    integer                 udg_numCreepTypes          = 0
    integer array           udg_creepWorkers
    integer array           udg_creepBarracks
    integer array           udg_cpCreepTypes
    integer                 udg_cpCurrent              = 0
    player array            udg_cpPlayers
    integer array           udg_cpStartLocID
    boolean array           udg_startLocUsed
    integer                 udg_startLocCurrentID      = 0
    rect                    udg_startLocCurrent        = null
    rect array              udg_startLocRegions
    integer                 udg_tempCounter            = 0
    string array            udg_creepAIs
    timer                   udg_shardTimer             = null
    timerdialog             udg_shardTimerWindow       = null
    boolean                 udg_shardDisruption        = false
    real                    udg_shardTimerTime         = 0
    rect array              udg_startLocNHCRegions
    playercolor             udg_colorCurrent           = null
    real                    udg_colorRed               = 0
    real                    udg_colorGreen             = 0
    real                    udg_colorBlue              = 0
    rect array              udg_userMineRegions
    player array            udg_userPlayers
    integer                 udg_userCurrent            = 0
    rect array              udg_userStartRegions
    integer                 udg_tempRandom             = 0
    unit                    udg_colorUnit              = null
    string array            udg_creepNames
    leaderboard             udg_leaderBoard            = null
    integer                 udg_numMonoliths           = 0
    integer                 udg_numMonolithsStart      = 0
    quest                   udg_questMain              = null
    questitem               udg_questMainReq           = null
    string                  udg_tempStr1
    string                  udg_tempStr2
    string                  udg_tempStr3
    quest                   udg_questShard             = null
    effect array            udg_effectShrub1
    effect array            udg_effectShrub2
    integer                 udg_effectShrubCount       = 0
    integer                 udg_tempInt                = 0
    timer                   udg_cinematicTimer         = null
    real                    udg_cinematicDuration      = 0
    integer                 udg_debugCreepType         = 0
    unit                    udg_tempUnit               = null
    integer                 udg_aiAttackEnemyHeroLevel = 0
    integer array           udg_creepHeros
    timer                   udg_victoryMsgTimer        = null
    timer                   udg_victoryEndTimer        = null
    timer                   udg_defeatMsgTimer         = null
    timer                   udg_defeatEndTimer         = null
    boolean                 udg_victory                = false
    boolean                 udg_defeat                 = false
    boolean array           udg_userPlayAsCreeps
    location array          udg_userStartLocations
    player                  udg_tempPlayer             = null
    integer array           udg_shuffleArray
    integer                 udg_shuffleCount           = 0
    rect                    udg_swapRegion             = null
    location                udg_swapPoint              = null
    group                   udg_shardPenaltyUnits      = null
    integer                 udg_shardPenaltyUnitType   = 0
    boolean                 udg_cheatsEnabled          = false
    force                   udg_userPlayerGroup        = null
    force                   udg_creepPlayerGroup       = null
    integer                 udg_shardHostileChance     = 0
    playercolor             udg_swapColor              = null
    boolean                 udg_tempLoopStop           = false
    integer                 udg_creepFoodLimit         = 0
    integer                 udg_creepFoodUsed          = 0
    integer                 udg_userFoodUsed           = 0
    integer array           udg_userLumber
    boolean                 udg_shardGainingLumber     = false
    integer                 udg_tempOldLumber          = 0
    location                udg_tempPoint              = null
    boolean                 udg_shardPointGood         = false
    boolean                 udg_tempBool               = false
    real                    udg_shardDisruptionTime    = 0
    integer                 udg_tempX                  = 0
    integer                 udg_tempY                  = 0
    integer                 udg_maxNumShards           = 0
    string array            udg_textMonolithsRevealed
    string array            udg_textMonolithQuest
    string array            udg_textLeaderboard

    // Generated
    rect                    gg_rct_Monolith_1          = null
    rect                    gg_rct_Monolith_2          = null
    rect                    gg_rct_Monolith_3          = null
    rect                    gg_rct_Monolith_4          = null
    rect                    gg_rct_Monolith_5          = null
    rect                    gg_rct_Monolith_6          = null
    rect                    gg_rct_Monolith_7          = null
    rect                    gg_rct_Monolith_8          = null
    rect                    gg_rct_NH_Creeps_1         = null
    rect                    gg_rct_NH_Creeps_2         = null
    rect                    gg_rct_NH_Creeps_3         = null
    rect                    gg_rct_NH_Creeps_4         = null
    rect                    gg_rct_NH_Creeps_5         = null
    rect                    gg_rct_NH_Creeps_6         = null
    rect                    gg_rct_NH_Creeps_7         = null
    rect                    gg_rct_NH_Creeps_8         = null
    rect                    gg_rct_Player_Mine_1       = null
    rect                    gg_rct_Player_Mine_2       = null
    rect                    gg_rct_Player_Mine_3       = null
    rect                    gg_rct_Player_Mine_4       = null
    rect                    gg_rct_Player_Start_1      = null
    rect                    gg_rct_Player_Start_2      = null
    rect                    gg_rct_Player_Start_3      = null
    rect                    gg_rct_Player_Start_4      = null
    rect                    gg_rct_Monolith_Intro_Area = null
    rect                    gg_rct_Penalty_Box         = null
    rect                    gg_rct_No_Shards           = null
    camerasetup             gg_cam_Monolith_Intro_Shot = null
    sound                   gg_snd_WispDeath1          = null
    sound                   gg_snd_DeathPactTargetBirth1 = null
    sound                   gg_snd_ShardDisruptStart   = null
    sound                   gg_snd_ShardDisruptAdd     = null
    sound                   gg_snd_ShardDisruptEnd     = null
    trigger                 gg_trg_Remove_Sockpuppet   = null
    trigger                 gg_trg_Untitled_Trigger_001 = null
    trigger                 gg_trg_Map_Init            = null
    trigger                 gg_trg_Init_Variables      = null
    trigger                 gg_trg_Externalized_Strings = null
    trigger                 gg_trg_Creep_Type_Info     = null
    trigger                 gg_trg_Find_User_From_Player = null
    trigger                 gg_trg_Set_Up_User_Players = null
    trigger                 gg_trg_Empty_Player        = null
    trigger                 gg_trg_Create_User_Player  = null
    trigger                 gg_trg_Start_Melee_AI      = null
    trigger                 gg_trg_Choose_Random_Location = null
    trigger                 gg_trg_Set_Up_Creep_Players = null
    trigger                 gg_trg_Create_Creep_Player = null
    trigger                 gg_trg_Place_All_Shards    = null
    trigger                 gg_trg_Place_One_Shard     = null
    trigger                 gg_trg_Intro_Cinematic_Screenshot = null
    trigger                 gg_trg_Intro_Cinematic_Start = null
    trigger                 gg_trg_Intro_Cinematic_End = null
    trigger                 gg_trg_Cheats_Disabled     = null
    trigger                 gg_trg_Play_As             = null
    trigger                 gg_trg_Observe             = null
    trigger                 gg_trg_Observe_Full        = null
    trigger                 gg_trg_Unobserve           = null
    trigger                 gg_trg_Debug_Ping_Shards   = null
    trigger                 gg_trg_Team_Coloring_Construction = null
    trigger                 gg_trg_Team_Coloring_Update_All = null
    trigger                 gg_trg_Team_Coloring_Apply = null
    trigger                 gg_trg_Wolf_Den_Shrubs_Create = null
    trigger                 gg_trg_Wolf_Den_Shrubs_Destroy = null
    trigger                 gg_trg_Werewolf_Morph      = null
    trigger                 gg_trg_Monolith_Work_Start = null
    trigger                 gg_trg_Monolith_Work_End   = null
    trigger                 gg_trg_Ping_Shards         = null
    trigger                 gg_trg_Shard_Disabled      = null
    trigger                 gg_trg_Shard_Picked_Up     = null
    trigger                 gg_trg_Creep_Reclaims_Shard = null
    trigger                 gg_trg_User_Reclaims_Shard = null
    trigger                 gg_trg_Computer_Ally_Gets_Shard = null
    trigger                 gg_trg_User_Uses_Shard     = null
    trigger                 gg_trg_Shard_Disruption_Begin = null
    trigger                 gg_trg_Shard_Disruption_End = null
    trigger                 gg_trg_Lumber_Cheese_Prevention = null
    trigger                 gg_trg_Monolith_Count      = null
    trigger                 gg_trg_Monolith_Destroyed  = null
    trigger                 gg_trg_Create_Leaderboard  = null
    trigger                 gg_trg_Update_Leaderboard  = null
    trigger                 gg_trg_Create_Main_Quest   = null
    trigger                 gg_trg_Update_Main_Quest   = null
    trigger                 gg_trg_Create_Shard_Quest  = null
    trigger                 gg_trg_Shard_Extra_Hint    = null
    trigger                 gg_trg_Attack_Enemy        = null
    trigger                 gg_trg_Victory_Start       = null
    trigger                 gg_trg_Victory_Message     = null
    trigger                 gg_trg_Victory_End         = null
    trigger                 gg_trg_Defeat_Check        = null
    trigger                 gg_trg_Defeat_Start        = null
    trigger                 gg_trg_Defeat_Message      = null
    trigger                 gg_trg_Defeat_End          = null

    // Random Groups
    integer array gg_rg_000
    integer array gg_rg_001
    integer array gg_rg_002
    integer array gg_rg_003
    integer array gg_rg_004
    integer array gg_rg_005
    integer array gg_rg_006
    integer array gg_rg_007
    integer array gg_rg_008

trigger l__library_init
endglobals
//library tese:
    function Trig_Conditions takes nothing returns boolean
        if ( not ( GetSpellAbilityId() == 'A009' ) ) then
            return false
        endif
        return true
    endfunction

    function Trig_Skill_Target_Condition takes nothing returns boolean
        if ( not ( IsUnitType(GetEnumUnit(), UNIT_TYPE_MAGIC_IMMUNE) != true ) ) then
            return false
        endif
        if ( not ( IsUnitType(GetEnumUnit(), UNIT_TYPE_STRUCTURE) != true ) ) then
            return false
        endif
        return true
    endfunction

    function Trig_Release_Skill_Actions takes nothing returns nothing
        local location point02=null
        local unit unit_majia=null
        local unit unit_trigger=GetTriggerUnit()
        //local integer hearo_str=GetHeroStatBJ(bj_HEROSTAT_STR,GetTriggerUnit(),true)
        if ( Trig_Skill_Target_Condition() ) then
            set point02 = GetUnitLoc(unit_trigger)
            call CreateNUnitsAtLoc( 1, 'h001', GetOwningPlayer(unit_trigger), point02, GetUnitFacing(unit_trigger) )
            set unit_majia =GetLastCreatedUnit()
            call ShowUnitHide( unit_majia )
            call UnitAddAbilityBJ( 'A00A', unit_majia )
            call SetUnitAbilityLevelSwapped( 'A00A', unit_majia, GetUnitAbilityLevelSwapped('A009', unit_trigger) )
            call IssueTargetOrderBJ( unit_majia, "thunderbolt", GetEnumUnit() )
            call RemoveLocation(point02)
            set point02=null
        endif

    endfunction

    function Trig_Actions takes nothing returns nothing
        local location point01 = GetSpellTargetLoc()
        call ForGroupBJ(GetUnitsInRangeOfLocAll(350.00, point01), function Trig_Release_Skill_Actions )
        call RemoveLocation(point01)
        set point01=null
    endfunction

    //===========================================================================
    function InitTrig_Trigger_QunTiFengBaoZhiChui takes nothing returns nothing
        local trigger main_Trigger = CreateTrigger(  )
        call TriggerRegisterAnyUnitEventBJ( main_Trigger, EVENT_PLAYER_UNIT_SPELL_EFFECT )
        call TriggerAddCondition( main_Trigger, Condition( function Trig_Conditions ) )
        call TriggerAddAction( main_Trigger, function Trig_Actions )
    endfunction


//library tese ends
//===========================================================================
// 
// Monolith
// 
//   Warcraft III map script
//   Generated by the Warcraft III World Editor
//   Map Author: Blizzard Entertainment
// 
//===========================================================================

//***************************************************************************
//*
//*  Global Variables
//*
//***************************************************************************


function InitGlobals takes nothing returns nothing
    local integer i = 0
    set udg_numCreepPlayers = 0
    set udg_numCreepTypes = 0
    set i = 0
    loop
        exitwhen (i > 4)
        set udg_cpCreepTypes[i] = 0
        set i = i + 1
    endloop

    set udg_cpCurrent = 0
    set i = 0
    loop
        exitwhen (i > 4)
        set udg_cpStartLocID[i] = 0
        set i = i + 1
    endloop

    set i = 0
    loop
        exitwhen (i > 8)
        set udg_startLocUsed[i] = false
        set i = i + 1
    endloop

    set udg_startLocCurrentID = 0
    set udg_tempCounter = 0
    set i = 0
    loop
        exitwhen (i > 8)
        set udg_creepAIs[i] = ""
        set i = i + 1
    endloop

    set udg_shardTimer = CreateTimer()
    set udg_shardDisruption = false
    set udg_shardTimerTime = 0
    set udg_colorRed = 0
    set udg_colorGreen = 0
    set udg_colorBlue = 0
    set udg_userCurrent = 0
    set udg_tempRandom = 0
    set i = 0
    loop
        exitwhen (i > 8)
        set udg_creepNames[i] = ""
        set i = i + 1
    endloop

    set udg_numMonoliths = 0
    set udg_numMonolithsStart = 0
    set udg_tempStr1 = ""
    set udg_tempStr2 = ""
    set udg_tempStr3 = ""
    set udg_effectShrubCount = 0
    set udg_tempInt = 0
    set udg_cinematicTimer = CreateTimer()
    set udg_cinematicDuration = 0
    set udg_debugCreepType = -1
    set udg_aiAttackEnemyHeroLevel = 0
    set udg_victoryMsgTimer = CreateTimer()
    set udg_victoryEndTimer = CreateTimer()
    set udg_defeatMsgTimer = CreateTimer()
    set udg_defeatEndTimer = CreateTimer()
    set udg_victory = false
    set udg_defeat = false
    set i = 0
    loop
        exitwhen (i > 4)
        set udg_userPlayAsCreeps[i] = false
        set i = i + 1
    endloop

    set i = 0
    loop
        exitwhen (i > 1)
        set udg_shuffleArray[i] = 0
        set i = i + 1
    endloop

    set udg_shuffleCount = 0
    set udg_shardPenaltyUnits = CreateGroup()
    set udg_cheatsEnabled = true
    set udg_userPlayerGroup = CreateForce()
    set udg_creepPlayerGroup = CreateForce()
    set udg_shardHostileChance = 0
    set udg_tempLoopStop = false
    set udg_creepFoodLimit = 70
    set udg_creepFoodUsed = 0
    set udg_userFoodUsed = 0
    set i = 0
    loop
        exitwhen (i > 4)
        set udg_userLumber[i] = 0
        set i = i + 1
    endloop

    set udg_shardGainingLumber = false
    set udg_tempOldLumber = 0
    set udg_shardPointGood = false
    set udg_tempBool = false
    set udg_shardDisruptionTime = 60.00
    set udg_tempX = 0
    set udg_tempY = 0
    set udg_maxNumShards = 0
    set i = 0
    loop
        exitwhen (i > 4)
        set udg_textMonolithsRevealed[i] = ""
        set i = i + 1
    endloop

    set i = 0
    loop
        exitwhen (i > 5)
        set udg_textMonolithQuest[i] = ""
        set i = i + 1
    endloop

    set i = 0
    loop
        exitwhen (i > 16)
        set udg_textLeaderboard[i] = ""
        set i = i + 1
    endloop

endfunction

//***************************************************************************
//*
//*  Custom Script Code
//*
//***************************************************************************
//***************************************************************************
//*  Trigger_QunTiFengBaoZhiChui


//***************************************************************************
//*
//*  Random Groups
//*
//***************************************************************************

function InitRandomGroups takes nothing returns nothing
    local integer curset

    // Group 0 - Gold Mines 1
    call RandomDistReset(  )
    call RandomDistAddItem( 0, 15 )
    call RandomDistAddItem( 1, 15 )
    call RandomDistAddItem( 2, 14 )
    call RandomDistAddItem( 3, 14 )
    call RandomDistAddItem( 4, 14 )
    call RandomDistAddItem( 5, 14 )
    call RandomDistAddItem( 6, 14 )
    set curset = RandomDistChoose(  )

    if (curset == 0) then
        set gg_rg_000[0] = 'ndtw'
        set gg_rg_000[1] = 'ndth'
        set gg_rg_000[2] = 'ndtt'
        set gg_rg_000[3] = 'ndtt'
        set gg_rg_000[4] = 'ndtr'
        set gg_rg_000[5] = 'ndtr'
    elseif (curset == 1) then
        set gg_rg_000[0] = 'nfrg'
        set gg_rg_000[1] = 'nfrs'
        set gg_rg_000[2] = 'nfrs'
        set gg_rg_000[3] = 'nfrl'
        set gg_rg_000[4] = 'nfrl'
        set gg_rg_000[5] = -1
    elseif (curset == 2) then
        set gg_rg_000[0] = 'nsbm'
        set gg_rg_000[1] = 'nsgt'
        set gg_rg_000[2] = 'nsgt'
        set gg_rg_000[3] = 'nspr'
        set gg_rg_000[4] = 'nspr'
        set gg_rg_000[5] = 'nspr'
    elseif (curset == 3) then
        set gg_rg_000[0] = 'nstw'
        set gg_rg_000[1] = 'nthl'
        set gg_rg_000[2] = 'nltl'
        set gg_rg_000[3] = 'nltl'
        set gg_rg_000[4] = -1
        set gg_rg_000[5] = -1
    elseif (curset == 4) then
        set gg_rg_000[0] = 'nsth'
        set gg_rg_000[1] = 'nstl'
        set gg_rg_000[2] = 'nsat'
        set gg_rg_000[3] = 'nsat'
        set gg_rg_000[4] = 'nsty'
        set gg_rg_000[5] = 'nsty'
    elseif (curset == 5) then
        set gg_rg_000[0] = 'nmrm'
        set gg_rg_000[1] = 'nmrm'
        set gg_rg_000[2] = 'nmrm'
        set gg_rg_000[3] = 'nmrr'
        set gg_rg_000[4] = 'nmrr'
        set gg_rg_000[5] = 'nmrr'
    elseif (curset == 6) then
        set gg_rg_000[0] = 'nwld'
        set gg_rg_000[1] = 'nwlg'
        set gg_rg_000[2] = 'nwlg'
        set gg_rg_000[3] = 'nwlt'
        set gg_rg_000[4] = 'nwlt'
        set gg_rg_000[5] = 'nwlt'
    else
        set gg_rg_000[0] = -1
        set gg_rg_000[1] = -1
        set gg_rg_000[2] = -1
        set gg_rg_000[3] = -1
        set gg_rg_000[4] = -1
        set gg_rg_000[5] = -1
    endif

    // Group 1 - Easy Creeps 1
    call RandomDistReset(  )
    call RandomDistAddItem( 0, 15 )
    call RandomDistAddItem( 1, 14 )
    call RandomDistAddItem( 2, 14 )
    call RandomDistAddItem( 3, 14 )
    call RandomDistAddItem( 4, 14 )
    call RandomDistAddItem( 5, 14 )
    call RandomDistAddItem( 6, 15 )
    set curset = RandomDistChoose(  )

    if (curset == 0) then
        set gg_rg_001[0] = 'nssp'
        set gg_rg_001[1] = 'nspr'
        set gg_rg_001[2] = 'nspr'
    elseif (curset == 1) then
        set gg_rg_001[0] = 'ndtp'
        set gg_rg_001[1] = 'ndtr'
        set gg_rg_001[2] = 'ndtr'
    elseif (curset == 2) then
        set gg_rg_001[0] = -1
        set gg_rg_001[1] = 'nfrs'
        set gg_rg_001[2] = 'nfrl'
    elseif (curset == 3) then
        set gg_rg_001[0] = 'nthl'
        set gg_rg_001[1] = -1
        set gg_rg_001[2] = -1
    elseif (curset == 4) then
        set gg_rg_001[0] = 'nsat'
        set gg_rg_001[1] = 'nsty'
        set gg_rg_001[2] = 'nsty'
    elseif (curset == 5) then
        set gg_rg_001[0] = 'nmrm'
        set gg_rg_001[1] = 'nmrl'
        set gg_rg_001[2] = 'nmrr'
    elseif (curset == 6) then
        set gg_rg_001[0] = 'nwlt'
        set gg_rg_001[1] = 'nwlt'
        set gg_rg_001[2] = 'nwlt'
    else
        set gg_rg_001[0] = -1
        set gg_rg_001[1] = -1
        set gg_rg_001[2] = -1
    endif

    // Group 2 - Easy Creeps 2
    call RandomDistReset(  )
    call RandomDistAddItem( 0, 15 )
    call RandomDistAddItem( 1, 15 )
    call RandomDistAddItem( 2, 14 )
    call RandomDistAddItem( 3, 14 )
    call RandomDistAddItem( 4, 14 )
    call RandomDistAddItem( 5, 14 )
    call RandomDistAddItem( 6, 14 )
    set curset = RandomDistChoose(  )

    if (curset == 0) then
        set gg_rg_002[0] = 'ndtp'
        set gg_rg_002[1] = 'ndtr'
        set gg_rg_002[2] = 'ndtr'
    elseif (curset == 1) then
        set gg_rg_002[0] = 'nsgt'
        set gg_rg_002[1] = 'nspr'
        set gg_rg_002[2] = -1
    elseif (curset == 2) then
        set gg_rg_002[0] = 'nfrl'
        set gg_rg_002[1] = -1
        set gg_rg_002[2] = 'nfrl'
    elseif (curset == 3) then
        set gg_rg_002[0] = -1
        set gg_rg_002[1] = 'nltl'
        set gg_rg_002[2] = 'nltl'
    elseif (curset == 4) then
        set gg_rg_002[0] = 'nsts'
        set gg_rg_002[1] = 'nsty'
        set gg_rg_002[2] = -1
    elseif (curset == 5) then
        set gg_rg_002[0] = 'nmrr'
        set gg_rg_002[1] = 'nmrr'
        set gg_rg_002[2] = 'nmrr'
    elseif (curset == 6) then
        set gg_rg_002[0] = 'nwlt'
        set gg_rg_002[1] = 'nwlt'
        set gg_rg_002[2] = 'nwlt'
    else
        set gg_rg_002[0] = -1
        set gg_rg_002[1] = -1
        set gg_rg_002[2] = -1
    endif

    // Group 3 - Gold Mines User
    call RandomDistReset(  )
    call RandomDistAddItem( 0, 15 )
    call RandomDistAddItem( 1, 15 )
    call RandomDistAddItem( 2, 14 )
    call RandomDistAddItem( 3, 14 )
    call RandomDistAddItem( 4, 14 )
    call RandomDistAddItem( 5, 14 )
    call RandomDistAddItem( 6, 14 )
    set curset = RandomDistChoose(  )

    if (curset == 0) then
        set gg_rg_003[0] = 'nfre'
        set gg_rg_003[1] = 'nfrl'
        set gg_rg_003[2] = 'nfrl'
        set gg_rg_003[3] = -1
    elseif (curset == 1) then
        set gg_rg_003[0] = 'ndth'
        set gg_rg_003[1] = 'ndtb'
        set gg_rg_003[2] = 'ndtb'
        set gg_rg_003[3] = -1
    elseif (curset == 2) then
        set gg_rg_003[0] = 'nsgt'
        set gg_rg_003[1] = 'nssp'
        set gg_rg_003[2] = 'nssp'
        set gg_rg_003[3] = 'nspr'
    elseif (curset == 3) then
        set gg_rg_003[0] = 'nthl'
        set gg_rg_003[1] = 'nltl'
        set gg_rg_003[2] = 'nltl'
        set gg_rg_003[3] = -1
    elseif (curset == 4) then
        set gg_rg_003[0] = 'nstl'
        set gg_rg_003[1] = 'nsts'
        set gg_rg_003[2] = 'nsts'
        set gg_rg_003[3] = -1
    elseif (curset == 5) then
        set gg_rg_003[0] = 'nmrm'
        set gg_rg_003[1] = 'nmrm'
        set gg_rg_003[2] = 'nmrr'
        set gg_rg_003[3] = 'nmrr'
    elseif (curset == 6) then
        set gg_rg_003[0] = 'nwlg'
        set gg_rg_003[1] = 'nwlg'
        set gg_rg_003[2] = 'nwlt'
        set gg_rg_003[3] = 'nwlt'
    else
        set gg_rg_003[0] = -1
        set gg_rg_003[1] = -1
        set gg_rg_003[2] = -1
        set gg_rg_003[3] = -1
    endif

    // Group 4 - Medium Creeps 1
    call RandomDistReset(  )
    call RandomDistAddItem( 0, 15 )
    call RandomDistAddItem( 1, 15 )
    call RandomDistAddItem( 2, 14 )
    call RandomDistAddItem( 3, 14 )
    call RandomDistAddItem( 4, 14 )
    call RandomDistAddItem( 5, 14 )
    call RandomDistAddItem( 6, 14 )
    set curset = RandomDistChoose(  )

    if (curset == 0) then
        set gg_rg_004[0] = 'ndtb'
        set gg_rg_004[1] = 'ndth'
        set gg_rg_004[2] = 'ndtt'
        set gg_rg_004[3] = 'ndtt'
    elseif (curset == 1) then
        set gg_rg_004[0] = 'nfrs'
        set gg_rg_004[1] = 'nfrs'
        set gg_rg_004[2] = 'nfrl'
        set gg_rg_004[3] = 'nfrl'
    elseif (curset == 2) then
        set gg_rg_004[0] = 'nsgt'
        set gg_rg_004[1] = 'nssp'
        set gg_rg_004[2] = 'nssp'
        set gg_rg_004[3] = 'nsgt'
    elseif (curset == 3) then
        set gg_rg_004[0] = 'nthl'
        set gg_rg_004[1] = 'nthl'
        set gg_rg_004[2] = 'nltl'
        set gg_rg_004[3] = -1
    elseif (curset == 4) then
        set gg_rg_004[0] = 'nstl'
        set gg_rg_004[1] = 'nsts'
        set gg_rg_004[2] = 'nsts'
        set gg_rg_004[3] = 'nsat'
    elseif (curset == 5) then
        set gg_rg_004[0] = 'nmmu'
        set gg_rg_004[1] = 'nmrm'
        set gg_rg_004[2] = 'nmrr'
        set gg_rg_004[3] = 'nmrr'
    elseif (curset == 6) then
        set gg_rg_004[0] = 'nwlg'
        set gg_rg_004[1] = 'nwlg'
        set gg_rg_004[2] = 'nwlg'
        set gg_rg_004[3] = 'nwlt'
    else
        set gg_rg_004[0] = -1
        set gg_rg_004[1] = -1
        set gg_rg_004[2] = -1
        set gg_rg_004[3] = -1
    endif

    // Group 5 - Medium Creeps 2
    call RandomDistReset(  )
    call RandomDistAddItem( 0, 15 )
    call RandomDistAddItem( 1, 15 )
    call RandomDistAddItem( 2, 14 )
    call RandomDistAddItem( 3, 14 )
    call RandomDistAddItem( 4, 14 )
    call RandomDistAddItem( 5, 14 )
    call RandomDistAddItem( 6, 14 )
    set curset = RandomDistChoose(  )

    if (curset == 0) then
        set gg_rg_005[0] = 'ndtb'
        set gg_rg_005[1] = 'ndth'
        set gg_rg_005[2] = 'ndtt'
        set gg_rg_005[3] = 'ndtt'
    elseif (curset == 1) then
        set gg_rg_005[0] = 'nfre'
        set gg_rg_005[1] = 'nfrg'
        set gg_rg_005[2] = -1
        set gg_rg_005[3] = -1
    elseif (curset == 2) then
        set gg_rg_005[0] = 'nssp'
        set gg_rg_005[1] = 'nssp'
        set gg_rg_005[2] = 'nssp'
        set gg_rg_005[3] = 'nssp'
    elseif (curset == 3) then
        set gg_rg_005[0] = 'nstw'
        set gg_rg_005[1] = -1
        set gg_rg_005[2] = -1
        set gg_rg_005[3] = -1
    elseif (curset == 4) then
        set gg_rg_005[0] = 'nstl'
        set gg_rg_005[1] = 'nsts'
        set gg_rg_005[2] = 'nsts'
        set gg_rg_005[3] = 'nsts'
    elseif (curset == 5) then
        set gg_rg_005[0] = 'nmrm'
        set gg_rg_005[1] = 'nmrm'
        set gg_rg_005[2] = 'nmrm'
        set gg_rg_005[3] = 'nmrm'
    elseif (curset == 6) then
        set gg_rg_005[0] = 'nwld'
        set gg_rg_005[1] = 'nwlt'
        set gg_rg_005[2] = 'nwlt'
        set gg_rg_005[3] = 'nwlt'
    else
        set gg_rg_005[0] = -1
        set gg_rg_005[1] = -1
        set gg_rg_005[2] = -1
        set gg_rg_005[3] = -1
    endif

    // Group 6 - Gold Mines 2
    call RandomDistReset(  )
    call RandomDistAddItem( 0, 15 )
    call RandomDistAddItem( 1, 15 )
    call RandomDistAddItem( 2, 14 )
    call RandomDistAddItem( 3, 14 )
    call RandomDistAddItem( 4, 14 )
    call RandomDistAddItem( 5, 14 )
    call RandomDistAddItem( 6, 14 )
    set curset = RandomDistChoose(  )

    if (curset == 0) then
        set gg_rg_006[0] = 'ndtw'
        set gg_rg_006[1] = 'ndth'
        set gg_rg_006[2] = 'ndtt'
        set gg_rg_006[3] = 'ndtt'
        set gg_rg_006[4] = 'ndtr'
        set gg_rg_006[5] = 'ndtr'
    elseif (curset == 1) then
        set gg_rg_006[0] = 'nfre'
        set gg_rg_006[1] = 'nfrs'
        set gg_rg_006[2] = 'nfrs'
        set gg_rg_006[3] = 'nfrl'
        set gg_rg_006[4] = 'nfrl'
        set gg_rg_006[5] = -1
    elseif (curset == 2) then
        set gg_rg_006[0] = 'nsbm'
        set gg_rg_006[1] = 'nsgt'
        set gg_rg_006[2] = 'nsgt'
        set gg_rg_006[3] = 'nssp'
        set gg_rg_006[4] = 'nspr'
        set gg_rg_006[5] = 'nspr'
    elseif (curset == 3) then
        set gg_rg_006[0] = 'nstw'
        set gg_rg_006[1] = 'nthl'
        set gg_rg_006[2] = 'nltl'
        set gg_rg_006[3] = 'nltl'
        set gg_rg_006[4] = -1
        set gg_rg_006[5] = -1
    elseif (curset == 4) then
        set gg_rg_006[0] = 'nsth'
        set gg_rg_006[1] = 'nstl'
        set gg_rg_006[2] = 'nsts'
        set gg_rg_006[3] = 'nsat'
        set gg_rg_006[4] = 'nsty'
        set gg_rg_006[5] = 'nsty'
    elseif (curset == 5) then
        set gg_rg_006[0] = 'nmmu'
        set gg_rg_006[1] = 'nmmu'
        set gg_rg_006[2] = 'nmrm'
        set gg_rg_006[3] = 'nmrm'
        set gg_rg_006[4] = 'nmrr'
        set gg_rg_006[5] = 'nmrr'
    elseif (curset == 6) then
        set gg_rg_006[0] = 'nwld'
        set gg_rg_006[1] = 'nwlg'
        set gg_rg_006[2] = 'nwlg'
        set gg_rg_006[3] = 'nwlg'
        set gg_rg_006[4] = 'nwlt'
        set gg_rg_006[5] = 'nwlt'
    else
        set gg_rg_006[0] = -1
        set gg_rg_006[1] = -1
        set gg_rg_006[2] = -1
        set gg_rg_006[3] = -1
        set gg_rg_006[4] = -1
        set gg_rg_006[5] = -1
    endif

    // Group 7 - Gold Mines 3
    call RandomDistReset(  )
    call RandomDistAddItem( 0, 15 )
    call RandomDistAddItem( 1, 15 )
    call RandomDistAddItem( 2, 14 )
    call RandomDistAddItem( 3, 14 )
    call RandomDistAddItem( 4, 14 )
    call RandomDistAddItem( 5, 14 )
    call RandomDistAddItem( 6, 14 )
    set curset = RandomDistChoose(  )

    if (curset == 0) then
        set gg_rg_007[0] = 'ndtw'
        set gg_rg_007[1] = 'ndth'
        set gg_rg_007[2] = 'ndtb'
        set gg_rg_007[3] = 'ndtb'
        set gg_rg_007[4] = 'ndtr'
        set gg_rg_007[5] = 'ndtr'
    elseif (curset == 1) then
        set gg_rg_007[0] = 'nfre'
        set gg_rg_007[1] = 'nfrg'
        set gg_rg_007[2] = 'nfrs'
        set gg_rg_007[3] = 'nfrb'
        set gg_rg_007[4] = -1
        set gg_rg_007[5] = -1
    elseif (curset == 2) then
        set gg_rg_007[0] = 'nsbm'
        set gg_rg_007[1] = 'nssp'
        set gg_rg_007[2] = 'nssp'
        set gg_rg_007[3] = 'nssp'
        set gg_rg_007[4] = 'nssp'
        set gg_rg_007[5] = 'nssp'
    elseif (curset == 3) then
        set gg_rg_007[0] = 'nthl'
        set gg_rg_007[1] = 'nthl'
        set gg_rg_007[2] = 'nthl'
        set gg_rg_007[3] = 'nltl'
        set gg_rg_007[4] = 'nltl'
        set gg_rg_007[5] = -1
    elseif (curset == 4) then
        set gg_rg_007[0] = 'nstl'
        set gg_rg_007[1] = 'nstl'
        set gg_rg_007[2] = 'nstl'
        set gg_rg_007[3] = 'nsts'
        set gg_rg_007[4] = 'nsts'
        set gg_rg_007[5] = 'nsts'
    elseif (curset == 5) then
        set gg_rg_007[0] = 'nmrm'
        set gg_rg_007[1] = 'nmrm'
        set gg_rg_007[2] = 'nmrm'
        set gg_rg_007[3] = 'nmrm'
        set gg_rg_007[4] = 'nmrm'
        set gg_rg_007[5] = 'nmrm'
    elseif (curset == 6) then
        set gg_rg_007[0] = 'nwlg'
        set gg_rg_007[1] = 'nwlg'
        set gg_rg_007[2] = 'nwlg'
        set gg_rg_007[3] = 'nwlg'
        set gg_rg_007[4] = 'nwlg'
        set gg_rg_007[5] = 'nwlg'
    else
        set gg_rg_007[0] = -1
        set gg_rg_007[1] = -1
        set gg_rg_007[2] = -1
        set gg_rg_007[3] = -1
        set gg_rg_007[4] = -1
        set gg_rg_007[5] = -1
    endif

    // Group 8 - Gold Mines 4
    call RandomDistReset(  )
    call RandomDistAddItem( 0, 15 )
    call RandomDistAddItem( 1, 15 )
    call RandomDistAddItem( 2, 14 )
    call RandomDistAddItem( 3, 14 )
    call RandomDistAddItem( 4, 14 )
    call RandomDistAddItem( 5, 14 )
    call RandomDistAddItem( 6, 14 )
    set curset = RandomDistChoose(  )

    if (curset == 0) then
        set gg_rg_008[0] = 'ndtw'
        set gg_rg_008[1] = 'ndth'
        set gg_rg_008[2] = 'ndtb'
        set gg_rg_008[3] = 'ndtt'
        set gg_rg_008[4] = 'ndtp'
        set gg_rg_008[5] = 'ndtr'
    elseif (curset == 1) then
        set gg_rg_008[0] = 'nfrg'
        set gg_rg_008[1] = 'nfre'
        set gg_rg_008[2] = 'nfrs'
        set gg_rg_008[3] = 'nfrl'
        set gg_rg_008[4] = -1
        set gg_rg_008[5] = -1
    elseif (curset == 2) then
        set gg_rg_008[0] = 'nsbm'
        set gg_rg_008[1] = 'nsgt'
        set gg_rg_008[2] = 'nsgt'
        set gg_rg_008[3] = 'nssp'
        set gg_rg_008[4] = 'nssp'
        set gg_rg_008[5] = 'nspr'
    elseif (curset == 3) then
        set gg_rg_008[0] = 'nstw'
        set gg_rg_008[1] = 'nthl'
        set gg_rg_008[2] = 'nltl'
        set gg_rg_008[3] = 'nltl'
        set gg_rg_008[4] = -1
        set gg_rg_008[5] = -1
    elseif (curset == 4) then
        set gg_rg_008[0] = 'nsth'
        set gg_rg_008[1] = 'nstl'
        set gg_rg_008[2] = 'nstl'
        set gg_rg_008[3] = 'nsts'
        set gg_rg_008[4] = 'nsat'
        set gg_rg_008[5] = 'nsty'
    elseif (curset == 5) then
        set gg_rg_008[0] = 'nmmu'
        set gg_rg_008[1] = 'nmmu'
        set gg_rg_008[2] = 'nmrm'
        set gg_rg_008[3] = 'nmrr'
        set gg_rg_008[4] = 'nmrr'
        set gg_rg_008[5] = 'nmrl'
    elseif (curset == 6) then
        set gg_rg_008[0] = 'nwld'
        set gg_rg_008[1] = 'nwld'
        set gg_rg_008[2] = 'nwlg'
        set gg_rg_008[3] = 'nwlg'
        set gg_rg_008[4] = 'nwlt'
        set gg_rg_008[5] = 'nwlt'
    else
        set gg_rg_008[0] = -1
        set gg_rg_008[1] = -1
        set gg_rg_008[2] = -1
        set gg_rg_008[3] = -1
        set gg_rg_008[4] = -1
        set gg_rg_008[5] = -1
    endif

endfunction

//***************************************************************************
//*
//*  Map Item Tables
//*
//***************************************************************************

function ItemTable000000_DropItems takes nothing returns nothing
    local widget  trigWidget = null
    local unit    trigUnit   = null
    local integer itemID     = 0
    local boolean canDrop    = true

    set trigWidget = bj_lastDyingWidget
    if (trigWidget == null) then
        set trigUnit = GetTriggerUnit()
    endif

    if (trigUnit != null) then
        set canDrop = not IsUnitHidden(trigUnit)
        if (canDrop and GetChangingUnit() != null) then
            set canDrop = (GetChangingUnitPrevOwner() == Player(PLAYER_NEUTRAL_AGGRESSIVE))
        endif
    endif

    if (canDrop) then
        // Item set 0
        call RandomDistReset(  )
        call RandomDistAddItem( ChooseRandomItemEx( ITEM_TYPE_ANY, 3 ), 32 )
        call RandomDistAddItem( ChooseRandomItemEx( ITEM_TYPE_ANY, 4 ), 30 )
        call RandomDistAddItem( ChooseRandomItemEx( ITEM_TYPE_ANY, 5 ), 38 )
        set itemID = RandomDistChoose(  )
        if (trigUnit != null) then
            call UnitDropItem( trigUnit, itemID )
        else
            call WidgetDropItem( trigWidget, itemID )
        endif

        // Item set 1
        call RandomDistReset(  )
        call RandomDistAddItem( ChooseRandomItemEx( ITEM_TYPE_ANY, 6 ), 30 )
        call RandomDistAddItem( ChooseRandomItemEx( ITEM_TYPE_ANY, 7 ), 40 )
        call RandomDistAddItem( ChooseRandomItemEx( ITEM_TYPE_ANY, 8 ), 30 )
        set itemID = RandomDistChoose(  )
        if (trigUnit != null) then
            call UnitDropItem( trigUnit, itemID )
        else
            call WidgetDropItem( trigWidget, itemID )
        endif

    endif

    set bj_lastDyingWidget = null
    call DestroyTrigger(GetTriggeringTrigger())
endfunction

function ItemTable000001_DropItems takes nothing returns nothing
    local widget  trigWidget = null
    local unit    trigUnit   = null
    local integer itemID     = 0
    local boolean canDrop    = true

    set trigWidget = bj_lastDyingWidget
    if (trigWidget == null) then
        set trigUnit = GetTriggerUnit()
    endif

    if (trigUnit != null) then
        set canDrop = not IsUnitHidden(trigUnit)
        if (canDrop and GetChangingUnit() != null) then
            set canDrop = (GetChangingUnitPrevOwner() == Player(PLAYER_NEUTRAL_AGGRESSIVE))
        endif
    endif

    if (canDrop) then
        // Item set 0
        call RandomDistReset(  )
        call RandomDistAddItem( ChooseRandomItemEx( ITEM_TYPE_ANY, 1 ), 100 )
        set itemID = RandomDistChoose(  )
        if (trigUnit != null) then
            call UnitDropItem( trigUnit, itemID )
        else
            call WidgetDropItem( trigWidget, itemID )
        endif

        // Item set 1
        call RandomDistReset(  )
        call RandomDistAddItem( ChooseRandomItemEx( ITEM_TYPE_ANY, 1 ), 35 )
        call RandomDistAddItem( -1, 65 )
        set itemID = RandomDistChoose(  )
        if (trigUnit != null) then
            call UnitDropItem( trigUnit, itemID )
        else
            call WidgetDropItem( trigWidget, itemID )
        endif

        // Item set 2
        call RandomDistReset(  )
        call RandomDistAddItem( ChooseRandomItemEx( ITEM_TYPE_ANY, 2 ), 8 )
        call RandomDistAddItem( -1, 92 )
        set itemID = RandomDistChoose(  )
        if (trigUnit != null) then
            call UnitDropItem( trigUnit, itemID )
        else
            call WidgetDropItem( trigWidget, itemID )
        endif

    endif

    set bj_lastDyingWidget = null
    call DestroyTrigger(GetTriggeringTrigger())
endfunction

function ItemTable000002_DropItems takes nothing returns nothing
    local widget  trigWidget = null
    local unit    trigUnit   = null
    local integer itemID     = 0
    local boolean canDrop    = true

    set trigWidget = bj_lastDyingWidget
    if (trigWidget == null) then
        set trigUnit = GetTriggerUnit()
    endif

    if (trigUnit != null) then
        set canDrop = not IsUnitHidden(trigUnit)
        if (canDrop and GetChangingUnit() != null) then
            set canDrop = (GetChangingUnitPrevOwner() == Player(PLAYER_NEUTRAL_AGGRESSIVE))
        endif
    endif

    if (canDrop) then
        // Item set 0
        call RandomDistReset(  )
        call RandomDistAddItem( ChooseRandomItemEx( ITEM_TYPE_POWERUP, 1 ), 34 )
        call RandomDistAddItem( ChooseRandomItemEx( ITEM_TYPE_MISCELLANEOUS, 1 ), 33 )
        call RandomDistAddItem( ChooseRandomItemEx( ITEM_TYPE_PERMANENT, 1 ), 33 )
        set itemID = RandomDistChoose(  )
        if (trigUnit != null) then
            call UnitDropItem( trigUnit, itemID )
        else
            call WidgetDropItem( trigWidget, itemID )
        endif

        // Item set 1
        call RandomDistReset(  )
        call RandomDistAddItem( ChooseRandomItemEx( ITEM_TYPE_POWERUP, 2 ), 20 )
        call RandomDistAddItem( ChooseRandomItemEx( ITEM_TYPE_POWERUP, 1 ), 80 )
        set itemID = RandomDistChoose(  )
        if (trigUnit != null) then
            call UnitDropItem( trigUnit, itemID )
        else
            call WidgetDropItem( trigWidget, itemID )
        endif

    endif

    set bj_lastDyingWidget = null
    call DestroyTrigger(GetTriggeringTrigger())
endfunction

function ItemTable000003_DropItems takes nothing returns nothing
    local widget  trigWidget = null
    local unit    trigUnit   = null
    local integer itemID     = 0
    local boolean canDrop    = true

    set trigWidget = bj_lastDyingWidget
    if (trigWidget == null) then
        set trigUnit = GetTriggerUnit()
    endif

    if (trigUnit != null) then
        set canDrop = not IsUnitHidden(trigUnit)
        if (canDrop and GetChangingUnit() != null) then
            set canDrop = (GetChangingUnitPrevOwner() == Player(PLAYER_NEUTRAL_AGGRESSIVE))
        endif
    endif

    if (canDrop) then
        // Item set 0
        call RandomDistReset(  )
        call RandomDistAddItem( ChooseRandomItemEx( ITEM_TYPE_PERMANENT, 3 ), 34 )
        call RandomDistAddItem( ChooseRandomItemEx( ITEM_TYPE_CHARGED, 3 ), 33 )
        call RandomDistAddItem( ChooseRandomItemEx( ITEM_TYPE_POWERUP, 2 ), 33 )
        set itemID = RandomDistChoose(  )
        if (trigUnit != null) then
            call UnitDropItem( trigUnit, itemID )
        else
            call WidgetDropItem( trigWidget, itemID )
        endif

    endif

    set bj_lastDyingWidget = null
    call DestroyTrigger(GetTriggeringTrigger())
endfunction

function ItemTable000004_DropItems takes nothing returns nothing
    local widget  trigWidget = null
    local unit    trigUnit   = null
    local integer itemID     = 0
    local boolean canDrop    = true

    set trigWidget = bj_lastDyingWidget
    if (trigWidget == null) then
        set trigUnit = GetTriggerUnit()
    endif

    if (trigUnit != null) then
        set canDrop = not IsUnitHidden(trigUnit)
        if (canDrop and GetChangingUnit() != null) then
            set canDrop = (GetChangingUnitPrevOwner() == Player(PLAYER_NEUTRAL_AGGRESSIVE))
        endif
    endif

    if (canDrop) then
        // Item set 0
        call RandomDistReset(  )
        call RandomDistAddItem( ChooseRandomItemEx( ITEM_TYPE_PERMANENT, 2 ), 34 )
        call RandomDistAddItem( ChooseRandomItemEx( ITEM_TYPE_CHARGED, 2 ), 33 )
        call RandomDistAddItem( ChooseRandomItemEx( ITEM_TYPE_POWERUP, 2 ), 33 )
        set itemID = RandomDistChoose(  )
        if (trigUnit != null) then
            call UnitDropItem( trigUnit, itemID )
        else
            call WidgetDropItem( trigWidget, itemID )
        endif

    endif

    set bj_lastDyingWidget = null
    call DestroyTrigger(GetTriggeringTrigger())
endfunction


//***************************************************************************
//*
//*  Sound Assets
//*
//***************************************************************************

function InitSounds takes nothing returns nothing
    set gg_snd_WispDeath1 = CreateSound( "Units\\NightElf\\Wisp\\WispDeath1.wav", false, true, true, 10, 10, "DefaultEAXON" )
    call SetSoundDuration( gg_snd_WispDeath1, 1622 )
    call SetSoundChannel( gg_snd_WispDeath1, 0 )
    call SetSoundVolume( gg_snd_WispDeath1, -1 )
    call SetSoundPitch( gg_snd_WispDeath1, 1.0 )
    call SetSoundDistances( gg_snd_WispDeath1, 0.0, 10000.0 )
    call SetSoundDistanceCutoff( gg_snd_WispDeath1, 3000.0 )
    call SetSoundConeAngles( gg_snd_WispDeath1, 0.0, 0.0, 127 )
    call SetSoundConeOrientation( gg_snd_WispDeath1, 0.0, 0.0, 0.0 )
    set gg_snd_DeathPactTargetBirth1 = CreateSound( "Abilities\\Spells\\Undead\\DeathPact\\DeathPactTargetBirth1.wav", false, true, true, 10, 10, "SpellsEAX" )
    call SetSoundDuration( gg_snd_DeathPactTargetBirth1, 1634 )
    call SetSoundChannel( gg_snd_DeathPactTargetBirth1, 0 )
    call SetSoundVolume( gg_snd_DeathPactTargetBirth1, -1 )
    call SetSoundPitch( gg_snd_DeathPactTargetBirth1, 1.0 )
    call SetSoundDistances( gg_snd_DeathPactTargetBirth1, 0.0, 10000.0 )
    call SetSoundDistanceCutoff( gg_snd_DeathPactTargetBirth1, 3000.0 )
    call SetSoundConeAngles( gg_snd_DeathPactTargetBirth1, 0.0, 0.0, 127 )
    call SetSoundConeOrientation( gg_snd_DeathPactTargetBirth1, 0.0, 0.0, 0.0 )
    set gg_snd_ShardDisruptStart = CreateSound( "Abilities\\Spells\\Human\\Flare\\FlareTarget1.wav", false, false, true, 10, 10, "SpellsEAX" )
    call SetSoundDuration( gg_snd_ShardDisruptStart, 3581 )
    call SetSoundChannel( gg_snd_ShardDisruptStart, 0 )
    call SetSoundVolume( gg_snd_ShardDisruptStart, -1 )
    call SetSoundPitch( gg_snd_ShardDisruptStart, 1.0 )
    set gg_snd_ShardDisruptAdd = CreateSound( "Abilities\\Spells\\Human\\Flare\\FlareTarget4.wav", false, false, true, 10, 10, "SpellsEAX" )
    call SetSoundDuration( gg_snd_ShardDisruptAdd, 1000 )
    call SetSoundChannel( gg_snd_ShardDisruptAdd, 0 )
    call SetSoundVolume( gg_snd_ShardDisruptAdd, -1 )
    call SetSoundPitch( gg_snd_ShardDisruptAdd, 1.0 )
    set gg_snd_ShardDisruptEnd = CreateSound( "Abilities\\Spells\\Undead\\DarkRitual\\DarkRitualTarget1.wav", false, false, true, 10, 10, "SpellsEAX" )
    call SetSoundDuration( gg_snd_ShardDisruptEnd, 3006 )
    call SetSoundChannel( gg_snd_ShardDisruptEnd, 0 )
    call SetSoundVolume( gg_snd_ShardDisruptEnd, -1 )
    call SetSoundPitch( gg_snd_ShardDisruptEnd, 1.0 )
endfunction

//***************************************************************************
//*
//*  Unit Creation
//*
//***************************************************************************

//===========================================================================
function CreateUnitsForPlayer0 takes nothing returns nothing
    local player p = Player(0)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set u = BlzCreateUnitWithSkin( p, 'Hmkg', -2634.5, -3923.0, 187.784, 'Hmkg' )
endfunction

//===========================================================================
function CreateNeutralHostile takes nothing returns nothing
    local player p = Player(PLAYER_NEUTRAL_AGGRESSIVE)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set unitID = gg_rg_006[0]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, 350.1, -1226.5, 233.500, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000000_DropItems )
    endif
    set unitID = gg_rg_006[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, 5.7, -1274.5, 220.734, unitID )
        call SetUnitAcquireRange( u, 200.0 )
    endif
    set unitID = gg_rg_006[3]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, 513.3, -1438.8, 252.210, unitID )
        call SetUnitAcquireRange( u, 200.0 )
    endif
    set unitID = gg_rg_006[1]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, 158.4, -1042.1, 212.449, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000001_DropItems )
    endif
    set unitID = gg_rg_006[4]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, 95.6, -1476.9, 220.495, unitID )
        call SetUnitAcquireRange( u, 200.0 )
    endif
    set unitID = gg_rg_006[5]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, 293.6, -1564.8, 222.972, unitID )
        call SetUnitAcquireRange( u, 200.0 )
    endif
    set unitID = gg_rg_007[0]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, 3301.0, 222.5, 241.640, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000000_DropItems )
    endif
    set unitID = gg_rg_007[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, 2992.2, 159.0, 207.840, unitID )
        call SetUnitAcquireRange( u, 200.0 )
    endif
    set unitID = gg_rg_007[3]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, 3428.2, 1.2, 252.800, unitID )
        call SetUnitAcquireRange( u, 200.0 )
    endif
    set unitID = gg_rg_007[1]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, 3102.9, 399.0, 191.220, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000001_DropItems )
    endif
    set unitID = gg_rg_007[4]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, 3072.5, -63.2, 247.740, unitID )
        call SetUnitAcquireRange( u, 200.0 )
    endif
    set unitID = gg_rg_007[5]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, 3253.2, -113.1, 239.440, unitID )
        call SetUnitAcquireRange( u, 200.0 )
    endif
    set unitID = gg_rg_000[0]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, -3803.2, -2125.3, 332.760, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000000_DropItems )
    endif
    set unitID = gg_rg_000[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, -3468.1, -2062.2, 337.767, unitID )
        call SetUnitAcquireRange( u, 200.0 )
    endif
    set unitID = gg_rg_000[3]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, -3933.3, -2260.3, 314.307, unitID )
        call SetUnitAcquireRange( u, 200.0 )
    endif
    set unitID = gg_rg_000[1]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, -3684.3, -1906.3, 309.850, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000001_DropItems )
    endif
    set unitID = gg_rg_000[4]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, -3479.7, -2284.6, 323.188, unitID )
        call SetUnitAcquireRange( u, 200.0 )
    endif
    set unitID = gg_rg_000[5]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, -3701.7, -2374.1, 315.606, unitID )
        call SetUnitAcquireRange( u, 200.0 )
    endif
    set unitID = gg_rg_008[0]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, -2649.4, 782.5, 0.000, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000000_DropItems )
    endif
    set unitID = gg_rg_008[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, -2614.5, 472.7, 0.000, unitID )
        call SetUnitAcquireRange( u, 200.0 )
    endif
    set unitID = gg_rg_008[3]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, -2410.2, 941.0, 0.000, unitID )
        call SetUnitAcquireRange( u, 200.0 )
    endif
    set unitID = gg_rg_008[1]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, -2868.7, 653.0, 0.000, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000001_DropItems )
    endif
    set unitID = gg_rg_008[4]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, -2397.8, 559.5, 0.000, unitID )
        call SetUnitAcquireRange( u, 200.0 )
    endif
    set unitID = gg_rg_008[5]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, -2272.0, 721.2, 1.330, unitID )
        call SetUnitAcquireRange( u, 200.0 )
    endif
    set unitID = gg_rg_000[0]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, 832.1, 2250.6, 243.433, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000000_DropItems )
    endif
    set unitID = gg_rg_000[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, 439.3, 2215.0, 228.797, unitID )
        call SetUnitAcquireRange( u, 200.0 )
    endif
    set unitID = gg_rg_000[3]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, 1085.1, 1983.1, 217.176, unitID )
        call SetUnitAcquireRange( u, 200.0 )
    endif
    set unitID = gg_rg_000[1]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, 634.4, 2398.9, 213.565, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000001_DropItems )
    endif
    set unitID = gg_rg_000[4]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, 566.1, 1967.9, 225.972, unitID )
        call SetUnitAcquireRange( u, 200.0 )
    endif
    set unitID = gg_rg_000[5]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, 818.5, 1847.3, 228.184, unitID )
        call SetUnitAcquireRange( u, 200.0 )
    endif
    set unitID = gg_rg_006[0]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, 3595.1, 4349.5, 224.640, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000000_DropItems )
    endif
    set unitID = gg_rg_006[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, 3393.8, 4065.0, 247.420, unitID )
        call SetUnitAcquireRange( u, 200.0 )
    endif
    set unitID = gg_rg_006[3]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, 3726.6, 4052.3, 233.150, unitID )
        call SetUnitAcquireRange( u, 200.0 )
    endif
    set unitID = gg_rg_006[1]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, 3293.9, 4423.3, 225.312, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000001_DropItems )
    endif
    set unitID = gg_rg_006[4]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, 3399.3, 3825.5, 237.873, unitID )
        call SetUnitAcquireRange( u, 200.0 )
    endif
    set unitID = gg_rg_006[5]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, 3680.5, 3837.6, 240.445, unitID )
        call SetUnitAcquireRange( u, 200.0 )
    endif
    set unitID = gg_rg_007[0]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, -690.7, 5384.2, 241.900, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000000_DropItems )
    endif
    set unitID = gg_rg_007[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, -326.6, 4994.1, 232.390, unitID )
        call SetUnitAcquireRange( u, 200.0 )
    endif
    set unitID = gg_rg_007[3]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, -945.5, 5358.7, 218.730, unitID )
        call SetUnitAcquireRange( u, 200.0 )
    endif
    set unitID = gg_rg_007[1]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, -400.3, 5311.5, 235.200, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000001_DropItems )
    endif
    set unitID = gg_rg_007[4]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, -625.7, 5024.3, 235.490, unitID )
        call SetUnitAcquireRange( u, 200.0 )
    endif
    set unitID = gg_rg_007[5]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, -852.5, 5094.2, 214.750, unitID )
        call SetUnitAcquireRange( u, 200.0 )
    endif
    set unitID = gg_rg_008[0]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, -3844.2, 4485.4, 0.000, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000000_DropItems )
    endif
    set unitID = gg_rg_008[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, -4128.3, 4302.8, 0.000, unitID )
        call SetUnitAcquireRange( u, 200.0 )
    endif
    set unitID = gg_rg_008[3]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, -3545.6, 4376.6, 0.000, unitID )
        call SetUnitAcquireRange( u, 200.0 )
    endif
    set unitID = gg_rg_008[1]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, -4133.6, 4551.9, 0.000, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000001_DropItems )
    endif
    set unitID = gg_rg_008[4]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, -3934.4, 4158.2, 0.000, unitID )
        call SetUnitAcquireRange( u, 200.0 )
    endif
    set unitID = gg_rg_008[5]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, -3684.7, 4170.0, 0.000, unitID )
        call SetUnitAcquireRange( u, 200.0 )
    endif
    set unitID = gg_rg_002[0]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, -1930.0, -3280.8, 239.470, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000002_DropItems )
    endif
    set unitID = gg_rg_002[1]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, -1939.0, -3093.1, 239.880, unitID )
        call SetUnitAcquireRange( u, 200.0 )
    endif
    set unitID = gg_rg_002[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, -2079.2, -3281.7, 212.890, unitID )
        call SetUnitAcquireRange( u, 200.0 )
    endif
    set unitID = gg_rg_001[0]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, 988.8, -3382.6, 206.175, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000002_DropItems )
    endif
    set unitID = gg_rg_001[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, 1002.7, -3260.3, 179.600, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000002_DropItems )
    endif
    set unitID = gg_rg_001[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, 863.6, -3301.4, 179.600, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000002_DropItems )
    endif
    set unitID = gg_rg_002[0]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, 2558.7, -1837.3, 266.005, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000002_DropItems )
    endif
    set unitID = gg_rg_002[1]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, 2405.2, -1945.8, 251.460, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000002_DropItems )
    endif
    set unitID = gg_rg_002[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, 2639.6, -1962.7, 290.350, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000002_DropItems )
    endif
    set unitID = gg_rg_001[0]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, 3737.5, 1978.5, 124.110, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000002_DropItems )
    endif
    set unitID = gg_rg_001[1]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, 3731.4, 2179.4, 150.899, unitID )
        call SetUnitAcquireRange( u, 200.0 )
    endif
    set unitID = gg_rg_001[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, 3502.4, 2074.7, 90.236, unitID )
        call SetUnitAcquireRange( u, 200.0 )
    endif
    set unitID = gg_rg_001[0]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, -4638.0, 24.0, 28.175, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000002_DropItems )
    endif
    set unitID = gg_rg_001[1]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, -4517.0, -93.2, 51.893, unitID )
        call SetUnitAcquireRange( u, 200.0 )
    endif
    set unitID = gg_rg_001[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, -4569.3, 156.5, 15.463, unitID )
        call SetUnitAcquireRange( u, 200.0 )
    endif
    set unitID = gg_rg_002[0]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, 1621.4, 5737.6, 284.581, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000002_DropItems )
    endif
    set unitID = gg_rg_002[1]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, 1507.5, 5556.2, 272.137, unitID )
        call SetUnitAcquireRange( u, 200.0 )
    endif
    set unitID = gg_rg_002[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, 1837.4, 5669.5, 317.417, unitID )
        call SetUnitAcquireRange( u, 200.0 )
    endif
    set unitID = gg_rg_002[0]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, -1717.6, 2891.3, 239.470, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000002_DropItems )
    endif
    set unitID = gg_rg_002[1]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, -1607.3, 2751.9, 239.880, unitID )
        call SetUnitAcquireRange( u, 200.0 )
    endif
    set unitID = gg_rg_002[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, -1899.8, 2893.8, 212.890, unitID )
        call SetUnitAcquireRange( u, 200.0 )
    endif
    set unitID = gg_rg_001[0]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, -3219.5, 6585.1, 266.073, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000002_DropItems )
    endif
    set unitID = gg_rg_001[1]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, -3065.0, 6501.9, 231.069, unitID )
        call SetUnitAcquireRange( u, 200.0 )
    endif
    set unitID = gg_rg_001[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, -3352.2, 6523.6, 295.163, unitID )
        call SetUnitAcquireRange( u, 200.0 )
    endif
    set unitID = gg_rg_003[0]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, -3832.8, -6670.5, 94.338, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000003_DropItems )
    endif
    set unitID = gg_rg_003[1]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, -4043.1, -6545.3, 97.919, unitID )
        call SetUnitAcquireRange( u, 200.0 )
    endif
    set unitID = gg_rg_003[3]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, -3851.3, -6415.6, 91.197, unitID )
        call SetUnitAcquireRange( u, 200.0 )
    endif
    set unitID = gg_rg_003[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, -3644.5, -6545.0, 84.142, unitID )
        call SetUnitAcquireRange( u, 200.0 )
    endif
    set unitID = gg_rg_003[0]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, -1302.3, -6646.3, 96.381, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000003_DropItems )
    endif
    set unitID = gg_rg_003[1]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, -1512.6, -6521.0, 88.976, unitID )
        call SetUnitAcquireRange( u, 200.0 )
    endif
    set unitID = gg_rg_003[3]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, -1320.8, -6391.4, 95.551, unitID )
        call SetUnitAcquireRange( u, 200.0 )
    endif
    set unitID = gg_rg_003[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, -1114.0, -6520.7, 111.224, unitID )
        call SetUnitAcquireRange( u, 200.0 )
    endif
    set unitID = gg_rg_003[0]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, 1255.6, -6676.6, 95.430, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000003_DropItems )
    endif
    set unitID = gg_rg_003[1]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, 1045.4, -6551.3, 81.855, unitID )
        call SetUnitAcquireRange( u, 200.0 )
    endif
    set unitID = gg_rg_003[3]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, 1237.1, -6421.7, 95.579, unitID )
        call SetUnitAcquireRange( u, 200.0 )
    endif
    set unitID = gg_rg_003[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, 1444.0, -6551.0, 86.736, unitID )
        call SetUnitAcquireRange( u, 200.0 )
    endif
    set unitID = gg_rg_003[0]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, 3836.4, -6670.1, 98.701, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000003_DropItems )
    endif
    set unitID = gg_rg_003[1]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, 3626.1, -6544.9, 98.486, unitID )
        call SetUnitAcquireRange( u, 200.0 )
    endif
    set unitID = gg_rg_003[3]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, 3817.9, -6415.3, 85.879, unitID )
        call SetUnitAcquireRange( u, 200.0 )
    endif
    set unitID = gg_rg_003[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, 4024.7, -6544.6, 89.247, unitID )
        call SetUnitAcquireRange( u, 200.0 )
    endif
    set unitID = gg_rg_004[0]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, -2308.0, -801.5, 0.000, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000004_DropItems )
    endif
    set unitID = gg_rg_004[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, -2096.4, -891.2, 262.209, unitID )
        call SetUnitAcquireRange( u, 200.0 )
    endif
    set unitID = gg_rg_004[1]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, -2375.6, -1039.4, 329.708, unitID )
        call SetUnitAcquireRange( u, 200.0 )
    endif
    set unitID = gg_rg_004[3]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, -2213.2, -1003.4, 293.732, unitID )
        call SetUnitAcquireRange( u, 200.0 )
    endif
    set unitID = gg_rg_005[0]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, 4874.4, -2459.9, 121.960, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000001_DropItems )
    endif
    set unitID = gg_rg_005[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, 4656.3, -2387.0, 98.440, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000004_DropItems )
    endif
    set unitID = gg_rg_005[1]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, 4923.2, -2217.5, 148.920, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000002_DropItems )
    endif
    set unitID = gg_rg_005[3]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, 4764.1, -2266.0, 123.760, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000002_DropItems )
    endif
    set unitID = gg_rg_005[0]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, -466.3, 151.5, 86.501, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000004_DropItems )
    endif
    set unitID = gg_rg_005[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, -584.7, 402.4, 74.931, unitID )
        call SetUnitAcquireRange( u, 200.0 )
    endif
    set unitID = gg_rg_005[1]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, -316.5, 332.8, 105.235, unitID )
        call SetUnitAcquireRange( u, 200.0 )
    endif
    set unitID = gg_rg_005[3]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, -432.5, 527.9, 92.193, unitID )
        call SetUnitAcquireRange( u, 200.0 )
    endif
    set unitID = gg_rg_004[0]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, 4798.7, 1569.2, 230.450, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000004_DropItems )
    endif
    set unitID = gg_rg_004[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, 4920.3, 1374.1, 195.529, unitID )
        call SetUnitAcquireRange( u, 200.0 )
    endif
    set unitID = gg_rg_004[1]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, 4606.6, 1413.6, 242.767, unitID )
        call SetUnitAcquireRange( u, 200.0 )
    endif
    set unitID = gg_rg_004[3]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, 4760.1, 1349.5, 200.527, unitID )
        call SetUnitAcquireRange( u, 200.0 )
    endif
    set unitID = gg_rg_005[0]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, 3383.3, 6628.6, 330.850, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000004_DropItems )
    endif
    set unitID = gg_rg_005[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, 3524.5, 6447.2, 0.000, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000002_DropItems )
    endif
    set unitID = gg_rg_005[1]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, 3208.4, 6453.9, 0.000, unitID )
        call SetUnitAcquireRange( u, 200.0 )
    endif
    set unitID = gg_rg_005[3]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, 3367.8, 6406.2, 0.000, unitID )
        call SetUnitAcquireRange( u, 200.0 )
    endif
    set unitID = gg_rg_004[0]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, 892.4, 6771.8, 189.480, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000004_DropItems )
    endif
    set unitID = gg_rg_004[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, 803.9, 6559.7, 226.349, unitID )
        call SetUnitAcquireRange( u, 200.0 )
    endif
    set unitID = gg_rg_004[1]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, 654.3, 6838.1, 240.016, unitID )
        call SetUnitAcquireRange( u, 200.0 )
    endif
    set unitID = gg_rg_004[3]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, 691.1, 6675.9, 204.040, unitID )
        call SetUnitAcquireRange( u, 200.0 )
    endif
    set unitID = gg_rg_005[0]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, -1983.2, 4061.6, 198.940, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000004_DropItems )
    endif
    set unitID = gg_rg_005[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, -2061.7, 3845.5, 171.869, unitID )
        call SetUnitAcquireRange( u, 200.0 )
    endif
    set unitID = gg_rg_005[1]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, -2224.2, 4116.6, 223.570, unitID )
        call SetUnitAcquireRange( u, 200.0 )
    endif
    set unitID = gg_rg_005[3]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, -2179.8, 3956.3, 191.520, unitID )
        call SetUnitAcquireRange( u, 200.0 )
    endif
    set unitID = gg_rg_004[0]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, -4633.0, 2312.6, 340.016, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000004_DropItems )
    endif
    set unitID = gg_rg_004[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, -4405.9, 2347.8, 354.739, unitID )
        call SetUnitAcquireRange( u, 200.0 )
    endif
    set unitID = gg_rg_004[1]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, -4565.3, 2074.8, 359.051, unitID )
        call SetUnitAcquireRange( u, 200.0 )
    endif
    set unitID = gg_rg_004[3]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, -4446.2, 2190.8, 359.523, unitID )
        call SetUnitAcquireRange( u, 200.0 )
    endif
    set unitID = gg_rg_005[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, 4636.2, -2103.5, 98.440, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000004_DropItems )
    endif
    set unitID = gg_rg_001[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, 865.6, -3440.7, 179.600, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000002_DropItems )
    endif
    set unitID = gg_rg_001[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, -1992.4, -3429.4, 179.600, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000002_DropItems )
    endif
    set unitID = gg_rg_001[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, -1748.1, -3075.5, 179.600, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000002_DropItems )
    endif
    set unitID = gg_rg_005[0]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, 5073.7, 811.2, 121.960, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000001_DropItems )
    endif
    set unitID = gg_rg_005[0]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, 4864.0, 1062.7, 121.960, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000001_DropItems )
    endif
    set unitID = gg_rg_002[0]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, 2899.7, -2161.7, 266.005, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000002_DropItems )
    endif
    set unitID = gg_rg_002[0]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, 2691.2, -2227.8, 266.005, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000002_DropItems )
    endif
    set unitID = gg_rg_002[0]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, 2486.1, -2274.9, 266.005, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000002_DropItems )
    endif
    set unitID = gg_rg_002[0]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, 2247.4, -2198.6, 266.005, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000002_DropItems )
    endif
    set unitID = gg_rg_002[0]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, 1113.8, -3299.6, 266.005, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000002_DropItems )
    endif
    set unitID = gg_rg_002[0]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, -1691.7, -3267.7, 266.005, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000002_DropItems )
    endif
    set unitID = gg_rg_002[0]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, -1799.6, -3361.3, 266.005, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000002_DropItems )
    endif
    set unitID = gg_rg_000[0]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, -3902.7, -1925.2, 332.760, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000000_DropItems )
    endif
    set unitID = gg_rg_005[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, 3156.8, 6606.3, 0.000, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000002_DropItems )
    endif
    set unitID = gg_rg_005[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, 3020.9, 6460.8, 0.000, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000002_DropItems )
    endif
    set unitID = gg_rg_005[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, 3651.5, 6644.8, 0.000, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000002_DropItems )
    endif
    set unitID = gg_rg_005[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, 678.1, 1780.2, 0.000, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000002_DropItems )
    endif
    set unitID = gg_rg_005[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, 973.0, 1756.8, 0.000, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000002_DropItems )
    endif
    set unitID = gg_rg_005[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, 4459.9, -2220.6, 98.440, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000004_DropItems )
    endif
    set unitID = gg_rg_005[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, 4822.4, -2043.3, 98.440, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000004_DropItems )
    endif
    set unitID = gg_rg_005[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, 3778.3, -3015.9, 98.440, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000004_DropItems )
    endif
    set unitID = gg_rg_005[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, 3671.5, -3117.8, 98.440, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000004_DropItems )
    endif
    set unitID = gg_rg_005[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, 3873.1, -3221.9, 98.440, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000004_DropItems )
    endif
    set unitID = gg_rg_005[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, 1775.6, -3161.4, 98.440, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000004_DropItems )
    endif
    set unitID = gg_rg_005[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, 1859.1, -3041.4, 98.440, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000004_DropItems )
    endif
    set unitID = gg_rg_005[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, 1880.4, -3272.6, 98.440, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000004_DropItems )
    endif
    set unitID = gg_rg_005[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, -867.7, -2610.8, 98.440, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000004_DropItems )
    endif
    set unitID = gg_rg_005[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, -861.6, -2737.8, 98.440, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000004_DropItems )
    endif
    set unitID = gg_rg_005[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, -761.9, -2677.9, 98.440, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000004_DropItems )
    endif
    set unitID = gg_rg_005[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, -794.7, -2495.7, 98.440, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000004_DropItems )
    endif
    set unitID = gg_rg_005[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, -1643.7, -2253.6, 98.440, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000004_DropItems )
    endif
    set unitID = gg_rg_005[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, -1785.4, -2227.5, 98.440, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000004_DropItems )
    endif
    set unitID = gg_rg_005[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, -1550.8, -2120.0, 98.440, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000004_DropItems )
    endif
    set unitID = gg_rg_005[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, -1683.7, -2069.4, 98.440, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000004_DropItems )
    endif
    set unitID = gg_rg_001[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, -2054.9, -3048.7, 179.600, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000002_DropItems )
    endif
    set unitID = gg_rg_001[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, -1818.2, -3179.5, 179.600, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000002_DropItems )
    endif
    set unitID = gg_rg_001[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, -1631.0, -3160.0, 179.600, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000002_DropItems )
    endif
    set unitID = gg_rg_001[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, -1991.4, -2963.9, 179.600, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000002_DropItems )
    endif
    set unitID = gg_rg_001[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, 4939.4, -1968.3, 179.600, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000002_DropItems )
    endif
    set unitID = gg_rg_001[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, 4879.1, -1799.3, 179.600, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000002_DropItems )
    endif
    set unitID = gg_rg_001[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, 4705.0, -1816.1, 179.600, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000002_DropItems )
    endif
    set unitID = gg_rg_001[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, 4594.5, -1912.1, 179.600, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000002_DropItems )
    endif
    set unitID = gg_rg_001[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, 4467.5, -1986.3, 179.600, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000002_DropItems )
    endif
    set unitID = gg_rg_001[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, 4347.5, -2083.6, 179.600, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000002_DropItems )
    endif
    set unitID = gg_rg_001[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, 4622.9, 1166.1, 179.600, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000002_DropItems )
    endif
    set unitID = gg_rg_001[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, 4716.0, 1042.5, 179.600, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000002_DropItems )
    endif
    set unitID = gg_rg_001[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, 4807.2, 840.7, 179.600, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000002_DropItems )
    endif
    set unitID = gg_rg_001[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, 4951.0, 687.6, 179.600, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000002_DropItems )
    endif
    set unitID = gg_rg_001[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, 4918.5, 847.0, 179.600, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000002_DropItems )
    endif
    set unitID = gg_rg_001[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, 5029.9, 1062.6, 179.600, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000002_DropItems )
    endif
    set unitID = gg_rg_001[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, 5059.9, 1246.9, 179.600, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000002_DropItems )
    endif
    set unitID = gg_rg_001[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, 4420.3, 1254.3, 179.600, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000002_DropItems )
    endif
    set unitID = gg_rg_001[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, 4481.9, 1088.7, 179.600, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000002_DropItems )
    endif
    set unitID = gg_rg_001[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, 4562.1, 988.8, 179.600, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000002_DropItems )
    endif
    set unitID = gg_rg_001[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, 4663.5, 832.6, 179.600, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000002_DropItems )
    endif
    set unitID = gg_rg_001[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, 4770.7, 705.8, 179.600, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000002_DropItems )
    endif
    set unitID = gg_rg_001[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, 4886.5, 581.5, 179.600, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000002_DropItems )
    endif
    set unitID = gg_rg_001[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, 5024.2, 508.9, 179.600, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000002_DropItems )
    endif
    set unitID = gg_rg_001[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, 5127.6, 631.6, 179.600, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000002_DropItems )
    endif
    set unitID = gg_rg_001[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, -816.0, -2857.7, 179.600, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000002_DropItems )
    endif
    set unitID = gg_rg_001[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, -682.1, -2828.2, 179.600, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000002_DropItems )
    endif
    set unitID = gg_rg_001[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, -626.5, -2649.9, 179.600, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000002_DropItems )
    endif
    set unitID = gg_rg_001[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, -682.5, -2475.8, 179.600, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000002_DropItems )
    endif
    set unitID = gg_rg_001[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, -881.9, -2364.4, 179.600, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000002_DropItems )
    endif
    set unitID = gg_rg_001[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, -777.1, -2249.1, 179.600, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000002_DropItems )
    endif
    set unitID = gg_rg_001[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, 462.4, 6928.1, 179.600, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000002_DropItems )
    endif
    set unitID = gg_rg_001[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, 530.6, 6705.2, 179.600, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000002_DropItems )
    endif
    set unitID = gg_rg_001[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, 622.0, 6473.0, 179.600, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000002_DropItems )
    endif
    set unitID = gg_rg_001[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, 730.0, 6312.7, 179.600, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000002_DropItems )
    endif
    set unitID = gg_rg_001[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, 1938.5, 5875.2, 179.600, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000002_DropItems )
    endif
    set unitID = gg_rg_001[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, 1772.1, 5795.7, 179.600, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000002_DropItems )
    endif
    set unitID = gg_rg_001[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, 1678.9, 5537.5, 179.600, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000002_DropItems )
    endif
    set unitID = gg_rg_001[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, 1989.9, 5676.8, 179.600, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000002_DropItems )
    endif
    set unitID = gg_rg_001[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, 3681.7, 6418.5, 179.600, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000002_DropItems )
    endif
    set unitID = gg_rg_001[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, 3663.1, 6227.5, 179.600, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000002_DropItems )
    endif
    set unitID = gg_rg_001[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, 3508.6, 6228.7, 179.600, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000002_DropItems )
    endif
    set unitID = gg_rg_001[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, 3343.1, 6228.4, 179.600, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000002_DropItems )
    endif
    set unitID = gg_rg_001[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, 3155.4, 6228.4, 179.600, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000002_DropItems )
    endif
    set unitID = gg_rg_001[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, 2960.3, 6260.8, 179.600, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000002_DropItems )
    endif
    set unitID = gg_rg_001[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, -3207.3, 6422.5, 179.600, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000002_DropItems )
    endif
    set unitID = gg_rg_001[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, -3360.0, 6355.5, 179.600, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000002_DropItems )
    endif
    set unitID = gg_rg_001[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, -3505.4, 6343.2, 179.600, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000002_DropItems )
    endif
    set unitID = gg_rg_001[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, -3209.0, 6289.6, 179.600, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000002_DropItems )
    endif
    set unitID = gg_rg_001[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, -3046.1, 6321.4, 179.600, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000002_DropItems )
    endif
    set unitID = gg_rg_001[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, -2920.5, 6411.4, 179.600, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000002_DropItems )
    endif
    set unitID = gg_rg_001[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, -4795.9, 2421.6, 179.600, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000002_DropItems )
    endif
    set unitID = gg_rg_001[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, -4820.6, 2247.1, 179.600, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000002_DropItems )
    endif
    set unitID = gg_rg_001[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, -4806.0, 2051.0, 179.600, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000002_DropItems )
    endif
    set unitID = gg_rg_001[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, -4991.7, 2480.0, 179.600, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000002_DropItems )
    endif
    set unitID = gg_rg_001[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, -5004.2, 2303.9, 179.600, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000002_DropItems )
    endif
    set unitID = gg_rg_001[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, -5007.2, 2118.0, 179.600, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000002_DropItems )
    endif
    set unitID = gg_rg_001[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, -4973.6, 1961.2, 179.600, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000002_DropItems )
    endif
    set unitID = gg_rg_001[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, -5185.6, 2463.1, 179.600, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000002_DropItems )
    endif
    set unitID = gg_rg_001[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, -5185.0, 2273.1, 179.600, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000002_DropItems )
    endif
    set unitID = gg_rg_001[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, -5163.1, 2087.9, 179.600, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000002_DropItems )
    endif
    set unitID = gg_rg_001[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, -5103.3, 1924.4, 179.600, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000002_DropItems )
    endif
    set unitID = gg_rg_001[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, -4885.1, 170.4, 179.600, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000002_DropItems )
    endif
    set unitID = gg_rg_001[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, -4856.1, -52.3, 179.600, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000002_DropItems )
    endif
    set unitID = gg_rg_001[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, -4665.8, -236.0, 179.600, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000002_DropItems )
    endif
    set unitID = gg_rg_001[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, -5027.0, 194.1, 179.600, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000002_DropItems )
    endif
    set unitID = gg_rg_001[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, -5024.8, 67.6, 179.600, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000002_DropItems )
    endif
    set unitID = gg_rg_001[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, -4977.5, -130.1, 179.600, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000002_DropItems )
    endif
    set unitID = gg_rg_001[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, -5176.5, 176.8, 179.600, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000002_DropItems )
    endif
    set unitID = gg_rg_001[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, -5123.3, -3.3, 179.600, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000002_DropItems )
    endif
    set unitID = gg_rg_001[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, -5107.0, -137.5, 179.600, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000002_DropItems )
    endif
    set unitID = gg_rg_001[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, -5188.6, 325.0, 179.600, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000002_DropItems )
    endif
    set unitID = gg_rg_001[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, 1173.7, -3546.6, 179.600, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000002_DropItems )
    endif
    set unitID = gg_rg_001[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, 1066.4, -3590.5, 179.600, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000002_DropItems )
    endif
    set unitID = gg_rg_001[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, 931.6, -3599.0, 179.600, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000002_DropItems )
    endif
    set unitID = gg_rg_001[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, 786.8, -3579.7, 179.600, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000002_DropItems )
    endif
    set unitID = gg_rg_001[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, 686.3, -3488.8, 179.600, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000002_DropItems )
    endif
    set unitID = gg_rg_001[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, 3905.3, -2981.8, 179.600, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000002_DropItems )
    endif
    set unitID = gg_rg_001[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, 3985.9, -2863.4, 179.600, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000002_DropItems )
    endif
    set unitID = gg_rg_001[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, 4114.5, -2736.3, 179.600, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000002_DropItems )
    endif
    set unitID = gg_rg_001[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, 3796.6, -2753.6, 179.600, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000002_DropItems )
    endif
    set unitID = gg_rg_001[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, 3663.5, -2855.6, 179.600, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000002_DropItems )
    endif
    set unitID = gg_rg_001[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, 3530.3, -3011.8, 179.600, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000002_DropItems )
    endif
    set unitID = gg_rg_001[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, 3554.0, -3213.9, 179.600, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000002_DropItems )
    endif
    set unitID = gg_rg_001[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, 1814.6, -2908.0, 179.600, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000002_DropItems )
    endif
    set unitID = gg_rg_001[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, 2001.3, -3019.0, 179.600, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000002_DropItems )
    endif
    set unitID = gg_rg_001[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, 1996.7, -3254.1, 179.600, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000002_DropItems )
    endif
    set unitID = gg_rg_001[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, 1747.7, -2668.1, 179.600, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000002_DropItems )
    endif
    set unitID = gg_rg_001[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, -230.7, 591.3, 179.600, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000002_DropItems )
    endif
    set unitID = gg_rg_001[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, -675.6, 587.5, 179.600, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000002_DropItems )
    endif
    set unitID = gg_rg_001[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, -537.8, 648.1, 179.600, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000002_DropItems )
    endif
    set unitID = gg_rg_001[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, -364.5, 663.1, 179.600, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000002_DropItems )
    endif
    set unitID = gg_rg_001[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, -195.8, 752.2, 179.600, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000002_DropItems )
    endif
    set unitID = gg_rg_001[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, -344.8, 816.2, 179.600, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000002_DropItems )
    endif
    set unitID = gg_rg_001[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, -473.9, 809.6, 179.600, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000002_DropItems )
    endif
    set unitID = gg_rg_001[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, -628.1, 795.1, 179.600, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000002_DropItems )
    endif
    set unitID = gg_rg_001[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, -728.9, 773.7, 179.600, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000002_DropItems )
    endif
    set unitID = gg_rg_001[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, 1843.6, 5559.3, 179.600, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000002_DropItems )
    endif
    set unitID = gg_rg_001[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, -4983.9, 258.4, 179.600, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000002_DropItems )
    endif
    set unitID = gg_rg_001[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, -4827.1, 265.3, 179.600, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000002_DropItems )
    endif
    set unitID = gg_rg_001[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, -4801.6, 59.6, 179.600, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000002_DropItems )
    endif
    set unitID = gg_rg_001[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, -4734.5, 213.0, 179.600, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000002_DropItems )
    endif
    set unitID = gg_rg_001[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, -4794.9, -292.9, 179.600, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000002_DropItems )
    endif
    set unitID = gg_rg_001[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, -4658.1, -124.9, 179.600, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000002_DropItems )
    endif
    set unitID = gg_rg_001[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, -5191.7, -122.9, 179.600, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000002_DropItems )
    endif
    set unitID = gg_rg_001[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, -5241.6, -270.9, 179.600, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000002_DropItems )
    endif
    set unitID = gg_rg_001[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, -4483.2, 191.0, 179.600, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000002_DropItems )
    endif
    set unitID = gg_rg_001[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, -4511.2, -317.4, 179.600, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000002_DropItems )
    endif
    set unitID = gg_rg_001[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, 5043.4, -2359.0, 179.600, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000002_DropItems )
    endif
    set unitID = gg_rg_001[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, 5016.2, -2550.4, 179.600, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000002_DropItems )
    endif
    set unitID = gg_rg_001[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, 4776.1, -2561.5, 179.600, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000002_DropItems )
    endif
    set unitID = gg_rg_001[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, 4659.4, -2496.4, 179.600, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000002_DropItems )
    endif
    set unitID = gg_rg_001[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, 4547.8, -2392.2, 179.600, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000002_DropItems )
    endif
    set unitID = gg_rg_001[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, 4562.5, -2232.6, 179.600, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000002_DropItems )
    endif
    set unitID = gg_rg_001[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, 2671.0, -1719.0, 179.600, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000002_DropItems )
    endif
    set unitID = gg_rg_001[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, 2781.6, -1818.4, 179.600, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000002_DropItems )
    endif
    set unitID = gg_rg_001[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, 2810.1, -1953.8, 179.600, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000002_DropItems )
    endif
    set unitID = gg_rg_001[2]
    if (unitID != -1) then
        set u = BlzCreateUnitWithSkin( p, unitID, 2549.8, -1604.7, 179.600, unitID )
        call SetUnitAcquireRange( u, 200.0 )
        set t = CreateTrigger(  )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
        call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_CHANGE_OWNER )
        call TriggerAddAction( t, function ItemTable000002_DropItems )
    endif
endfunction

//===========================================================================
function CreateNeutralPassiveBuildings takes nothing returns nothing
    local player p = Player(PLAYER_NEUTRAL_PASSIVE)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set u = BlzCreateUnitWithSkin( p, 'ngol', -3840.0, -7168.0, 270.000, 'ngol' )
    call SetResourceAmount( u, 1000000 )
    set u = BlzCreateUnitWithSkin( p, 'ngol', -1280.0, -7168.0, 270.000, 'ngol' )
    call SetResourceAmount( u, 1000000 )
    set u = BlzCreateUnitWithSkin( p, 'ngol', 1280.0, -7168.0, 270.000, 'ngol' )
    call SetResourceAmount( u, 1000000 )
    set u = BlzCreateUnitWithSkin( p, 'ngol', 3840.0, -7168.0, 270.000, 'ngol' )
    call SetResourceAmount( u, 1000000 )
    set u = BlzCreateUnitWithSkin( p, 'ngol', -3392.0, -1728.0, 270.000, 'ngol' )
    call SetResourceAmount( u, 1000000 )
    set u = BlzCreateUnitWithSkin( p, 'ngol', 3648.0, 384.0, 270.000, 'ngol' )
    call SetResourceAmount( u, 1000000 )
    set u = BlzCreateUnitWithSkin( p, 'ngol', -3328.0, 4736.0, 270.000, 'ngol' )
    call SetResourceAmount( u, 1000000 )
    set u = BlzCreateUnitWithSkin( p, 'ngol', -448.0, 5760.0, 270.000, 'ngol' )
    call SetResourceAmount( u, 1000000 )
    set u = BlzCreateUnitWithSkin( p, 'ngol', -2816.0, 1280.0, 270.000, 'ngol' )
    call SetResourceAmount( u, 1000000 )
    set u = BlzCreateUnitWithSkin( p, 'ngol', 4032.0, 4160.0, 270.000, 'ngol' )
    call SetResourceAmount( u, 1000000 )
    set u = BlzCreateUnitWithSkin( p, 'ngol', 576.0, -896.0, 270.000, 'ngol' )
    call SetResourceAmount( u, 1000000 )
    set u = BlzCreateUnitWithSkin( p, 'ngol', 1088.0, 2752.0, 270.000, 'ngol' )
    call SetResourceAmount( u, 1000000 )
    set u = BlzCreateUnitWithSkin( p, 'o000', 576.0, 3648.0, 270.000, 'o000' )
    set u = BlzCreateUnitWithSkin( p, 'ntav', 64.0, -4096.0, 270.000, 'ntav' )
    call SetUnitColor( u, ConvertPlayerColor(0) )
    set u = BlzCreateUnitWithSkin( p, 'nmrk', 512.0, -4416.0, 270.000, 'nmrk' )
    call SetUnitColor( u, ConvertPlayerColor(0) )
    set u = BlzCreateUnitWithSkin( p, 'ngme', -320.0, -4416.0, 270.000, 'ngme' )
endfunction

//===========================================================================
function CreateNeutralPassive takes nothing returns nothing
    local player p = Player(PLAYER_NEUTRAL_PASSIVE)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set u = BlzCreateUnitWithSkin( p, 'n002', 606.8, 3394.4, 104.082, 'n002' )
    set u = BlzCreateUnitWithSkin( p, 'n007', 828.8, 3529.0, 145.084, 'n007' )
    set u = BlzCreateUnitWithSkin( p, 'n000', 454.0, 3439.5, 59.012, 'n000' )
    set u = BlzCreateUnitWithSkin( p, 'n00A', 559.5, 3315.5, 96.178, 'n00A' )
    set u = BlzCreateUnitWithSkin( p, 'n008', 679.2, 3314.8, 90.571, 'n008' )
    set u = BlzCreateUnitWithSkin( p, 'n009', 811.3, 3346.0, 128.691, 'n009' )
    set u = BlzCreateUnitWithSkin( p, 'n00B', 894.5, 3399.7, 124.633, 'n00B' )
    set u = BlzCreateUnitWithSkin( p, 'nspr', 735.0, 3422.3, 116.220, 'nspr' )
endfunction

//===========================================================================
function CreatePlayerBuildings takes nothing returns nothing
endfunction

//===========================================================================
function CreatePlayerUnits takes nothing returns nothing
    call CreateUnitsForPlayer0(  )
endfunction

//===========================================================================
function CreateAllUnits takes nothing returns nothing
    call CreateNeutralPassiveBuildings(  )
    call CreatePlayerBuildings(  )
    call CreateNeutralHostile(  )
    call CreateNeutralPassive(  )
    call CreatePlayerUnits(  )
endfunction

//***************************************************************************
//*
//*  Regions
//*
//***************************************************************************

function CreateRegions takes nothing returns nothing
    local weathereffect we

    set gg_rct_Monolith_1 = Rect( -4096.0, -2112.0, -3712.0, -1728.0 )
    set gg_rct_Monolith_2 = Rect( 192.0, -1600.0, 576.0, -1216.0 )
    set gg_rct_Monolith_3 = Rect( 2944.0, 384.0, 3328.0, 768.0 )
    set gg_rct_Monolith_4 = Rect( -2624.0, 1600.0, -2240.0, 1984.0 )
    set gg_rct_Monolith_5 = Rect( 1216.0, 2048.0, 1600.0, 2432.0 )
    set gg_rct_Monolith_6 = Rect( 3520.0, 3456.0, 3904.0, 3840.0 )
    set gg_rct_Monolith_7 = Rect( -256.0, 5056.0, 128.0, 5440.0 )
    set gg_rct_Monolith_8 = Rect( -4032.0, 4416.0, -3648.0, 4800.0 )
    set gg_rct_NH_Creeps_1 = Rect( -4128.0, -2560.0, -3008.0, -1440.0 )
    set gg_rct_NH_Creeps_2 = Rect( -192.0, -1760.0, 928.0, -640.0 )
    set gg_rct_NH_Creeps_3 = Rect( 2816.0, -352.0, 3936.0, 768.0 )
    set gg_rct_NH_Creeps_4 = Rect( -3104.0, 288.0, -1984.0, 1408.0 )
    set gg_rct_NH_Creeps_5 = Rect( 192.0, 1568.0, 1312.0, 2688.0 )
    set gg_rct_NH_Creeps_6 = Rect( 3104.0, 3552.0, 4224.0, 4672.0 )
    set gg_rct_NH_Creeps_7 = Rect( -1152.0, 4640.0, -32.0, 5760.0 )
    set gg_rct_NH_Creeps_8 = Rect( -4384.0, 3808.0, -3264.0, 4928.0 )
    set gg_rct_Player_Mine_1 = Rect( -4096.0, -7424.0, -3584.0, -6912.0 )
    set gg_rct_Player_Mine_2 = Rect( -1536.0, -7424.0, -1024.0, -6912.0 )
    set gg_rct_Player_Mine_3 = Rect( 1024.0, -7424.0, 1536.0, -6912.0 )
    set gg_rct_Player_Mine_4 = Rect( 3584.0, -7424.0, 4096.0, -6912.0 )
    set gg_rct_Player_Start_1 = Rect( -4352.0, -6912.0, -3328.0, -5888.0 )
    set gg_rct_Player_Start_2 = Rect( -1792.0, -6912.0, -768.0, -5888.0 )
    set gg_rct_Player_Start_3 = Rect( 768.0, -6912.0, 1792.0, -5888.0 )
    set gg_rct_Player_Start_4 = Rect( 3328.0, -6912.0, 4352.0, -5888.0 )
    set gg_rct_Monolith_Intro_Area = Rect( 0.0, 3040.0, 1248.0, 4128.0 )
    set gg_rct_Penalty_Box = Rect( -5344.0, 6880.0, -5088.0, 7136.0 )
    set gg_rct_No_Shards = Rect( -5376.0, -5024.0, 5344.0, -3168.0 )
endfunction

//***************************************************************************
//*
//*  Cameras
//*
//***************************************************************************

function CreateCameras takes nothing returns nothing

    set gg_cam_Monolith_Intro_Shot = CreateCameraSetup(  )
    call CameraSetupSetField( gg_cam_Monolith_Intro_Shot, CAMERA_FIELD_ZOFFSET, 0.0, 0.0 )
    call CameraSetupSetField( gg_cam_Monolith_Intro_Shot, CAMERA_FIELD_ROTATION, 77.7, 0.0 )
    call CameraSetupSetField( gg_cam_Monolith_Intro_Shot, CAMERA_FIELD_ANGLE_OF_ATTACK, 320.8, 0.0 )
    call CameraSetupSetField( gg_cam_Monolith_Intro_Shot, CAMERA_FIELD_TARGET_DISTANCE, 1363.6, 0.0 )
    call CameraSetupSetField( gg_cam_Monolith_Intro_Shot, CAMERA_FIELD_ROLL, 0.0, 0.0 )
    call CameraSetupSetField( gg_cam_Monolith_Intro_Shot, CAMERA_FIELD_FIELD_OF_VIEW, 70.0, 0.0 )
    call CameraSetupSetField( gg_cam_Monolith_Intro_Shot, CAMERA_FIELD_FARZ, 9743.6, 0.0 )
    call CameraSetupSetField( gg_cam_Monolith_Intro_Shot, CAMERA_FIELD_NEARZ, 100.0, 0.0 )
    call CameraSetupSetField( gg_cam_Monolith_Intro_Shot, CAMERA_FIELD_LOCAL_PITCH, 0.0, 0.0 )
    call CameraSetupSetField( gg_cam_Monolith_Intro_Shot, CAMERA_FIELD_LOCAL_YAW, 0.0, 0.0 )
    call CameraSetupSetField( gg_cam_Monolith_Intro_Shot, CAMERA_FIELD_LOCAL_ROLL, 0.0, 0.0 )
    call CameraSetupSetDestPosition( gg_cam_Monolith_Intro_Shot, 1002.0, 3640.6, 0.0 )

endfunction

//***************************************************************************
//*
//*  Triggers
//*
//***************************************************************************

//===========================================================================
// Trigger: Remove Sockpuppet
//
// 绉婚櫎椹敳
//===========================================================================
function Trig_Remove_Sockpuppet_Conditions takes nothing returns boolean
    if ( not ( GetUnitTypeId(GetTriggerUnit()) == 'h001' ) ) then
        return false
    endif
    return true
endfunction

function Trig_Remove_Sockpuppet_Actions takes nothing returns nothing
    call RemoveUnit( GetTriggerUnit() )
endfunction

//===========================================================================
function InitTrig_Remove_Sockpuppet takes nothing returns nothing
    set gg_trg_Remove_Sockpuppet = CreateTrigger(  )
    call TriggerRegisterAnyUnitEventBJ( gg_trg_Remove_Sockpuppet, EVENT_PLAYER_UNIT_DEATH )
    call TriggerAddCondition( gg_trg_Remove_Sockpuppet, Condition( function Trig_Remove_Sockpuppet_Conditions ) )
    call TriggerAddAction( gg_trg_Remove_Sockpuppet, function Trig_Remove_Sockpuppet_Actions )
endfunction


//===========================================================================
// Trigger: Map Init
//===========================================================================
function Trig_Map_Init_Actions takes nothing returns nothing
    // First thing, set up our variables
    call ConditionalTriggerExecute( gg_trg_Init_Variables )
    // Use appropriate melee setup
    call MeleeStartingVisibility(  )
    call MeleeStartingHeroLimit(  )
    call MeleeGrantHeroItems(  )
    call MeleeStartingResources(  )
    // Set up players
    call ConditionalTriggerExecute( gg_trg_Set_Up_User_Players )
    call ConditionalTriggerExecute( gg_trg_Set_Up_Creep_Players )
    // Apply team coloring to initial units
    call ConditionalTriggerExecute( gg_trg_Team_Coloring_Update_All )
    // Run intro cinematic
    call ConditionalTriggerExecute( gg_trg_Intro_Cinematic_Start )
endfunction

//===========================================================================
function InitTrig_Map_Init takes nothing returns nothing
    set gg_trg_Map_Init = CreateTrigger(  )
    call TriggerAddAction( gg_trg_Map_Init, function Trig_Map_Init_Actions )
endfunction

//===========================================================================
// Trigger: Init Variables
//===========================================================================
function Trig_Init_Variables_Func007Func001C takes nothing returns boolean
    if ( not ( GetPlayerSlotState(udg_userPlayers[GetForLoopIndexA()]) == PLAYER_SLOT_STATE_PLAYING ) ) then
        return false
    endif
    return true
endfunction

function Trig_Init_Variables_Func014001 takes nothing returns boolean
    return ( udg_numCreepPlayers == 1 )
endfunction

function Trig_Init_Variables_Func015001 takes nothing returns boolean
    return ( udg_numCreepPlayers == 2 )
endfunction

function Trig_Init_Variables_Func016001 takes nothing returns boolean
    return ( udg_numCreepPlayers == 3 )
endfunction

function Trig_Init_Variables_Func019001 takes nothing returns boolean
    return ( udg_numCreepPlayers == 1 )
endfunction

function Trig_Init_Variables_Func020001 takes nothing returns boolean
    return ( udg_numCreepPlayers == 2 )
endfunction

function Trig_Init_Variables_Func021001 takes nothing returns boolean
    return ( udg_numCreepPlayers == 3 )
endfunction

function Trig_Init_Variables_Func024001 takes nothing returns boolean
    return ( udg_numCreepPlayers == 1 )
endfunction

function Trig_Init_Variables_Func025001 takes nothing returns boolean
    return ( udg_numCreepPlayers == 2 )
endfunction

function Trig_Init_Variables_Func026001 takes nothing returns boolean
    return ( udg_numCreepPlayers == 3 )
endfunction

function Trig_Init_Variables_Func029001 takes nothing returns boolean
    return ( udg_numCreepPlayers == 2 )
endfunction

function Trig_Init_Variables_Func030001 takes nothing returns boolean
    return ( udg_numCreepPlayers == 1 )
endfunction

function Trig_Init_Variables_Actions takes nothing returns nothing
    // Set up user player slots
    set udg_userPlayers[0] = Player(0)
    set udg_userPlayers[1] = Player(1)
    set udg_userPlayers[2] = Player(2)
    set udg_userPlayers[3] = Player(3)
    // Add all playing users to the player group
    set bj_forLoopAIndex = 0
    set bj_forLoopAIndexEnd = 3
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if ( Trig_Init_Variables_Func007Func001C() ) then
            call ForceAddPlayerSimple( udg_userPlayers[GetForLoopIndexA()], udg_userPlayerGroup )
        else
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    // One creep player for each user
    set udg_numCreepPlayers = CountPlayersInForceBJ(udg_userPlayerGroup)
    set udg_numMonolithsStart = udg_numCreepPlayers
    // Shard penalty unit based on number of players
    set udg_shardPenaltyUnitType = 'u003'
    if ( Trig_Init_Variables_Func014001() ) then
        set udg_shardPenaltyUnitType = 'u000'
    else
        call DoNothing(  )
    endif
    if ( Trig_Init_Variables_Func015001() ) then
        set udg_shardPenaltyUnitType = 'u001'
    else
        call DoNothing(  )
    endif
    if ( Trig_Init_Variables_Func016001() ) then
        set udg_shardPenaltyUnitType = 'u002'
    else
        call DoNothing(  )
    endif
    // Shard hostile chance based on number of players
    set udg_shardHostileChance = 20
    if ( Trig_Init_Variables_Func019001() ) then
        set udg_shardHostileChance = 40
    else
        call DoNothing(  )
    endif
    if ( Trig_Init_Variables_Func020001() ) then
        set udg_shardHostileChance = 30
    else
        call DoNothing(  )
    endif
    if ( Trig_Init_Variables_Func021001() ) then
        set udg_shardHostileChance = 25
    else
        call DoNothing(  )
    endif
    // Shard disruption time based on number of players
    set udg_shardDisruptionTime = 20.00
    if ( Trig_Init_Variables_Func024001() ) then
        set udg_shardDisruptionTime = 60.00
    else
        call DoNothing(  )
    endif
    if ( Trig_Init_Variables_Func025001() ) then
        set udg_shardDisruptionTime = 45.00
    else
        call DoNothing(  )
    endif
    if ( Trig_Init_Variables_Func026001() ) then
        set udg_shardDisruptionTime = 30.00
    else
        call DoNothing(  )
    endif
    // Hero level required to attack enemy players
    set udg_aiAttackEnemyHeroLevel = 3
    if ( Trig_Init_Variables_Func029001() ) then
        set udg_aiAttackEnemyHeroLevel = 4
    else
        call DoNothing(  )
    endif
    if ( Trig_Init_Variables_Func030001() ) then
        set udg_aiAttackEnemyHeroLevel = 5
    else
        call DoNothing(  )
    endif
    // Set up start location regions
    set udg_startLocRegions[0] = gg_rct_Monolith_1
    set udg_startLocRegions[1] = gg_rct_Monolith_2
    set udg_startLocRegions[2] = gg_rct_Monolith_3
    set udg_startLocRegions[3] = gg_rct_Monolith_4
    set udg_startLocRegions[4] = gg_rct_Monolith_5
    set udg_startLocRegions[5] = gg_rct_Monolith_6
    set udg_startLocRegions[6] = gg_rct_Monolith_7
    set udg_startLocRegions[7] = gg_rct_Monolith_8
    // Set up start location hostile creep regions
    set udg_startLocNHCRegions[0] = gg_rct_NH_Creeps_1
    set udg_startLocNHCRegions[1] = gg_rct_NH_Creeps_2
    set udg_startLocNHCRegions[2] = gg_rct_NH_Creeps_3
    set udg_startLocNHCRegions[3] = gg_rct_NH_Creeps_4
    set udg_startLocNHCRegions[4] = gg_rct_NH_Creeps_5
    set udg_startLocNHCRegions[5] = gg_rct_NH_Creeps_6
    set udg_startLocNHCRegions[6] = gg_rct_NH_Creeps_7
    set udg_startLocNHCRegions[7] = gg_rct_NH_Creeps_8
    // Set up user start regions
    set udg_userStartRegions[0] = gg_rct_Player_Start_1
    set udg_userStartRegions[1] = gg_rct_Player_Start_2
    set udg_userStartRegions[2] = gg_rct_Player_Start_3
    set udg_userStartRegions[3] = gg_rct_Player_Start_4
    // Set up user mine regions
    set udg_userMineRegions[0] = gg_rct_Player_Mine_1
    set udg_userMineRegions[1] = gg_rct_Player_Mine_2
    set udg_userMineRegions[2] = gg_rct_Player_Mine_3
    set udg_userMineRegions[3] = gg_rct_Player_Mine_4
    // Randomize start regions
    set bj_forLoopAIndex = 0
    set bj_forLoopAIndexEnd = 3
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        set udg_tempRandom = GetRandomInt(0, 3)
        // Swap start regions
        set udg_swapRegion = udg_userStartRegions[GetForLoopIndexA()]
        set udg_userStartRegions[GetForLoopIndexA()] = udg_userStartRegions[udg_tempRandom]
        set udg_userStartRegions[udg_tempRandom] = udg_swapRegion
        // Swap mine regions
        set udg_swapRegion = udg_userMineRegions[GetForLoopIndexA()]
        set udg_userMineRegions[GetForLoopIndexA()] = udg_userMineRegions[udg_tempRandom]
        set udg_userMineRegions[udg_tempRandom] = udg_swapRegion
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    // Save user start locations
    set udg_userStartLocations[0] = GetRectCenter(udg_userStartRegions[0])
    set udg_userStartLocations[1] = GetRectCenter(udg_userStartRegions[1])
    set udg_userStartLocations[2] = GetRectCenter(udg_userStartRegions[2])
    set udg_userStartLocations[3] = GetRectCenter(udg_userStartRegions[3])
    // Set up creep player slots
    set udg_cpPlayers[0] = Player(4)
    set udg_cpPlayers[1] = Player(5)
    set udg_cpPlayers[2] = Player(6)
    set udg_cpPlayers[3] = Player(7)
    set bj_forLoopAIndex = 0
    set bj_forLoopAIndexEnd = 3
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        call ForceAddPlayerSimple( udg_cpPlayers[GetForLoopIndexA()], udg_creepPlayerGroup )
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    // Pick random colors for creep players
    set bj_forLoopAIndex = 0
    set bj_forLoopAIndexEnd = 3
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        set udg_tempRandom = GetRandomInt(0, 3)
        set udg_swapColor = GetPlayerColor(udg_cpPlayers[GetForLoopIndexA()])
        call SetPlayerColorBJ( udg_cpPlayers[GetForLoopIndexA()], GetPlayerColor(udg_cpPlayers[udg_tempRandom]), true )
        call SetPlayerColorBJ( udg_cpPlayers[udg_tempRandom], udg_swapColor, true )
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    // Set up creep type info and message strings
    call ConditionalTriggerExecute( gg_trg_Creep_Type_Info )
    call ConditionalTriggerExecute( gg_trg_Externalized_Strings )
    // Store the shard timer window
    call CreateTimerDialogBJ( udg_shardTimer, "TRIGSTR_043" )
    set udg_shardTimerWindow = GetLastCreatedTimerDialogBJ()
endfunction

//===========================================================================
function InitTrig_Init_Variables takes nothing returns nothing
    set gg_trg_Init_Variables = CreateTrigger(  )
    call TriggerAddAction( gg_trg_Init_Variables, function Trig_Init_Variables_Actions )
endfunction

//===========================================================================
// Trigger: Externalized Strings
//===========================================================================
function Trig_Externalized_Strings_Actions takes nothing returns nothing
    // Set up some number-based messages as string arrays
    // Note: Normally it'd be easier to just use the string concatentation functionality to build
    //           these strings dynamically, but string concatentation does not work with externalized
    //           strings, and we need all strings externalized for language translation purposes.
    // --------
    // Monoliths Revealed
    set udg_textMonolithsRevealed[1] = StringIdentity("TRIGSTR_321")
    set udg_textMonolithsRevealed[2] = StringIdentity("TRIGSTR_326")
    set udg_textMonolithsRevealed[3] = StringIdentity("TRIGSTR_328")
    set udg_textMonolithsRevealed[4] = StringIdentity("TRIGSTR_331")
    // Monolith Quest Requirement
    set udg_textMonolithQuest[0] = StringIdentity("TRIGSTR_335")
    set udg_textMonolithQuest[1] = StringIdentity("TRIGSTR_341")
    set udg_textMonolithQuest[2] = StringIdentity("TRIGSTR_343")
    set udg_textMonolithQuest[3] = StringIdentity("TRIGSTR_345")
    set udg_textMonolithQuest[4] = StringIdentity("TRIGSTR_347")
    // Leaderboard
    // Note: The text for values x/n use index x + 4*(n-1)
    set udg_textLeaderboard[0] = StringIdentity("TRIGSTR_354")
    set udg_textLeaderboard[1] = StringIdentity("TRIGSTR_352")
    set udg_textLeaderboard[4] = StringIdentity("TRIGSTR_357")
    set udg_textLeaderboard[5] = StringIdentity("TRIGSTR_360")
    set udg_textLeaderboard[6] = StringIdentity("TRIGSTR_363")
    set udg_textLeaderboard[8] = StringIdentity("TRIGSTR_366")
    set udg_textLeaderboard[9] = StringIdentity("TRIGSTR_369")
    set udg_textLeaderboard[10] = StringIdentity("TRIGSTR_372")
    set udg_textLeaderboard[11] = StringIdentity("TRIGSTR_375")
    set udg_textLeaderboard[12] = StringIdentity("TRIGSTR_378")
    set udg_textLeaderboard[13] = StringIdentity("TRIGSTR_381")
    set udg_textLeaderboard[14] = StringIdentity("TRIGSTR_384")
    set udg_textLeaderboard[15] = StringIdentity("TRIGSTR_387")
    set udg_textLeaderboard[16] = StringIdentity("TRIGSTR_390")
endfunction

//===========================================================================
function InitTrig_Externalized_Strings takes nothing returns nothing
    set gg_trg_Externalized_Strings = CreateTrigger(  )
    call TriggerAddAction( gg_trg_Externalized_Strings, function Trig_Externalized_Strings_Actions )
endfunction

//===========================================================================
// Trigger: Creep Type Info
//===========================================================================
function Trig_Creep_Type_Info_Actions takes nothing returns nothing
    set udg_numCreepTypes = 8
    // Lizards
    set udg_creepWorkers[0] = 'n000'
    set udg_creepBarracks[0] = 'o001'
    set udg_creepHeros[0] = 'O002'
    set udg_creepAIs[0] = "war3mapImported\\Lizard_AI.ai"
    set udg_creepNames[0] = StringIdentity("TRIGSTR_301")
    // Beasts
    set udg_creepWorkers[1] = 'n002'
    set udg_creepBarracks[1] = 'o003'
    set udg_creepHeros[1] = 'Nbst'
    set udg_creepAIs[1] = "war3mapImported\\Beast_AI.ai"
    set udg_creepNames[1] = StringIdentity("TRIGSTR_303")
    // Spiders
    set udg_creepWorkers[2] = 'n006'
    set udg_creepBarracks[2] = 'o004'
    set udg_creepHeros[2] = 'O005'
    set udg_creepAIs[2] = "war3mapImported\\Spider_AI.ai"
    set udg_creepNames[2] = StringIdentity("TRIGSTR_305")
    // Furbolgs
    set udg_creepWorkers[3] = 'n007'
    set udg_creepBarracks[3] = 'o006'
    set udg_creepHeros[3] = 'O007'
    set udg_creepAIs[3] = "war3mapImported\\Furbolg_AI.ai"
    set udg_creepNames[3] = StringIdentity("TRIGSTR_307")
    // Satyrs
    set udg_creepWorkers[4] = 'n008'
    set udg_creepBarracks[4] = 'o008'
    set udg_creepHeros[4] = 'O009'
    set udg_creepAIs[4] = "war3mapImported\\Satyr_AI.ai"
    set udg_creepNames[4] = StringIdentity("TRIGSTR_309")
    // Wolves
    set udg_creepWorkers[5] = 'n009'
    set udg_creepBarracks[5] = 'o00A'
    set udg_creepHeros[5] = 'O00B'
    set udg_creepAIs[5] = "war3mapImported\\Wolf_AI.ai"
    set udg_creepNames[5] = StringIdentity("TRIGSTR_311")
    // Murlocs
    set udg_creepWorkers[6] = 'n00A'
    set udg_creepBarracks[6] = 'o00D'
    set udg_creepHeros[6] = 'O00C'
    set udg_creepAIs[6] = "war3mapImported\\Murloc_AI.ai"
    set udg_creepNames[6] = StringIdentity("TRIGSTR_313")
    // Dark Trolls
    set udg_creepWorkers[7] = 'n00B'
    set udg_creepBarracks[7] = 'o00F'
    set udg_creepHeros[7] = 'O00G'
    set udg_creepAIs[7] = "war3mapImported\\Troll_AI.ai"
    set udg_creepNames[7] = StringIdentity("TRIGSTR_315")
endfunction

//===========================================================================
function InitTrig_Creep_Type_Info takes nothing returns nothing
    set gg_trg_Creep_Type_Info = CreateTrigger(  )
    call TriggerAddAction( gg_trg_Creep_Type_Info, function Trig_Creep_Type_Info_Actions )
endfunction

//===========================================================================
// Trigger: Find User From Player
//
// Helper trigger to find the user index from a given player.
// - Input: tempPlayer
// - Output: userCurrent
//===========================================================================
function Trig_Find_User_From_Player_Func002Func001C takes nothing returns boolean
    if ( not ( udg_userPlayers[GetForLoopIndexA()] == udg_tempPlayer ) ) then
        return false
    endif
    return true
endfunction

function Trig_Find_User_From_Player_Actions takes nothing returns nothing
    set udg_userCurrent = -1
    set bj_forLoopAIndex = 0
    set bj_forLoopAIndexEnd = 3
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if ( Trig_Find_User_From_Player_Func002Func001C() ) then
            set udg_userCurrent = GetForLoopIndexA()
        else
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
endfunction

//===========================================================================
function InitTrig_Find_User_From_Player takes nothing returns nothing
    set gg_trg_Find_User_From_Player = CreateTrigger(  )
    call TriggerAddAction( gg_trg_Find_User_From_Player, function Trig_Find_User_From_Player_Actions )
endfunction

//===========================================================================
// Trigger: Set Up User Players
//===========================================================================
function Trig_Set_Up_User_Players_Func002Func002Func001001002 takes nothing returns boolean
    return ( RectContainsUnit(udg_userStartRegions[udg_userCurrent], GetFilterUnit()) == true )
endfunction

function Trig_Set_Up_User_Players_Func002Func002Func001A takes nothing returns nothing
    call RemoveUnit( GetEnumUnit() )
endfunction

function Trig_Set_Up_User_Players_Func002Func002C takes nothing returns boolean
    if ( not ( GetPlayerSlotState(udg_userPlayers[udg_userCurrent]) == PLAYER_SLOT_STATE_PLAYING ) ) then
        return false
    endif
    return true
endfunction

function Trig_Set_Up_User_Players_Func004Func002C takes nothing returns boolean
    if ( not ( GetPlayerSlotState(udg_userPlayers[udg_userCurrent]) == PLAYER_SLOT_STATE_PLAYING ) ) then
        return false
    endif
    return true
endfunction

function Trig_Set_Up_User_Players_Actions takes nothing returns nothing
    // Clear out neutral hostile units from used start locations
    set bj_forLoopAIndex = 0
    set bj_forLoopAIndexEnd = 3
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        set udg_userCurrent = GetForLoopIndexA()
        if ( Trig_Set_Up_User_Players_Func002Func002C() ) then
            call ForGroupBJ( GetUnitsOfPlayerMatching(Player(PLAYER_NEUTRAL_AGGRESSIVE), Condition(function Trig_Set_Up_User_Players_Func002Func002Func001001002)), function Trig_Set_Up_User_Players_Func002Func002Func001A )
        else
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    // Create each player
    set bj_forLoopAIndex = 0
    set bj_forLoopAIndexEnd = 3
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        set udg_userCurrent = GetForLoopIndexA()
        if ( Trig_Set_Up_User_Players_Func004Func002C() ) then
            // Occupied player slot, create player
            call ConditionalTriggerExecute( gg_trg_Create_User_Player )
        else
            // Empty player slot
            call ConditionalTriggerExecute( gg_trg_Empty_Player )
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
endfunction

//===========================================================================
function InitTrig_Set_Up_User_Players takes nothing returns nothing
    set gg_trg_Set_Up_User_Players = CreateTrigger(  )
    call TriggerAddAction( gg_trg_Set_Up_User_Players, function Trig_Set_Up_User_Players_Actions )
endfunction

//===========================================================================
// Trigger: Empty Player
//===========================================================================
function Trig_Empty_Player_Func002Func001C takes nothing returns boolean
    if ( not ( GetUnitTypeId(GetEnumUnit()) == 'ngol' ) ) then
        return false
    endif
    return true
endfunction

function Trig_Empty_Player_Func002A takes nothing returns nothing
    if ( Trig_Empty_Player_Func002Func001C() ) then
        call RemoveUnit( GetEnumUnit() )
    else
    endif
endfunction

function Trig_Empty_Player_Func005001 takes nothing returns boolean
    return ( udg_tempRandom == 1 )
endfunction

function Trig_Empty_Player_Func006001 takes nothing returns boolean
    return ( udg_tempRandom == 2 )
endfunction

function Trig_Empty_Player_Func007001 takes nothing returns boolean
    return ( udg_tempRandom == 3 )
endfunction

function Trig_Empty_Player_Func008001 takes nothing returns boolean
    return ( udg_tempRandom == 4 )
endfunction

function Trig_Empty_Player_Func009001 takes nothing returns boolean
    return ( udg_tempRandom == 5 )
endfunction

function Trig_Empty_Player_Func010001 takes nothing returns boolean
    return ( udg_tempRandom == 6 )
endfunction

function Trig_Empty_Player_Actions takes nothing returns nothing
    // Remove gold mine
    call ForGroupBJ( GetUnitsInRectAll(udg_userMineRegions[udg_userCurrent]), function Trig_Empty_Player_Func002A )
    // Create random neutral building
    set udg_tempRandom = GetRandomInt(1, 6)
    if ( Trig_Empty_Player_Func005001() ) then
        call CreateNUnitsAtLoc( 1, 'ngme', Player(PLAYER_NEUTRAL_PASSIVE), GetRectCenter(udg_userMineRegions[udg_userCurrent]), bj_UNIT_FACING )
    else
        call DoNothing(  )
    endif
    if ( Trig_Empty_Player_Func006001() ) then
        call CreateNUnitsAtLoc( 1, 'nmr5', Player(PLAYER_NEUTRAL_PASSIVE), GetRectCenter(udg_userMineRegions[udg_userCurrent]), bj_UNIT_FACING )
    else
        call DoNothing(  )
    endif
    if ( Trig_Empty_Player_Func007001() ) then
        call CreateNUnitsAtLoc( 1, 'ntav', Player(PLAYER_NEUTRAL_PASSIVE), GetRectCenter(udg_userMineRegions[udg_userCurrent]), bj_UNIT_FACING )
    else
        call DoNothing(  )
    endif
    if ( Trig_Empty_Player_Func008001() ) then
        call CreateNUnitsAtLoc( 1, 'nfoh', Player(PLAYER_NEUTRAL_PASSIVE), GetRectCenter(udg_userMineRegions[udg_userCurrent]), bj_UNIT_FACING )
    else
        call DoNothing(  )
    endif
    if ( Trig_Empty_Player_Func009001() ) then
        call CreateNUnitsAtLoc( 1, 'nmoo', Player(PLAYER_NEUTRAL_PASSIVE), GetRectCenter(udg_userMineRegions[udg_userCurrent]), bj_UNIT_FACING )
    else
        call DoNothing(  )
    endif
    if ( Trig_Empty_Player_Func010001() ) then
        call CreateNUnitsAtLoc( 1, 'ngad', Player(PLAYER_NEUTRAL_PASSIVE), GetRectCenter(udg_userMineRegions[udg_userCurrent]), bj_UNIT_FACING )
    else
        call DoNothing(  )
    endif
endfunction

//===========================================================================
function InitTrig_Empty_Player takes nothing returns nothing
    set gg_trg_Empty_Player = CreateTrigger(  )
    call TriggerAddAction( gg_trg_Empty_Player, function Trig_Empty_Player_Actions )
endfunction

//===========================================================================
// Trigger: Create User Player
//===========================================================================
function Trig_Create_User_Player_Func004001 takes nothing returns boolean
    return ( GetPlayerController(udg_userPlayers[udg_userCurrent]) == MAP_CONTROL_COMPUTER )
endfunction

function Trig_Create_User_Player_Actions takes nothing returns nothing
    // Create the starting units
    call MeleeStartingUnitsForPlayer( GetPlayerRace(udg_userPlayers[udg_userCurrent]), udg_userPlayers[udg_userCurrent], udg_userStartLocations[udg_userCurrent], true )
    // Start the normal melee AI if this is a computer
    if ( Trig_Create_User_Player_Func004001() ) then
        call ConditionalTriggerExecute( gg_trg_Start_Melee_AI )
    else
        call DoNothing(  )
    endif
endfunction

//===========================================================================
function InitTrig_Create_User_Player takes nothing returns nothing
    set gg_trg_Create_User_Player = CreateTrigger(  )
    call TriggerAddAction( gg_trg_Create_User_Player, function Trig_Create_User_Player_Actions )
endfunction

//===========================================================================
// Trigger: Start Melee AI
//===========================================================================
function Trig_Start_Melee_AI_Func001001 takes nothing returns boolean
    return ( GetPlayerRace(udg_userPlayers[udg_userCurrent]) == RACE_HUMAN )
endfunction

function Trig_Start_Melee_AI_Func002001 takes nothing returns boolean
    return ( GetPlayerRace(udg_userPlayers[udg_userCurrent]) == RACE_ORC )
endfunction

function Trig_Start_Melee_AI_Func003001 takes nothing returns boolean
    return ( GetPlayerRace(udg_userPlayers[udg_userCurrent]) == RACE_UNDEAD )
endfunction

function Trig_Start_Melee_AI_Func004001 takes nothing returns boolean
    return ( GetPlayerRace(udg_userPlayers[udg_userCurrent]) == RACE_NIGHTELF )
endfunction

function Trig_Start_Melee_AI_Actions takes nothing returns nothing
    if ( Trig_Start_Melee_AI_Func001001() ) then
        call StartMeleeAI( udg_userPlayers[udg_userCurrent], "human.ai" )
    else
        call DoNothing(  )
    endif
    if ( Trig_Start_Melee_AI_Func002001() ) then
        call StartMeleeAI( udg_userPlayers[udg_userCurrent], "orc.ai" )
    else
        call DoNothing(  )
    endif
    if ( Trig_Start_Melee_AI_Func003001() ) then
        call StartMeleeAI( udg_userPlayers[udg_userCurrent], "undead.ai" )
    else
        call DoNothing(  )
    endif
    if ( Trig_Start_Melee_AI_Func004001() ) then
        call StartMeleeAI( udg_userPlayers[udg_userCurrent], "elf.ai" )
    else
        call DoNothing(  )
    endif
endfunction

//===========================================================================
function InitTrig_Start_Melee_AI takes nothing returns nothing
    set gg_trg_Start_Melee_AI = CreateTrigger(  )
    call TriggerAddAction( gg_trg_Start_Melee_AI, function Trig_Start_Melee_AI_Actions )
endfunction

//===========================================================================
// Trigger: Choose Random Location
//===========================================================================
function Trig_Choose_Random_Location_Func003Func002001 takes nothing returns boolean
    return ( udg_startLocUsed[udg_startLocCurrentID] == false )
endfunction

function Trig_Choose_Random_Location_Actions takes nothing returns nothing
    // Technically this can fail if it happens to choose a used location 1000 times in a row
    // But that's so unlikely I'm not going to worry about it...
    set udg_tempCounter = 1
    loop
        exitwhen udg_tempCounter > 1000
        set udg_startLocCurrentID = GetRandomInt(0, 7)
        if ( Trig_Choose_Random_Location_Func003Func002001() ) then
            return
        else
            call DoNothing(  )
        endif
        set udg_tempCounter = udg_tempCounter + 1
    endloop
endfunction

//===========================================================================
function InitTrig_Choose_Random_Location takes nothing returns nothing
    set gg_trg_Choose_Random_Location = CreateTrigger(  )
    call TriggerAddAction( gg_trg_Choose_Random_Location, function Trig_Choose_Random_Location_Actions )
endfunction

//===========================================================================
// Trigger: Set Up Creep Players
//===========================================================================
function Trig_Set_Up_Creep_Players_Func001Func003C takes nothing returns boolean
    if ( not ( udg_debugCreepType == -1 ) ) then
        return false
    endif
    return true
endfunction

function Trig_Set_Up_Creep_Players_Actions takes nothing returns nothing
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = udg_numCreepPlayers
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        set udg_cpCurrent = ( GetForLoopIndexA() - 1 )
        // Choose random creep type for each player
        if ( Trig_Set_Up_Creep_Players_Func001Func003C() ) then
            set udg_cpCreepTypes[udg_cpCurrent] = GetRandomInt(0, ( udg_numCreepTypes - 1 ))
        else
            set udg_cpCreepTypes[udg_cpCurrent] = udg_debugCreepType
        endif
        // Get unused starting location for this player
        call ConditionalTriggerExecute( gg_trg_Choose_Random_Location )
        set udg_startLocUsed[udg_startLocCurrentID] = true
        set udg_startLocCurrent = udg_startLocRegions[udg_startLocCurrentID]
        // Create this creep player's initial units
        call ConditionalTriggerExecute( gg_trg_Create_Creep_Player )
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    // Hide remaining unused creep players from the score screen
    set bj_forLoopAIndex = udg_numCreepPlayers
    set bj_forLoopAIndexEnd = 3
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        call SetPlayerOnScoreScreenBJ( false, udg_cpPlayers[GetForLoopIndexA()] )
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
endfunction

//===========================================================================
function InitTrig_Set_Up_Creep_Players takes nothing returns nothing
    set gg_trg_Set_Up_Creep_Players = CreateTrigger(  )
    call TriggerAddAction( gg_trg_Set_Up_Creep_Players, function Trig_Set_Up_Creep_Players_Actions )
endfunction

//===========================================================================
// Trigger: Create Creep Player
//===========================================================================
function Trig_Create_Creep_Player_Func004001002 takes nothing returns boolean
    return ( RectContainsUnit(udg_startLocNHCRegions[udg_startLocCurrentID], GetFilterUnit()) == true )
endfunction

function Trig_Create_Creep_Player_Func004A takes nothing returns nothing
    call RemoveUnit( GetEnumUnit() )
endfunction

function Trig_Create_Creep_Player_Actions takes nothing returns nothing
    // Save start location ID
    set udg_cpStartLocID[udg_cpCurrent] = udg_startLocCurrentID
    // Remove any neutral units from this location
    call ForGroupBJ( GetUnitsOfPlayerMatching(Player(PLAYER_NEUTRAL_AGGRESSIVE), Condition(function Trig_Create_Creep_Player_Func004001002)), function Trig_Create_Creep_Player_Func004A )
    // Create the Monolith
    call CreateNUnitsAtLoc( 1, 'o000', udg_cpPlayers[udg_cpCurrent], GetRectCenter(udg_startLocCurrent), bj_UNIT_FACING )
    // Create the workers
    call CreateNUnitsAtLoc( 4, udg_creepWorkers[udg_cpCreepTypes[udg_cpCurrent]], udg_cpPlayers[udg_cpCurrent], GetRectCenter(udg_startLocCurrent), bj_UNIT_FACING )
    // Set starting resources
    call SetPlayerStateBJ( udg_cpPlayers[udg_cpCurrent], PLAYER_STATE_RESOURCE_GOLD, 1000 )
    call SetPlayerStateBJ( udg_cpPlayers[udg_cpCurrent], PLAYER_STATE_RESOURCE_LUMBER, 4 )
    // Give them a free hero, just like the users
    call SetPlayerStateBJ( udg_cpPlayers[udg_cpCurrent], PLAYER_STATE_RESOURCE_HERO_TOKENS, 1 )
    // Limit training to one hero
    call SetPlayerTechMaxAllowedSwap( udg_creepHeros[udg_cpCurrent], 1, udg_cpPlayers[udg_cpCurrent] )
    // Enforce creep food limit
    call SetPlayerStateBJ( udg_cpPlayers[udg_cpCurrent], PLAYER_STATE_FOOD_CAP_CEILING, udg_creepFoodLimit )
    // Set the player name
    call SetPlayerName( udg_cpPlayers[udg_cpCurrent], udg_creepNames[udg_cpCreepTypes[udg_cpCurrent]] )
    // Start the AI
    call StartMeleeAI( udg_cpPlayers[udg_cpCurrent], udg_creepAIs[udg_cpCreepTypes[udg_cpCurrent]] )
endfunction

//===========================================================================
function InitTrig_Create_Creep_Player takes nothing returns nothing
    set gg_trg_Create_Creep_Player = CreateTrigger(  )
    call TriggerAddAction( gg_trg_Create_Creep_Player, function Trig_Create_Creep_Player_Actions )
endfunction

//===========================================================================
// Trigger: Place All Shards
//===========================================================================
function Trig_Place_All_Shards_Func003001 takes nothing returns boolean
    return ( udg_numCreepPlayers == 2 )
endfunction

function Trig_Place_All_Shards_Func004001 takes nothing returns boolean
    return ( udg_numCreepPlayers == 3 )
endfunction

function Trig_Place_All_Shards_Func005001 takes nothing returns boolean
    return ( udg_numCreepPlayers == 4 )
endfunction

function Trig_Place_All_Shards_Actions takes nothing returns nothing
    // Place disabled shards randomly around the map
    set udg_maxNumShards = 4
    if ( Trig_Place_All_Shards_Func003001() ) then
        set udg_maxNumShards = 5
    else
        call DoNothing(  )
    endif
    if ( Trig_Place_All_Shards_Func004001() ) then
        set udg_maxNumShards = 6
    else
        call DoNothing(  )
    endif
    if ( Trig_Place_All_Shards_Func005001() ) then
        set udg_maxNumShards = 8
    else
        call DoNothing(  )
    endif
    set udg_tempInt = GetRandomInt(3, udg_maxNumShards)
    // Note: Use the tempCounter here, because A and B are used in Place One Shard
    set udg_tempCounter = 1
    loop
        exitwhen udg_tempCounter > udg_tempInt
        call ConditionalTriggerExecute( gg_trg_Place_One_Shard )
        set udg_tempCounter = udg_tempCounter + 1
    endloop
endfunction

//===========================================================================
function InitTrig_Place_All_Shards takes nothing returns nothing
    set gg_trg_Place_All_Shards = CreateTrigger(  )
    call TriggerAddAction( gg_trg_Place_All_Shards, function Trig_Place_All_Shards_Actions )
endfunction

//===========================================================================
// Trigger: Place One Shard
//===========================================================================
function Trig_Place_One_Shard_Func002Func007C takes nothing returns boolean
    if ( not ( RectContainsLoc(gg_rct_No_Shards, udg_tempPoint) == true ) ) then
        return false
    endif
    return true
endfunction

function Trig_Place_One_Shard_Func002Func009A takes nothing returns nothing
    set udg_shardPointGood = false
endfunction

function Trig_Place_One_Shard_Func002Func011A takes nothing returns nothing
    set udg_shardPointGood = false
endfunction

function Trig_Place_One_Shard_Func002Func013Func001C takes nothing returns boolean
    if ( not ( GetItemTypeId(GetEnumItem()) == 'I000' ) ) then
        return false
    endif
    if ( not ( DistanceBetweenPoints(udg_tempPoint, GetItemLoc(GetEnumItem())) < 2000.00 ) ) then
        return false
    endif
    return true
endfunction

function Trig_Place_One_Shard_Func002Func013A takes nothing returns nothing
    if ( Trig_Place_One_Shard_Func002Func013Func001C() ) then
        set udg_shardPointGood = false
    else
    endif
endfunction

function Trig_Place_One_Shard_Func002Func015Func001C takes nothing returns boolean
    if ( not ( DistanceBetweenPoints(udg_tempPoint, GetRectCenter(udg_startLocRegions[udg_cpStartLocID[GetForLoopIndexB()]])) < 2000.00 ) ) then
        return false
    endif
    return true
endfunction

function Trig_Place_One_Shard_Func002Func017Func002C takes nothing returns boolean
    if ( not ( GetPlayerSlotState(udg_userPlayers[udg_userCurrent]) == PLAYER_SLOT_STATE_PLAYING ) ) then
        return false
    endif
    if ( not ( DistanceBetweenPoints(udg_tempPoint, GetRectCenter(udg_userStartRegions[udg_userCurrent])) < 4000.00 ) ) then
        return false
    endif
    return true
endfunction

function Trig_Place_One_Shard_Func002Func019C takes nothing returns boolean
    if ( not ( GetTerrainCliffLevelBJ(udg_tempPoint) <= 4 ) ) then
        return false
    endif
    return true
endfunction

function Trig_Place_One_Shard_Func002Func021C takes nothing returns boolean
    if ( not ( udg_shardPointGood == true ) ) then
        return false
    endif
    return true
endfunction

function Trig_Place_One_Shard_Actions takes nothing returns nothing
    // Loop to continue looking for a valid placement point, fails after trying 100 times
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 100
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        // Choose a random point on the map
        set udg_tempPoint = GetRandomLocInRect(GetPlayableMapRect())
        // Assume this point is good until proven otherwise
        set udg_shardPointGood = true
        // Can't be in the "no shard" region
        if ( Trig_Place_One_Shard_Func002Func007C() ) then
            set udg_shardPointGood = false
        else
        endif
        // Can't be too close to trees
        call EnumDestructablesInCircleBJ( 256, udg_tempPoint, function Trig_Place_One_Shard_Func002Func009A )
        // Can't be right on top of neutral units
        call ForGroupBJ( GetUnitsInRangeOfLocAll(64.00, GetItemLoc(GetEnumItem())), function Trig_Place_One_Shard_Func002Func011A )
        // Can't be too close to other shards
        call EnumItemsInRectBJ( GetPlayableMapRect(), function Trig_Place_One_Shard_Func002Func013A )
        // Can't be too close to creep start locations
        set bj_forLoopBIndex = 0
        set bj_forLoopBIndexEnd = ( udg_numCreepPlayers - 1 )
        loop
            exitwhen bj_forLoopBIndex > bj_forLoopBIndexEnd
            if ( Trig_Place_One_Shard_Func002Func015Func001C() ) then
                set udg_shardPointGood = false
            else
            endif
            set bj_forLoopBIndex = bj_forLoopBIndex + 1
        endloop
        // Can't be too close to user start locations
        set bj_forLoopBIndex = 0
        set bj_forLoopBIndexEnd = 3
        loop
            exitwhen bj_forLoopBIndex > bj_forLoopBIndexEnd
            set udg_userCurrent = GetForLoopIndexB()
            if ( Trig_Place_One_Shard_Func002Func017Func002C() ) then
                set udg_shardPointGood = false
            else
            endif
            set bj_forLoopBIndex = bj_forLoopBIndex + 1
        endloop
        // Can't be in the drink (the river is all cliff level 4 on this map)
        if ( Trig_Place_One_Shard_Func002Func019C() ) then
            set udg_shardPointGood = false
        else
        endif
        // If the point is good, place the shard and leave
        if ( Trig_Place_One_Shard_Func002Func021C() ) then
            call CreateItemLoc( 'I000', udg_tempPoint )
            return
        else
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
endfunction

//===========================================================================
function InitTrig_Place_One_Shard takes nothing returns nothing
    set gg_trg_Place_One_Shard = CreateTrigger(  )
    call TriggerAddAction( gg_trg_Place_One_Shard, function Trig_Place_One_Shard_Actions )
endfunction

//===========================================================================
// Trigger: Intro Cinematic Screenshot
//===========================================================================
function Trig_Intro_Cinematic_Screenshot_Actions takes nothing returns nothing
    call CinematicModeBJ( true, GetPlayersAll() )
    call CameraSetupApplyForPlayer( true, gg_cam_Monolith_Intro_Shot, Player(0), 0 )
endfunction

//===========================================================================
function InitTrig_Intro_Cinematic_Screenshot takes nothing returns nothing
    set gg_trg_Intro_Cinematic_Screenshot = CreateTrigger(  )
    call TriggerAddAction( gg_trg_Intro_Cinematic_Screenshot, function Trig_Intro_Cinematic_Screenshot_Actions )
endfunction

//===========================================================================
// Trigger: Intro Cinematic Start
//===========================================================================
function Trig_Intro_Cinematic_Start_Func003A takes nothing returns nothing
    call CameraSetupApplyForPlayer( true, gg_cam_Monolith_Intro_Shot, GetEnumPlayer(), 0 )
    call ResetToGameCameraForPlayer( GetEnumPlayer(), udg_cinematicDuration )
    call CinematicFadeBJ( bj_CINEFADETYPE_FADEOUT, udg_cinematicDuration, "ReplaceableTextures\\CameraMasks\\White_mask.blp", 0, 0, 0, 0 )
endfunction

function Trig_Intro_Cinematic_Start_Actions takes nothing returns nothing
    set udg_cinematicDuration = 6.00
    call CinematicModeBJ( true, GetPlayersAll() )
    call ForForce( GetPlayersByMapControl(MAP_CONTROL_USER), function Trig_Intro_Cinematic_Start_Func003A )
    call StartTimerBJ( udg_cinematicTimer, false, udg_cinematicDuration )
endfunction

//===========================================================================
function InitTrig_Intro_Cinematic_Start takes nothing returns nothing
    set gg_trg_Intro_Cinematic_Start = CreateTrigger(  )
    call TriggerAddAction( gg_trg_Intro_Cinematic_Start, function Trig_Intro_Cinematic_Start_Actions )
endfunction

//===========================================================================
// Trigger: Intro Cinematic End
//===========================================================================
function Trig_Intro_Cinematic_End_Func002A takes nothing returns nothing
    call RemoveUnit( GetEnumUnit() )
endfunction

function Trig_Intro_Cinematic_End_Func004Func003C takes nothing returns boolean
    if ( not ( udg_userCurrent != -1 ) ) then
        return false
    endif
    return true
endfunction

function Trig_Intro_Cinematic_End_Func004A takes nothing returns nothing
    set udg_tempPlayer = GetEnumPlayer()
    call ConditionalTriggerExecute( gg_trg_Find_User_From_Player )
    if ( Trig_Intro_Cinematic_End_Func004Func003C() ) then
        call PanCameraToTimedLocForPlayer( GetEnumPlayer(), OffsetLocation(udg_userStartLocations[udg_userCurrent], 0, -512.00), 0 )
        call CinematicFadeBJ( bj_CINEFADETYPE_FADEIN, 2.00, "ReplaceableTextures\\CameraMasks\\White_mask.blp", 0, 0, 0, 0 )
    else
    endif
endfunction

function Trig_Intro_Cinematic_End_Actions takes nothing returns nothing
    // Remove the cinematic units
    call ForGroupBJ( GetUnitsInRectAll(gg_rct_Monolith_Intro_Area), function Trig_Intro_Cinematic_End_Func002A )
    // Fade player cameras back in on their start location
    call ForForce( GetPlayersByMapControl(MAP_CONTROL_USER), function Trig_Intro_Cinematic_End_Func004A )
    // Turn off cinematic mode, and we're ready to roll
    call CinematicModeBJ( false, GetPlayersAll() )
    // Place random shards now (done here to keep them from showing up in the cinematic)
    // Note that the random seed is fixed while cinematic mode is on, so it's important to do this after we turn it off
    call ConditionalTriggerExecute( gg_trg_Place_All_Shards )
endfunction

//===========================================================================
function InitTrig_Intro_Cinematic_End takes nothing returns nothing
    set gg_trg_Intro_Cinematic_End = CreateTrigger(  )
    call TriggerRegisterTimerExpireEventBJ( gg_trg_Intro_Cinematic_End, udg_cinematicTimer )
    call TriggerAddAction( gg_trg_Intro_Cinematic_End, function Trig_Intro_Cinematic_End_Actions )
endfunction

//===========================================================================
// Trigger: Cheats Disabled
//===========================================================================
function Trig_Cheats_Disabled_Actions takes nothing returns nothing
    // Only allow cheats at the beginning of the game
    set udg_cheatsEnabled = false
endfunction

//===========================================================================
function InitTrig_Cheats_Disabled takes nothing returns nothing
    set gg_trg_Cheats_Disabled = CreateTrigger(  )
    call TriggerRegisterTimerEventSingle( gg_trg_Cheats_Disabled, 120.00 )
    call TriggerAddAction( gg_trg_Cheats_Disabled, function Trig_Cheats_Disabled_Actions )
endfunction

//===========================================================================
// Trigger: Play As
//===========================================================================
function Trig_Play_As_Func002Func001001001 takes nothing returns boolean
    return ( GetFilterPlayer() == GetTriggerPlayer() )
endfunction

function Trig_Play_As_Func002C takes nothing returns boolean
    if ( not ( udg_cheatsEnabled == false ) ) then
        return false
    endif
    return true
endfunction

function Trig_Play_As_Func006001 takes nothing returns boolean
    return ( udg_userCurrent == -1 )
endfunction

function Trig_Play_As_Func008001 takes nothing returns boolean
    return ( udg_userPlayAsCreeps[udg_userCurrent] == true )
endfunction

function Trig_Play_As_Func010A takes nothing returns nothing
    call ExplodeUnitBJ( GetEnumUnit() )
endfunction

function Trig_Play_As_Actions takes nothing returns nothing
    // This cheat can only be used within the first 2 minutes of the game
    if ( Trig_Play_As_Func002C() ) then
        call DisplayTextToForce( GetPlayersMatching(Condition(function Trig_Play_As_Func002Func001001001)), "TRIGSTR_225" )
        return
    else
    endif
    // Find user index corresponding to this player
    set udg_tempPlayer = GetTriggerPlayer()
    call ConditionalTriggerExecute( gg_trg_Find_User_From_Player )
    if ( Trig_Play_As_Func006001() ) then
        return
    else
        call DoNothing(  )
    endif
    // Check if this player is already playing as creeps
    if ( Trig_Play_As_Func008001() ) then
        return
    else
        call DoNothing(  )
    endif
    // Destroy all current units
    call ForGroupBJ( GetUnitsOfPlayerAll(udg_userPlayers[udg_userCurrent]), function Trig_Play_As_Func010A )
    // Give them a Monolith
    call CreateNUnitsAtLoc( 1, 'o000', udg_userPlayers[udg_userCurrent], udg_userStartLocations[udg_userCurrent], bj_UNIT_FACING )
    // Give them lumber for four shards
    call SetPlayerStateBJ( udg_userPlayers[udg_userCurrent], PLAYER_STATE_RESOURCE_LUMBER, 4 )
    set udg_userLumber[udg_userCurrent] = GetPlayerState(udg_userPlayers[udg_userCurrent], PLAYER_STATE_RESOURCE_LUMBER)
    // Enforce creep food limit
    call SetPlayerStateBJ( udg_userPlayers[udg_userCurrent], PLAYER_STATE_FOOD_CAP_CEILING, udg_creepFoodLimit )
    // Only let them make one hero total
    call SetPlayerMaxHeroesAllowed( 1, udg_userPlayers[udg_userCurrent] )
    // Mark this player as creeps
    set udg_userPlayAsCreeps[udg_userCurrent] = true
    // Tell everyone about this creep player
    call DisplayTextToForce( GetPlayersByMapControl(MAP_CONTROL_USER), ( "|cffDCB428*** " + ( GetPlayerName(udg_userPlayers[udg_userCurrent]) + "|r" ) ) )
    call DisplayTextToForce( GetPlayersByMapControl(MAP_CONTROL_USER), "TRIGSTR_392" )
endfunction

//===========================================================================
function InitTrig_Play_As takes nothing returns nothing
    set gg_trg_Play_As = CreateTrigger(  )
    call TriggerRegisterPlayerChatEvent( gg_trg_Play_As, Player(0), "-creepmeout", true )
    call TriggerRegisterPlayerChatEvent( gg_trg_Play_As, Player(1), "-creepmeout", true )
    call TriggerRegisterPlayerChatEvent( gg_trg_Play_As, Player(2), "-creepmeout", true )
    call TriggerRegisterPlayerChatEvent( gg_trg_Play_As, Player(3), "-creepmeout", true )
    call TriggerAddAction( gg_trg_Play_As, function Trig_Play_As_Actions )
endfunction

//===========================================================================
// Trigger: Team Coloring Construction
//===========================================================================
function Trig_Team_Coloring_Construction_Conditions takes nothing returns boolean
    if ( not ( IsPlayerInForce(GetOwningPlayer(GetConstructingStructure()), udg_creepPlayerGroup) == true ) ) then
        return false
    endif
    return true
endfunction

function Trig_Team_Coloring_Construction_Actions takes nothing returns nothing
    set udg_colorUnit = GetConstructingStructure()
    call ConditionalTriggerExecute( gg_trg_Team_Coloring_Apply )
endfunction

//===========================================================================
function InitTrig_Team_Coloring_Construction takes nothing returns nothing
    set gg_trg_Team_Coloring_Construction = CreateTrigger(  )
    call TriggerRegisterAnyUnitEventBJ( gg_trg_Team_Coloring_Construction, EVENT_PLAYER_UNIT_CONSTRUCT_START )
    call TriggerAddCondition( gg_trg_Team_Coloring_Construction, Condition( function Trig_Team_Coloring_Construction_Conditions ) )
    call TriggerAddAction( gg_trg_Team_Coloring_Construction, function Trig_Team_Coloring_Construction_Actions )
endfunction

//===========================================================================
// Trigger: Team Coloring Update All
//===========================================================================
function Trig_Team_Coloring_Update_All_Func002Func003001002 takes nothing returns boolean
    return ( IsUnitType(GetFilterUnit(), UNIT_TYPE_STRUCTURE) == true )
endfunction

function Trig_Team_Coloring_Update_All_Func002Func003A takes nothing returns nothing
    // Apply coloring
    set udg_colorUnit = GetEnumUnit()
    call ConditionalTriggerExecute( gg_trg_Team_Coloring_Apply )
endfunction

function Trig_Team_Coloring_Update_All_Actions takes nothing returns nothing
    // Loop over all creep players
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = udg_numCreepPlayers
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        set udg_cpCurrent = ( GetForLoopIndexA() - 1 )
        // Find all structure units owned by the current player
        call ForGroupBJ( GetUnitsOfPlayerMatching(udg_cpPlayers[udg_cpCurrent], Condition(function Trig_Team_Coloring_Update_All_Func002Func003001002)), function Trig_Team_Coloring_Update_All_Func002Func003A )
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
endfunction

//===========================================================================
function InitTrig_Team_Coloring_Update_All takes nothing returns nothing
    set gg_trg_Team_Coloring_Update_All = CreateTrigger(  )
    call TriggerAddAction( gg_trg_Team_Coloring_Update_All, function Trig_Team_Coloring_Update_All_Actions )
endfunction

//===========================================================================
// Trigger: Team Coloring Apply
//===========================================================================
function Trig_Team_Coloring_Apply_Conditions takes nothing returns boolean
    if ( not ( udg_colorUnit != null ) ) then
        return false
    endif
    if ( not ( IsUnitType(udg_colorUnit, UNIT_TYPE_STRUCTURE) == true ) ) then
        return false
    endif
    return true
endfunction

function Trig_Team_Coloring_Apply_Func004C takes nothing returns boolean
    if ( not ( udg_colorCurrent == PLAYER_COLOR_YELLOW ) ) then
        return false
    endif
    return true
endfunction

function Trig_Team_Coloring_Apply_Func006C takes nothing returns boolean
    if ( not ( udg_colorCurrent == PLAYER_COLOR_ORANGE ) ) then
        return false
    endif
    return true
endfunction

function Trig_Team_Coloring_Apply_Func008C takes nothing returns boolean
    if ( not ( udg_colorCurrent == PLAYER_COLOR_GREEN ) ) then
        return false
    endif
    return true
endfunction

function Trig_Team_Coloring_Apply_Func010C takes nothing returns boolean
    if ( not ( udg_colorCurrent == PLAYER_COLOR_PINK ) ) then
        return false
    endif
    return true
endfunction

function Trig_Team_Coloring_Apply_Actions takes nothing returns nothing
    // Get color values based on player color
    set udg_colorCurrent = GetPlayerColor(GetOwningPlayer(udg_colorUnit))
    // Yellow
    if ( Trig_Team_Coloring_Apply_Func004C() ) then
        set udg_colorRed = 100.00
        set udg_colorGreen = 100.00
        set udg_colorBlue = 25.00
    else
    endif
    // Orange
    if ( Trig_Team_Coloring_Apply_Func006C() ) then
        set udg_colorRed = 90.00
        set udg_colorGreen = 50.00
        set udg_colorBlue = 25.00
    else
    endif
    // Green
    if ( Trig_Team_Coloring_Apply_Func008C() ) then
        set udg_colorRed = 50.00
        set udg_colorGreen = 100.00
        set udg_colorBlue = 50.00
    else
    endif
    // Pink
    if ( Trig_Team_Coloring_Apply_Func010C() ) then
        set udg_colorRed = 100.00
        set udg_colorGreen = 50.00
        set udg_colorBlue = 50.00
    else
    endif
    // Apply color to unit
    call SetUnitVertexColorBJ( udg_colorUnit, udg_colorRed, udg_colorGreen, udg_colorBlue, 0 )
endfunction

//===========================================================================
function InitTrig_Team_Coloring_Apply takes nothing returns nothing
    set gg_trg_Team_Coloring_Apply = CreateTrigger(  )
    call TriggerAddCondition( gg_trg_Team_Coloring_Apply, Condition( function Trig_Team_Coloring_Apply_Conditions ) )
    call TriggerAddAction( gg_trg_Team_Coloring_Apply, function Trig_Team_Coloring_Apply_Actions )
endfunction

//===========================================================================
// Trigger: Wolf Den Shrubs Create
//===========================================================================
function Trig_Wolf_Den_Shrubs_Create_Conditions takes nothing returns boolean
    if ( not ( GetUnitTypeId(GetConstructingStructure()) == 'o00A' ) ) then
        return false
    endif
    if ( not ( GetUnitUserData(GetConstructingStructure()) == 0 ) ) then
        return false
    endif
    return true
endfunction

function Trig_Wolf_Den_Shrubs_Create_Actions takes nothing returns nothing
    // Increment shrub count
    // Note: The shrub arrays are treated as 1-based so that
    //           a value of zero (default) represents "no shrubs"
    set udg_effectShrubCount = ( udg_effectShrubCount + 1 )
    // Left shrub
    call AddSpecialEffectLocBJ( OffsetLocation(GetUnitLoc(GetConstructingStructure()), -96.00, -32.00), "Doodads\\Ashenvale\\Plants\\AshenBush0\\AshenBush0.mdl" )
    set udg_effectShrub1[udg_effectShrubCount] = GetLastCreatedEffectBJ()
    // Right shrub
    call AddSpecialEffectLocBJ( OffsetLocation(GetUnitLoc(GetConstructingStructure()), 0.00, -96.00), "Doodads\\Ashenvale\\Plants\\AshenBush0\\AshenBush0.mdl" )
    set udg_effectShrub2[udg_effectShrubCount] = GetLastCreatedEffectBJ()
    // Save this shrub array index with the unit, so they can be destroyed later
    call SetUnitUserData( GetConstructingStructure(), udg_effectShrubCount )
endfunction

//===========================================================================
function InitTrig_Wolf_Den_Shrubs_Create takes nothing returns nothing
    set gg_trg_Wolf_Den_Shrubs_Create = CreateTrigger(  )
    call TriggerRegisterAnyUnitEventBJ( gg_trg_Wolf_Den_Shrubs_Create, EVENT_PLAYER_UNIT_CONSTRUCT_START )
    call TriggerAddCondition( gg_trg_Wolf_Den_Shrubs_Create, Condition( function Trig_Wolf_Den_Shrubs_Create_Conditions ) )
    call TriggerAddAction( gg_trg_Wolf_Den_Shrubs_Create, function Trig_Wolf_Den_Shrubs_Create_Actions )
endfunction

//===========================================================================
// Trigger: Wolf Den Shrubs Destroy
//===========================================================================
function Trig_Wolf_Den_Shrubs_Destroy_Conditions takes nothing returns boolean
    if ( not ( GetUnitTypeId(GetTriggerUnit()) == 'o00A' ) ) then
        return false
    endif
    if ( not ( GetUnitUserData(GetTriggerUnit()) != 0 ) ) then
        return false
    endif
    return true
endfunction

function Trig_Wolf_Den_Shrubs_Destroy_Actions takes nothing returns nothing
    set udg_tempInt = GetUnitUserData(GetTriggerUnit())
    // Destroy right shrub
    call DestroyEffectBJ( udg_effectShrub1[udg_tempInt] )
    // Destroy left shrub
    call DestroyEffectBJ( udg_effectShrub2[udg_tempInt] )
    // Remove shrub reference from this unit
    call SetUnitUserData( GetTriggerUnit(), 0 )
endfunction

//===========================================================================
function InitTrig_Wolf_Den_Shrubs_Destroy takes nothing returns nothing
    set gg_trg_Wolf_Den_Shrubs_Destroy = CreateTrigger(  )
    call TriggerRegisterAnyUnitEventBJ( gg_trg_Wolf_Den_Shrubs_Destroy, EVENT_PLAYER_UNIT_DEATH )
    call TriggerRegisterAnyUnitEventBJ( gg_trg_Wolf_Den_Shrubs_Destroy, EVENT_PLAYER_UNIT_CONSTRUCT_CANCEL )
    call TriggerAddCondition( gg_trg_Wolf_Den_Shrubs_Destroy, Condition( function Trig_Wolf_Den_Shrubs_Destroy_Conditions ) )
    call TriggerAddAction( gg_trg_Wolf_Den_Shrubs_Destroy, function Trig_Wolf_Den_Shrubs_Destroy_Actions )
endfunction

//===========================================================================
// Trigger: Werewolf Morph
//===========================================================================
function Trig_Werewolf_Morph_Func006C takes nothing returns boolean
    if ( ( GetUnitTypeId(GetTriggerUnit()) == 'O00B' ) ) then
        return true
    endif
    if ( ( GetUnitTypeId(GetTriggerUnit()) == 'O00E' ) ) then
        return true
    endif
    return false
endfunction

function Trig_Werewolf_Morph_Conditions takes nothing returns boolean
    if ( not ( GetSpellAbilityId() == 'A003' ) ) then
        return false
    endif
    if ( not Trig_Werewolf_Morph_Func006C() ) then
        return false
    endif
    return true
endfunction

function Trig_Werewolf_Morph_Actions takes nothing returns nothing
    // We want to use the normal animation of the Druid of the Claw
    // but morph abilities add the alternate animation tags, so remove them again
    call AddUnitAnimationPropertiesBJ( false, "alternate", GetTriggerUnit() )
    call AddUnitAnimationPropertiesBJ( false, "alternateex", GetTriggerUnit() )
endfunction

//===========================================================================
function InitTrig_Werewolf_Morph takes nothing returns nothing
    set gg_trg_Werewolf_Morph = CreateTrigger(  )
    call TriggerRegisterAnyUnitEventBJ( gg_trg_Werewolf_Morph, EVENT_PLAYER_UNIT_SPELL_FINISH )
    call TriggerAddCondition( gg_trg_Werewolf_Morph, Condition( function Trig_Werewolf_Morph_Conditions ) )
    call TriggerAddAction( gg_trg_Werewolf_Morph, function Trig_Werewolf_Morph_Actions )
endfunction

//===========================================================================
// Trigger: Monolith Work Start
//===========================================================================
function Trig_Monolith_Work_Start_Conditions takes nothing returns boolean
    if ( not ( GetUnitTypeId(GetTriggerUnit()) == 'o000' ) ) then
        return false
    endif
    return true
endfunction

function Trig_Monolith_Work_Start_Actions takes nothing returns nothing
    // The Monolith "work" animation does not use the "alternate" tag.
    call AddUnitAnimationPropertiesBJ( false, "alternate", GetTriggerUnit() )
endfunction

//===========================================================================
function InitTrig_Monolith_Work_Start takes nothing returns nothing
    set gg_trg_Monolith_Work_Start = CreateTrigger(  )
    call TriggerRegisterAnyUnitEventBJ( gg_trg_Monolith_Work_Start, EVENT_PLAYER_UNIT_TRAIN_START )
    call TriggerAddCondition( gg_trg_Monolith_Work_Start, Condition( function Trig_Monolith_Work_Start_Conditions ) )
    call TriggerAddAction( gg_trg_Monolith_Work_Start, function Trig_Monolith_Work_Start_Actions )
endfunction

//===========================================================================
// Trigger: Monolith Work End
//===========================================================================
function Trig_Monolith_Work_End_Conditions takes nothing returns boolean
    if ( not ( GetUnitTypeId(GetTriggerUnit()) == 'o000' ) ) then
        return false
    endif
    return true
endfunction

function Trig_Monolith_Work_End_Actions takes nothing returns nothing
    // Add the "alternate" tag back in now that the Monolith is no longer "working".
    call AddUnitAnimationPropertiesBJ( true, "alternate", GetTriggerUnit() )
endfunction

//===========================================================================
function InitTrig_Monolith_Work_End takes nothing returns nothing
    set gg_trg_Monolith_Work_End = CreateTrigger(  )
    call TriggerRegisterAnyUnitEventBJ( gg_trg_Monolith_Work_End, EVENT_PLAYER_UNIT_TRAIN_CANCEL )
    call TriggerRegisterAnyUnitEventBJ( gg_trg_Monolith_Work_End, EVENT_PLAYER_UNIT_TRAIN_FINISH )
    call TriggerAddCondition( gg_trg_Monolith_Work_End, Condition( function Trig_Monolith_Work_End_Conditions ) )
    call TriggerAddAction( gg_trg_Monolith_Work_End, function Trig_Monolith_Work_End_Actions )
endfunction

//===========================================================================
// Trigger: Ping Shards
//===========================================================================
function Trig_Ping_Shards_Func004Func001C takes nothing returns boolean
    if ( not ( udg_tempBool == false ) ) then
        return false
    endif
    if ( not ( GetItemTypeId(GetEnumItem()) == 'I000' ) ) then
        return false
    endif
    if ( not ( GetRandomInt(1, 100) <= 10 ) ) then
        return false
    endif
    return true
endfunction

function Trig_Ping_Shards_Func004A takes nothing returns nothing
    if ( Trig_Ping_Shards_Func004Func001C() ) then
        // Ping the shard, then set the tempBool to avoid pinging any other shards right now
        call PingMinimapLocForForceEx( udg_userPlayerGroup, GetItemLoc(GetEnumItem()), 1, bj_MINIMAPPINGSTYLE_SIMPLE, 25.00, 25.00, 25.00 )
        set udg_tempBool = true
    else
    endif
endfunction

function Trig_Ping_Shards_Actions takes nothing returns nothing
    // Use tempBool to represent if we've pinged any shard yet
    set udg_tempBool = false
    // Search all items for a shard
    call EnumItemsInRectBJ( GetPlayableMapRect(), function Trig_Ping_Shards_Func004A )
endfunction

//===========================================================================
function InitTrig_Ping_Shards takes nothing returns nothing
    set gg_trg_Ping_Shards = CreateTrigger(  )
    call TriggerRegisterTimerEventPeriodic( gg_trg_Ping_Shards, 20.00 )
    call TriggerAddAction( gg_trg_Ping_Shards, function Trig_Ping_Shards_Actions )
endfunction

//===========================================================================
// Trigger: Shard Disabled
//===========================================================================
function Trig_Shard_Disabled_Conditions takes nothing returns boolean
    if ( not ( GetUnitTypeId(GetTriggerUnit()) == 'h000' ) ) then
        return false
    endif
    return true
endfunction

function Trig_Shard_Disabled_Func007A takes nothing returns nothing
    call SetCameraQuickPositionLocForPlayer( GetEnumPlayer(), GetUnitLoc(GetTriggerUnit()) )
endfunction

function Trig_Shard_Disabled_Actions takes nothing returns nothing
    // Do special effect
    call AddSpecialEffectLocBJ( GetUnitLoc(GetTriggerUnit()), "Units\\NightElf\\Wisp\\WispExplode.mdl" )
    call DestroyEffectBJ( GetLastCreatedEffectBJ() )
    call PlaySoundAtPointBJ( gg_snd_WispDeath1, 100.00, GetUnitLoc(GetTriggerUnit()), 128.00 )
    // Do minimap ping and spacebar point
    call PingMinimapLocForForceEx( GetPlayersByMapControl(MAP_CONTROL_USER), GetUnitLoc(GetTriggerUnit()), 12.00, bj_MINIMAPPINGSTYLE_SIMPLE, 100, 100, 100 )
    call ForForce( GetPlayersByMapControl(MAP_CONTROL_USER), function Trig_Shard_Disabled_Func007A )
    // Remove the shard unit and add a shard item
    // Also add a pathing blocker to keep the AI from building a new shard there
    // This pathing blocker will be removed when the shard is picked up
    call CreateItemLoc( 'I000', GetUnitLoc(GetTriggerUnit()) )
    call CreateDestructableLoc( 'YTpc', GetUnitLoc(GetTriggerUnit()), bj_UNIT_FACING, 1, 0 )
    call RemoveUnit( GetTriggerUnit() )
    // Display message
    call QuestMessageBJ( GetPlayersByMapControl(MAP_CONTROL_USER), bj_QUESTMESSAGE_ALWAYSHINT, "TRIGSTR_180" )
endfunction

//===========================================================================
function InitTrig_Shard_Disabled takes nothing returns nothing
    set gg_trg_Shard_Disabled = CreateTrigger(  )
    call TriggerRegisterAnyUnitEventBJ( gg_trg_Shard_Disabled, EVENT_PLAYER_UNIT_DEATH )
    call TriggerAddCondition( gg_trg_Shard_Disabled, Condition( function Trig_Shard_Disabled_Conditions ) )
    call TriggerAddAction( gg_trg_Shard_Disabled, function Trig_Shard_Disabled_Actions )
endfunction

//===========================================================================
// Trigger: Shard Picked Up
//===========================================================================
function Trig_Shard_Picked_Up_Conditions takes nothing returns boolean
    if ( not ( GetItemTypeId(GetManipulatedItem()) == 'I000' ) ) then
        return false
    endif
    return true
endfunction

function Trig_Shard_Picked_Up_Func003Func001C takes nothing returns boolean
    if ( not ( GetDestructableTypeId(GetEnumDestructable()) == 'YTpc' ) ) then
        return false
    endif
    return true
endfunction

function Trig_Shard_Picked_Up_Func003A takes nothing returns nothing
    if ( Trig_Shard_Picked_Up_Func003Func001C() ) then
        call RemoveDestructable( GetEnumDestructable() )
    else
    endif
endfunction

function Trig_Shard_Picked_Up_Actions takes nothing returns nothing
    // Now that the shard has been picked up, remove the blocker for it
    call EnumDestructablesInCircleBJ( 256, GetUnitLoc(GetTriggerUnit()), function Trig_Shard_Picked_Up_Func003A )
endfunction

//===========================================================================
function InitTrig_Shard_Picked_Up takes nothing returns nothing
    set gg_trg_Shard_Picked_Up = CreateTrigger(  )
    call TriggerRegisterAnyUnitEventBJ( gg_trg_Shard_Picked_Up, EVENT_PLAYER_UNIT_PICKUP_ITEM )
    call TriggerAddCondition( gg_trg_Shard_Picked_Up, Condition( function Trig_Shard_Picked_Up_Conditions ) )
    call TriggerAddAction( gg_trg_Shard_Picked_Up, function Trig_Shard_Picked_Up_Actions )
endfunction

//===========================================================================
// Trigger: Creep Reclaims Shard
//===========================================================================
function Trig_Creep_Reclaims_Shard_Conditions takes nothing returns boolean
    if ( not ( GetItemTypeId(GetManipulatedItem()) == 'I000' ) ) then
        return false
    endif
    if ( not ( IsPlayerInForce(GetOwningPlayer(GetTriggerUnit()), udg_creepPlayerGroup) == true ) ) then
        return false
    endif
    return true
endfunction

function Trig_Creep_Reclaims_Shard_Actions takes nothing returns nothing
    // Destroy the shard item and refund the lumber cost so they can build a new one
    call RemoveItem( GetManipulatedItem() )
    call AdjustPlayerStateBJ( 1, GetOwningPlayer(GetTriggerUnit()), PLAYER_STATE_RESOURCE_LUMBER )
endfunction

//===========================================================================
function InitTrig_Creep_Reclaims_Shard takes nothing returns nothing
    set gg_trg_Creep_Reclaims_Shard = CreateTrigger(  )
    call TriggerRegisterAnyUnitEventBJ( gg_trg_Creep_Reclaims_Shard, EVENT_PLAYER_UNIT_PICKUP_ITEM )
    call TriggerAddCondition( gg_trg_Creep_Reclaims_Shard, Condition( function Trig_Creep_Reclaims_Shard_Conditions ) )
    call TriggerAddAction( gg_trg_Creep_Reclaims_Shard, function Trig_Creep_Reclaims_Shard_Actions )
endfunction

//===========================================================================
// Trigger: User Reclaims Shard
//===========================================================================
function Trig_User_Reclaims_Shard_Conditions takes nothing returns boolean
    if ( not ( GetItemTypeId(GetManipulatedItem()) == 'I000' ) ) then
        return false
    endif
    if ( not ( IsPlayerInForce(GetOwningPlayer(GetTriggerUnit()), udg_userPlayerGroup) == true ) ) then
        return false
    endif
    return true
endfunction

function Trig_User_Reclaims_Shard_Func004001 takes nothing returns boolean
    return ( udg_userCurrent == -1 )
endfunction

function Trig_User_Reclaims_Shard_Func005001 takes nothing returns boolean
    return ( udg_userPlayAsCreeps[udg_userCurrent] == false )
endfunction

function Trig_User_Reclaims_Shard_Func012001001 takes nothing returns boolean
    return ( GetFilterPlayer() == GetOwningPlayer(GetTriggerUnit()) )
endfunction

function Trig_User_Reclaims_Shard_Actions takes nothing returns nothing
    // Only if this is a user playing as creeps
    set udg_tempPlayer = GetOwningPlayer(GetTriggerUnit())
    call ConditionalTriggerExecute( gg_trg_Find_User_From_Player )
    if ( Trig_User_Reclaims_Shard_Func004001() ) then
        return
    else
        call DoNothing(  )
    endif
    if ( Trig_User_Reclaims_Shard_Func005001() ) then
        return
    else
        call DoNothing(  )
    endif
    // Destroy the shard item and refund the lumber cost so they can build a new one
    call RemoveItem( GetManipulatedItem() )
    set udg_shardGainingLumber = true
    call AdjustPlayerStateBJ( 1, GetOwningPlayer(GetTriggerUnit()), PLAYER_STATE_RESOURCE_LUMBER )
    set udg_shardGainingLumber = false
    // Show the user a message
    call DisplayTextToForce( GetPlayersMatching(Condition(function Trig_User_Reclaims_Shard_Func012001001)), "TRIGSTR_216" )
endfunction

//===========================================================================
function InitTrig_User_Reclaims_Shard takes nothing returns nothing
    set gg_trg_User_Reclaims_Shard = CreateTrigger(  )
    call TriggerRegisterAnyUnitEventBJ( gg_trg_User_Reclaims_Shard, EVENT_PLAYER_UNIT_PICKUP_ITEM )
    call TriggerAddCondition( gg_trg_User_Reclaims_Shard, Condition( function Trig_User_Reclaims_Shard_Conditions ) )
    call TriggerAddAction( gg_trg_User_Reclaims_Shard, function Trig_User_Reclaims_Shard_Actions )
endfunction

//===========================================================================
// Trigger: Computer Ally Gets Shard
//===========================================================================
function Trig_Computer_Ally_Gets_Shard_Conditions takes nothing returns boolean
    if ( not ( GetItemTypeId(GetManipulatedItem()) == 'I000' ) ) then
        return false
    endif
    if ( not ( IsPlayerInForce(GetOwningPlayer(GetTriggerUnit()), udg_userPlayerGroup) == true ) ) then
        return false
    endif
    if ( not ( GetPlayerController(GetOwningPlayer(GetTriggerUnit())) == MAP_CONTROL_COMPUTER ) ) then
        return false
    endif
    return true
endfunction

function Trig_Computer_Ally_Gets_Shard_Actions takes nothing returns nothing
    // The melee AI won't use shard items, so make them use it as soon as it is picked up
    call TriggerSleepAction( 0.10 )
    call UnitUseItem( GetTriggerUnit(), GetManipulatedItem() )
endfunction

//===========================================================================
function InitTrig_Computer_Ally_Gets_Shard takes nothing returns nothing
    set gg_trg_Computer_Ally_Gets_Shard = CreateTrigger(  )
    call TriggerRegisterAnyUnitEventBJ( gg_trg_Computer_Ally_Gets_Shard, EVENT_PLAYER_UNIT_PICKUP_ITEM )
    call TriggerAddCondition( gg_trg_Computer_Ally_Gets_Shard, Condition( function Trig_Computer_Ally_Gets_Shard_Conditions ) )
    call TriggerAddAction( gg_trg_Computer_Ally_Gets_Shard, function Trig_Computer_Ally_Gets_Shard_Actions )
endfunction

//===========================================================================
// Trigger: User Uses Shard
//===========================================================================
function Trig_User_Uses_Shard_Conditions takes nothing returns boolean
    if ( not ( IsPlayerInForce(GetOwningPlayer(GetTriggerUnit()), udg_userPlayerGroup) == true ) ) then
        return false
    endif
    if ( not ( GetItemTypeId(GetManipulatedItem()) == 'I000' ) ) then
        return false
    endif
    return true
endfunction

function Trig_User_Uses_Shard_Func004001 takes nothing returns boolean
    return ( udg_userCurrent == -1 )
endfunction

function Trig_User_Uses_Shard_Func005001 takes nothing returns boolean
    return ( udg_userPlayAsCreeps[udg_userCurrent] == true )
endfunction

function Trig_User_Uses_Shard_Func007C takes nothing returns boolean
    if ( not ( udg_shardDisruption == true ) ) then
        return false
    endif
    return true
endfunction

function Trig_User_Uses_Shard_Func009Func001Func002001 takes nothing returns boolean
    return ( udg_tempRandom <= udg_shardHostileChance )
endfunction

function Trig_User_Uses_Shard_Func009Func001C takes nothing returns boolean
    if ( not ( IsPlayerInForce(GetOwningPlayer(GetEnumUnit()), udg_creepPlayerGroup) == true ) ) then
        return false
    endif
    if ( not ( IsUnitType(GetEnumUnit(), UNIT_TYPE_STRUCTURE) == false ) ) then
        return false
    endif
    if ( not ( IsUnitType(GetEnumUnit(), UNIT_TYPE_HERO) == false ) ) then
        return false
    endif
    if ( not ( IsUnitType(GetEnumUnit(), UNIT_TYPE_PEON) == false ) ) then
        return false
    endif
    return true
endfunction

function Trig_User_Uses_Shard_Func009A takes nothing returns nothing
    if ( Trig_User_Uses_Shard_Func009Func001C() ) then
        set udg_tempRandom = GetRandomInt(1, 100)
        if ( Trig_User_Uses_Shard_Func009Func001Func002001() ) then
            call SetUnitOwner( GetEnumUnit(), Player(PLAYER_NEUTRAL_AGGRESSIVE), true )
        else
            call DoNothing(  )
        endif
    else
    endif
endfunction

function Trig_User_Uses_Shard_Actions takes nothing returns nothing
    // Only if this is a user not playing as creeps
    set udg_tempPlayer = GetOwningPlayer(GetTriggerUnit())
    call ConditionalTriggerExecute( gg_trg_Find_User_From_Player )
    if ( Trig_User_Uses_Shard_Func004001() ) then
        return
    else
        call DoNothing(  )
    endif
    if ( Trig_User_Uses_Shard_Func005001() ) then
        return
    else
        call DoNothing(  )
    endif
    // Do shard item effect
    if ( Trig_User_Uses_Shard_Func007C() ) then
        // If we're already in a disruption, add time to the timer
        set udg_shardTimerTime = TimerGetRemaining(udg_shardTimer)
        set udg_shardTimerTime = ( udg_shardTimerTime + udg_shardDisruptionTime )
        call StartTimerBJ( udg_shardTimer, false, udg_shardTimerTime )
        // Play sound effect
        call PlaySoundBJ( gg_snd_ShardDisruptAdd )
    else
        // Otherwise, start a new disruption event
        call ConditionalTriggerExecute( gg_trg_Shard_Disruption_Begin )
    endif
    // Random chance to turn creep units permanently hostile
    call ForGroupBJ( GetUnitsInRectAll(GetPlayableMapRect()), function Trig_User_Uses_Shard_Func009A )
endfunction

//===========================================================================
function InitTrig_User_Uses_Shard takes nothing returns nothing
    set gg_trg_User_Uses_Shard = CreateTrigger(  )
    call TriggerRegisterAnyUnitEventBJ( gg_trg_User_Uses_Shard, EVENT_PLAYER_UNIT_USE_ITEM )
    call TriggerAddCondition( gg_trg_User_Uses_Shard, Condition( function Trig_User_Uses_Shard_Conditions ) )
    call TriggerAddAction( gg_trg_User_Uses_Shard, function Trig_User_Uses_Shard_Actions )
endfunction

//===========================================================================
// Trigger: Shard Disruption Begin
//===========================================================================
function Trig_Shard_Disruption_Begin_Conditions takes nothing returns boolean
    if ( not ( udg_shardDisruption == false ) ) then
        return false
    endif
    return true
endfunction

function Trig_Shard_Disruption_Begin_Actions takes nothing returns nothing
    // Apply shard disruption effects
    set bj_forLoopAIndex = 0
    set bj_forLoopAIndexEnd = ( udg_numCreepPlayers - 1 )
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        // Create penalty effect unit
        call CreateNUnitsAtLoc( 1, udg_shardPenaltyUnitType, udg_cpPlayers[GetForLoopIndexA()], GetRectCenter(gg_rct_Penalty_Box), bj_UNIT_FACING )
        call GroupAddUnitSimple( GetLastCreatedUnit(), udg_shardPenaltyUnits )
        call PauseUnitBJ( true, GetLastCreatedUnit() )
        call ShowUnitHide( GetLastCreatedUnit() )
        // Unally with all other creep players
        set bj_forLoopBIndex = 0
        set bj_forLoopBIndexEnd = ( udg_numCreepPlayers - 1 )
        loop
            exitwhen bj_forLoopBIndex > bj_forLoopBIndexEnd
            call SetPlayerAllianceStateBJ( udg_cpPlayers[GetForLoopIndexA()], udg_cpPlayers[GetForLoopIndexB()], bj_ALLIANCE_UNALLIED_VISION )
            set bj_forLoopBIndex = bj_forLoopBIndex + 1
        endloop
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    // Start timer and show the window
    call StartTimerBJ( udg_shardTimer, false, udg_shardDisruptionTime )
    call TimerDialogDisplayBJ( true, udg_shardTimerWindow )
    call TimerDialogSetTitleBJ( udg_shardTimerWindow, "TRIGSTR_046" )
    // Give message
    call DisplayTextToForce( GetPlayersAll(), "TRIGSTR_058" )
    // Play sound effect
    call PlaySoundBJ( gg_snd_ShardDisruptStart )
    // We're now in a disruption event
    set udg_shardDisruption = true
endfunction

//===========================================================================
function InitTrig_Shard_Disruption_Begin takes nothing returns nothing
    set gg_trg_Shard_Disruption_Begin = CreateTrigger(  )
    call TriggerAddCondition( gg_trg_Shard_Disruption_Begin, Condition( function Trig_Shard_Disruption_Begin_Conditions ) )
    call TriggerAddAction( gg_trg_Shard_Disruption_Begin, function Trig_Shard_Disruption_Begin_Actions )
endfunction

//===========================================================================
// Trigger: Shard Disruption End
//===========================================================================
function Trig_Shard_Disruption_End_Conditions takes nothing returns boolean
    if ( not ( udg_shardDisruption == true ) ) then
        return false
    endif
    return true
endfunction

function Trig_Shard_Disruption_End_Func004A takes nothing returns nothing
    call RemoveUnit( GetEnumUnit() )
endfunction

function Trig_Shard_Disruption_End_Actions takes nothing returns nothing
    // Remove shard disruption effects
    set bj_forLoopAIndex = 0
    set bj_forLoopAIndexEnd = ( udg_numCreepPlayers - 1 )
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        // Ally with all other creep players
        set bj_forLoopBIndex = 0
        set bj_forLoopBIndexEnd = ( udg_numCreepPlayers - 1 )
        loop
            exitwhen bj_forLoopBIndex > bj_forLoopBIndexEnd
            call SetPlayerAllianceStateBJ( udg_cpPlayers[GetForLoopIndexA()], udg_cpPlayers[GetForLoopIndexB()], bj_ALLIANCE_ALLIED_VISION )
            set bj_forLoopBIndex = bj_forLoopBIndex + 1
        endloop
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    // Remove all penalty units
    call ForGroupBJ( udg_shardPenaltyUnits, function Trig_Shard_Disruption_End_Func004A )
    // Hide the window
    call TimerDialogDisplayBJ( false, udg_shardTimerWindow )
    // Give message
    call DisplayTextToForce( GetPlayersAll(), "TRIGSTR_047" )
    // Play sound effect
    call PlaySoundBJ( gg_snd_ShardDisruptEnd )
    // We're no longer in a disruption event
    set udg_shardDisruption = false
endfunction

//===========================================================================
function InitTrig_Shard_Disruption_End takes nothing returns nothing
    set gg_trg_Shard_Disruption_End = CreateTrigger(  )
    call TriggerRegisterTimerExpireEventBJ( gg_trg_Shard_Disruption_End, udg_shardTimer )
    call TriggerAddCondition( gg_trg_Shard_Disruption_End, Condition( function Trig_Shard_Disruption_End_Conditions ) )
    call TriggerAddAction( gg_trg_Shard_Disruption_End, function Trig_Shard_Disruption_End_Actions )
endfunction

//===========================================================================
// Trigger: Lumber Cheese Prevention
//===========================================================================
function Trig_Lumber_Cheese_Prevention_Func005001 takes nothing returns boolean
    return ( udg_userCurrent == -1 )
endfunction

function Trig_Lumber_Cheese_Prevention_Func006001 takes nothing returns boolean
    return ( udg_userPlayAsCreeps[udg_userCurrent] == false )
endfunction

function Trig_Lumber_Cheese_Prevention_Func013001 takes nothing returns boolean
    return ( udg_tempInt <= 0 )
endfunction

function Trig_Lumber_Cheese_Prevention_Func015001 takes nothing returns boolean
    return ( udg_shardGainingLumber == true )
endfunction

function Trig_Lumber_Cheese_Prevention_Actions takes nothing returns nothing
    // Only if this is a user playing as creeps
    set udg_tempPlayer = GetTriggerPlayer()
    call ConditionalTriggerExecute( gg_trg_Find_User_From_Player )
    if ( Trig_Lumber_Cheese_Prevention_Func005001() ) then
        return
    else
        call DoNothing(  )
    endif
    if ( Trig_Lumber_Cheese_Prevention_Func006001() ) then
        return
    else
        call DoNothing(  )
    endif
    // Compute lumber gained
    set udg_tempOldLumber = udg_userLumber[udg_userCurrent]
    set udg_tempInt = ( GetPlayerState(GetTriggerPlayer(), PLAYER_STATE_RESOURCE_LUMBER) - udg_tempOldLumber )
    // Save new lumber value for this player
    set udg_userLumber[udg_userCurrent] = GetPlayerState(GetTriggerPlayer(), PLAYER_STATE_RESOURCE_LUMBER)
    // If none or negative change, bail out (this prevents infinite recursion and lets user spend lumber)
    if ( Trig_Lumber_Cheese_Prevention_Func013001() ) then
        return
    else
        call DoNothing(  )
    endif
    // If the user is reclaiming a shard, allow the lumber gain
    if ( Trig_Lumber_Cheese_Prevention_Func015001() ) then
        return
    else
        call DoNothing(  )
    endif
    // Prevent the lumber gain
    call SetPlayerStateBJ( GetTriggerPlayer(), PLAYER_STATE_RESOURCE_LUMBER, udg_tempOldLumber )
    // Give the cheesers an informative message
    call QuestMessageBJ( udg_userPlayerGroup, bj_QUESTMESSAGE_WARNING, "TRIGSTR_290" )
endfunction

//===========================================================================
function InitTrig_Lumber_Cheese_Prevention takes nothing returns nothing
    set gg_trg_Lumber_Cheese_Prevention = CreateTrigger(  )
    call TriggerRegisterPlayerStateEvent( gg_trg_Lumber_Cheese_Prevention, Player(0), PLAYER_STATE_RESOURCE_LUMBER, GREATER_THAN_OR_EQUAL, 0.00 )
    call TriggerRegisterPlayerStateEvent( gg_trg_Lumber_Cheese_Prevention, Player(1), PLAYER_STATE_RESOURCE_LUMBER, GREATER_THAN_OR_EQUAL, 0.00 )
    call TriggerRegisterPlayerStateEvent( gg_trg_Lumber_Cheese_Prevention, Player(2), PLAYER_STATE_RESOURCE_LUMBER, GREATER_THAN_OR_EQUAL, 0.00 )
    call TriggerRegisterPlayerStateEvent( gg_trg_Lumber_Cheese_Prevention, Player(3), PLAYER_STATE_RESOURCE_LUMBER, GREATER_THAN_OR_EQUAL, 0.00 )
    call TriggerAddAction( gg_trg_Lumber_Cheese_Prevention, function Trig_Lumber_Cheese_Prevention_Actions )
endfunction

//===========================================================================
// Trigger: Monolith Count
//===========================================================================
function Trig_Monolith_Count_Func003Func001C takes nothing returns boolean
    if ( not ( IsPlayerInForce(GetOwningPlayer(GetEnumUnit()), udg_creepPlayerGroup) == true ) ) then
        return false
    endif
    if ( not ( IsUnitAliveBJ(GetEnumUnit()) == true ) ) then
        return false
    endif
    return true
endfunction

function Trig_Monolith_Count_Func003A takes nothing returns nothing
    if ( Trig_Monolith_Count_Func003Func001C() ) then
        set udg_numMonoliths = ( udg_numMonoliths + 1 )
    else
    endif
endfunction

function Trig_Monolith_Count_Actions takes nothing returns nothing
    // Use a loop here so new conditions may be easily added or removed
    set udg_numMonoliths = 0
    call ForGroupBJ( GetUnitsOfTypeIdAll('o000'), function Trig_Monolith_Count_Func003A )
endfunction

//===========================================================================
function InitTrig_Monolith_Count takes nothing returns nothing
    set gg_trg_Monolith_Count = CreateTrigger(  )
    call TriggerAddAction( gg_trg_Monolith_Count, function Trig_Monolith_Count_Actions )
endfunction

//===========================================================================
// Trigger: Monolith Destroyed
//===========================================================================
function Trig_Monolith_Destroyed_Conditions takes nothing returns boolean
    if ( not ( GetUnitTypeId(GetTriggerUnit()) == 'o000' ) ) then
        return false
    endif
    return true
endfunction

function Trig_Monolith_Destroyed_Func010001 takes nothing returns boolean
    return ( IsPlayerInForce(GetOwningPlayer(GetTriggerUnit()), udg_creepPlayerGroup) == false )
endfunction

function Trig_Monolith_Destroyed_Func015A takes nothing returns nothing
    call AdjustPlayerStateBJ( 2000, GetEnumPlayer(), PLAYER_STATE_RESOURCE_GOLD )
endfunction

function Trig_Monolith_Destroyed_Func019C takes nothing returns boolean
    if ( not ( udg_tempUnit != null ) ) then
        return false
    endif
    return true
endfunction

function Trig_Monolith_Destroyed_Func021001 takes nothing returns boolean
    return ( udg_numMonoliths == 0 )
endfunction

function Trig_Monolith_Destroyed_Actions takes nothing returns nothing
    // Do special effect
    call AddSpecialEffectLocBJ( GetUnitLoc(GetTriggerUnit()), "Abilities\\Spells\\Items\\AIre\\AIreTarget.mdl" )
    call DestroyEffectBJ( GetLastCreatedEffectBJ() )
    call PlaySoundAtPointBJ( gg_snd_DeathPactTargetBirth1, 100, GetUnitLoc(GetTriggerUnit()), 384.00 )
    // Update the current number of monoliths
    call ConditionalTriggerExecute( gg_trg_Monolith_Count )
    // Since the Monolith has no death animation, get rid of it now
    call RemoveUnit( GetTriggerUnit() )
    // If this was not a creep-owned Monolith, don't do anything else
    if ( Trig_Monolith_Destroyed_Func010001() ) then
        return
    else
        call DoNothing(  )
    endif
    // Update leader board and quest info
    call ConditionalTriggerExecute( gg_trg_Update_Leaderboard )
    call ConditionalTriggerExecute( gg_trg_Update_Main_Quest )
    // Give all creep players some extra gold to aid them in these troubled times
    call ForForce( udg_creepPlayerGroup, function Trig_Monolith_Destroyed_Func015A )
    // Display message
    call QuestMessageBJ( GetPlayersByMapControl(MAP_CONTROL_USER), bj_QUESTMESSAGE_UPDATED, "TRIGSTR_181" )
    set udg_tempUnit = GetKillingUnitBJ()
    if ( Trig_Monolith_Destroyed_Func019C() ) then
        call DisplayTextToForce( GetPlayersByMapControl(MAP_CONTROL_USER), ( "|cff808080(" + ( GetPlayerName(GetOwningPlayer(udg_tempUnit)) + ")|r" ) ) )
    else
    endif
    // If this was the last Monolith, run victory
    if ( Trig_Monolith_Destroyed_Func021001() ) then
        call ConditionalTriggerExecute( gg_trg_Victory_Start )
    else
        call DoNothing(  )
    endif
endfunction

//===========================================================================
function InitTrig_Monolith_Destroyed takes nothing returns nothing
    set gg_trg_Monolith_Destroyed = CreateTrigger(  )
    call TriggerRegisterAnyUnitEventBJ( gg_trg_Monolith_Destroyed, EVENT_PLAYER_UNIT_DEATH )
    call TriggerAddCondition( gg_trg_Monolith_Destroyed, Condition( function Trig_Monolith_Destroyed_Conditions ) )
    call TriggerAddAction( gg_trg_Monolith_Destroyed, function Trig_Monolith_Destroyed_Actions )
endfunction

//===========================================================================
// Trigger: Create Leaderboard
//===========================================================================
function Trig_Create_Leaderboard_Actions takes nothing returns nothing
    call CreateLeaderboardBJ( GetPlayersByMapControl(MAP_CONTROL_USER), "TRIGSTR_091" )
    set udg_leaderBoard = GetLastCreatedLeaderboard()
    call LeaderboardAddItemBJ( Player(0), udg_leaderBoard, "TRIGSTR_092", 0 )
    call LeaderboardSetLabelColorBJ( udg_leaderBoard, 100, 80, 20, 0 )
    call LeaderboardSetPlayerItemStyleBJ( Player(0), udg_leaderBoard, true, false, false )
    call TriggerExecute( gg_trg_Update_Leaderboard )
endfunction

//===========================================================================
function InitTrig_Create_Leaderboard takes nothing returns nothing
    set gg_trg_Create_Leaderboard = CreateTrigger(  )
    call TriggerAddAction( gg_trg_Create_Leaderboard, function Trig_Create_Leaderboard_Actions )
endfunction

//===========================================================================
// Trigger: Update Leaderboard
//===========================================================================
function Trig_Update_Leaderboard_Actions takes nothing returns nothing
    set udg_tempInt = ( udg_numMonolithsStart - udg_numMonoliths )
    call LeaderboardSetPlayerItemLabelBJ( Player(0), udg_leaderBoard, udg_textLeaderboard[( udg_tempInt + ( 4 * ( udg_numMonolithsStart - 1 ) ) )] )
endfunction

//===========================================================================
function InitTrig_Update_Leaderboard takes nothing returns nothing
    set gg_trg_Update_Leaderboard = CreateTrigger(  )
    call TriggerAddAction( gg_trg_Update_Leaderboard, function Trig_Update_Leaderboard_Actions )
endfunction

//===========================================================================
// Trigger: Create Main Quest
//===========================================================================
function Trig_Create_Main_Quest_Func011Func001Func002A takes nothing returns nothing
    call CreateFogModifierRadiusLocBJ( true, GetEnumPlayer(), FOG_OF_WAR_FOGGED, GetUnitLoc(GetEnumUnit()), 128.00 )
endfunction

function Trig_Create_Main_Quest_Func011Func001C takes nothing returns boolean
    if ( not ( IsPlayerInForce(GetOwningPlayer(GetEnumUnit()), udg_creepPlayerGroup) == true ) ) then
        return false
    endif
    return true
endfunction

function Trig_Create_Main_Quest_Func011A takes nothing returns nothing
    if ( Trig_Create_Main_Quest_Func011Func001C() ) then
        // Reveal this Monolith to all user players
        call ForForce( udg_userPlayerGroup, function Trig_Create_Main_Quest_Func011Func001Func002A )
        // Ping minimap
        call PingMinimapLocForForceEx( udg_userPlayerGroup, GetUnitLoc(GetEnumUnit()), 8.00, bj_MINIMAPPINGSTYLE_SIMPLE, 50.00, 100, 50.00 )
    else
    endif
endfunction

function Trig_Create_Main_Quest_Actions takes nothing returns nothing
    // Create the quest
    call CreateQuestBJ( bj_QUESTTYPE_REQ_DISCOVERED, "TRIGSTR_044", "TRIGSTR_045", "ReplaceableTextures\\CommandButtons\\BTNResStone.tga" )
    set udg_questMain = GetLastCreatedQuestBJ()
    // Add requirement
    call CreateQuestItemBJ( udg_questMain, "TRIGSTR_095" )
    set udg_questMainReq = GetLastCreatedQuestItemBJ()
    // Display message
    call QuestMessageBJ( GetPlayersByMapControl(MAP_CONTROL_USER), bj_QUESTMESSAGE_DISCOVERED, udg_textMonolithsRevealed[udg_numMonolithsStart] )
    call FlashQuestDialogButtonBJ(  )
    // Reveal Monolith locations
    call ForGroupBJ( GetUnitsOfTypeIdAll('o000'), function Trig_Create_Main_Quest_Func011A )
    // Update
    call ConditionalTriggerExecute( gg_trg_Update_Main_Quest )
    call TriggerExecute( gg_trg_Create_Leaderboard )
endfunction

//===========================================================================
function InitTrig_Create_Main_Quest takes nothing returns nothing
    set gg_trg_Create_Main_Quest = CreateTrigger(  )
    call TriggerRegisterTimerEventSingle( gg_trg_Create_Main_Quest, 45.00 )
    call TriggerAddAction( gg_trg_Create_Main_Quest, function Trig_Create_Main_Quest_Actions )
endfunction

//===========================================================================
// Trigger: Update Main Quest
//===========================================================================
function Trig_Update_Main_Quest_Actions takes nothing returns nothing
    call ConditionalTriggerExecute( gg_trg_Monolith_Count )
    call QuestItemSetDescriptionBJ( udg_questMainReq, udg_textMonolithQuest[udg_numMonoliths] )
endfunction

//===========================================================================
function InitTrig_Update_Main_Quest takes nothing returns nothing
    set gg_trg_Update_Main_Quest = CreateTrigger(  )
    call TriggerAddAction( gg_trg_Update_Main_Quest, function Trig_Update_Main_Quest_Actions )
endfunction

//===========================================================================
// Trigger: Create Shard Quest
//===========================================================================
function Trig_Create_Shard_Quest_Actions takes nothing returns nothing
    // Create shard quest
    call CreateQuestBJ( bj_QUESTTYPE_OPT_DISCOVERED, "TRIGSTR_124", "TRIGSTR_125", "ReplaceableTextures\\CommandButtons\\BTNResStone.tga" )
    set udg_questShard = GetLastCreatedQuestBJ()
    call CreateQuestItemBJ( udg_questShard, "TRIGSTR_239" )
    call CreateQuestItemBJ( udg_questShard, "TRIGSTR_291" )
    // Show the message
    call QuestMessageBJ( GetPlayersByMapControl(MAP_CONTROL_USER), bj_QUESTMESSAGE_DISCOVERED, "TRIGSTR_237" )
    call FlashQuestDialogButtonBJ(  )
endfunction

//===========================================================================
function InitTrig_Create_Shard_Quest takes nothing returns nothing
    set gg_trg_Create_Shard_Quest = CreateTrigger(  )
    call TriggerRegisterTimerEventSingle( gg_trg_Create_Shard_Quest, 120.00 )
    call TriggerAddAction( gg_trg_Create_Shard_Quest, function Trig_Create_Shard_Quest_Actions )
endfunction

//===========================================================================
// Trigger: Shard Extra Hint
//===========================================================================
function Trig_Shard_Extra_Hint_Actions takes nothing returns nothing
    call QuestMessageBJ( GetPlayersByMapControl(MAP_CONTROL_USER), bj_QUESTMESSAGE_ALWAYSHINT, "TRIGSTR_238" )
endfunction

//===========================================================================
function InitTrig_Shard_Extra_Hint takes nothing returns nothing
    set gg_trg_Shard_Extra_Hint = CreateTrigger(  )
    call TriggerRegisterTimerEventSingle( gg_trg_Shard_Extra_Hint, 130.00 )
    call TriggerAddAction( gg_trg_Shard_Extra_Hint, function Trig_Shard_Extra_Hint_Actions )
endfunction

//===========================================================================
// Trigger: Attack Enemy
//===========================================================================
function Trig_Attack_Enemy_Conditions takes nothing returns boolean
    if ( not ( IsPlayerInForce(GetOwningPlayer(GetTriggerUnit()), udg_creepPlayerGroup) == true ) ) then
        return false
    endif
    if ( not ( GetHeroLevel(GetTriggerUnit()) >= udg_aiAttackEnemyHeroLevel ) ) then
        return false
    endif
    return true
endfunction

function Trig_Attack_Enemy_Actions takes nothing returns nothing
    // Send command 1, which tells the AI to start attacking the enemy
    // (This is checked in the "Attack Enemy" condition in the AI Editor)
    call CommandAI( GetOwningPlayer(GetTriggerUnit()), 1, 0 )
endfunction

//===========================================================================
function InitTrig_Attack_Enemy takes nothing returns nothing
    set gg_trg_Attack_Enemy = CreateTrigger(  )
    call TriggerRegisterAnyUnitEventBJ( gg_trg_Attack_Enemy, EVENT_PLAYER_HERO_LEVEL )
    call TriggerAddCondition( gg_trg_Attack_Enemy, Condition( function Trig_Attack_Enemy_Conditions ) )
    call TriggerAddAction( gg_trg_Attack_Enemy, function Trig_Attack_Enemy_Actions )
endfunction

//===========================================================================
// Trigger: Victory Start
//===========================================================================
function Trig_Victory_Start_Conditions takes nothing returns boolean
    if ( not ( udg_numMonoliths == 0 ) ) then
        return false
    endif
    return true
endfunction

function Trig_Victory_Start_Actions takes nothing returns nothing
    // Turn on victory flag and turn off defeat flag (in case defeat just happened)
    set udg_victory = true
    set udg_defeat = false
    // Start timer for victory message
    call StartTimerBJ( udg_victoryMsgTimer, false, 3.00 )
endfunction

//===========================================================================
function InitTrig_Victory_Start takes nothing returns nothing
    set gg_trg_Victory_Start = CreateTrigger(  )
    call TriggerAddCondition( gg_trg_Victory_Start, Condition( function Trig_Victory_Start_Conditions ) )
    call TriggerAddAction( gg_trg_Victory_Start, function Trig_Victory_Start_Actions )
endfunction

//===========================================================================
// Trigger: Victory Message
//===========================================================================
function Trig_Victory_Message_Conditions takes nothing returns boolean
    if ( not ( udg_defeat == false ) ) then
        return false
    endif
    return true
endfunction

function Trig_Victory_Message_Actions takes nothing returns nothing
    // Display message
    call QuestMessageBJ( GetPlayersByMapControl(MAP_CONTROL_USER), bj_QUESTMESSAGE_COMPLETED, "TRIGSTR_208" )
    call QuestSetCompletedBJ( udg_questMain, true )
    // Start timer for game end
    call StartTimerBJ( udg_victoryEndTimer, false, 8.00 )
endfunction

//===========================================================================
function InitTrig_Victory_Message takes nothing returns nothing
    set gg_trg_Victory_Message = CreateTrigger(  )
    call TriggerRegisterTimerExpireEventBJ( gg_trg_Victory_Message, udg_victoryMsgTimer )
    call TriggerAddCondition( gg_trg_Victory_Message, Condition( function Trig_Victory_Message_Conditions ) )
    call TriggerAddAction( gg_trg_Victory_Message, function Trig_Victory_Message_Actions )
endfunction

//===========================================================================
// Trigger: Victory End
//===========================================================================
function Trig_Victory_End_Conditions takes nothing returns boolean
    if ( not ( udg_defeat == false ) ) then
        return false
    endif
    return true
endfunction

function Trig_Victory_End_Func003A takes nothing returns nothing
    call CustomVictoryBJ( GetEnumPlayer(), true, true )
endfunction

function Trig_Victory_End_Actions takes nothing returns nothing
    // Peace out, thanks for playing
    call ForForce( udg_userPlayerGroup, function Trig_Victory_End_Func003A )
endfunction

//===========================================================================
function InitTrig_Victory_End takes nothing returns nothing
    set gg_trg_Victory_End = CreateTrigger(  )
    call TriggerRegisterTimerExpireEventBJ( gg_trg_Victory_End, udg_victoryEndTimer )
    call TriggerAddCondition( gg_trg_Victory_End, Condition( function Trig_Victory_End_Conditions ) )
    call TriggerAddAction( gg_trg_Victory_End, function Trig_Victory_End_Actions )
endfunction

//===========================================================================
// Trigger: Defeat Check
//===========================================================================
function Trig_Defeat_Check_Conditions takes nothing returns boolean
    if ( not ( IsPlayerInForce(GetOwningPlayer(GetTriggerUnit()), udg_userPlayerGroup) == true ) ) then
        return false
    endif
    if ( not ( udg_defeat == false ) ) then
        return false
    endif
    return true
endfunction

function Trig_Defeat_Check_Func006A takes nothing returns nothing
    set udg_tempInt = ( udg_tempInt + GetPlayerStructureCount(GetEnumPlayer(), true) )
endfunction

function Trig_Defeat_Check_Func014C takes nothing returns boolean
    if ( not ( udg_tempInt == 0 ) ) then
        return false
    endif
    return true
endfunction

function Trig_Defeat_Check_Actions takes nothing returns nothing
    // Wait for a finite moment in case this destroy happened due to another trigger
    // This keeps the -creepme cheat from defeating the player
    call PolledWait( 0.50 )
    // Count all structures owned by users
    set udg_tempInt = 0
    call ForForce( udg_userPlayerGroup, function Trig_Defeat_Check_Func006A )
    // If they don't have any, defeat
    if ( Trig_Defeat_Check_Func014C() ) then
        call ConditionalTriggerExecute( gg_trg_Defeat_Start )
    else
        set udg_defeat = false
    endif
endfunction

//===========================================================================
function InitTrig_Defeat_Check takes nothing returns nothing
    set gg_trg_Defeat_Check = CreateTrigger(  )
    call TriggerRegisterAnyUnitEventBJ( gg_trg_Defeat_Check, EVENT_PLAYER_UNIT_DEATH )
    call TriggerRegisterAnyUnitEventBJ( gg_trg_Defeat_Check, EVENT_PLAYER_UNIT_CONSTRUCT_START )
    call TriggerRegisterAnyUnitEventBJ( gg_trg_Defeat_Check, EVENT_PLAYER_UNIT_CONSTRUCT_CANCEL )
    call TriggerRegisterAnyUnitEventBJ( gg_trg_Defeat_Check, EVENT_PLAYER_UNIT_CONSTRUCT_FINISH )
    call TriggerAddCondition( gg_trg_Defeat_Check, Condition( function Trig_Defeat_Check_Conditions ) )
    call TriggerAddAction( gg_trg_Defeat_Check, function Trig_Defeat_Check_Actions )
endfunction

//===========================================================================
// Trigger: Defeat Start
//===========================================================================
function Trig_Defeat_Start_Conditions takes nothing returns boolean
    if ( not ( udg_victory == false ) ) then
        return false
    endif
    return true
endfunction

function Trig_Defeat_Start_Actions takes nothing returns nothing
    // Turn on defeat flag
    set udg_defeat = true
    // Start timer for defeat message
    call StartTimerBJ( udg_defeatMsgTimer, false, 1.00 )
endfunction

//===========================================================================
function InitTrig_Defeat_Start takes nothing returns nothing
    set gg_trg_Defeat_Start = CreateTrigger(  )
    call TriggerAddCondition( gg_trg_Defeat_Start, Condition( function Trig_Defeat_Start_Conditions ) )
    call TriggerAddAction( gg_trg_Defeat_Start, function Trig_Defeat_Start_Actions )
endfunction

//===========================================================================
// Trigger: Defeat Message
//===========================================================================
function Trig_Defeat_Message_Conditions takes nothing returns boolean
    if ( not ( udg_defeat == true ) ) then
        return false
    endif
    return true
endfunction

function Trig_Defeat_Message_Actions takes nothing returns nothing
    // Display message
    call QuestMessageBJ( GetPlayersByMapControl(MAP_CONTROL_USER), bj_QUESTMESSAGE_FAILED, "TRIGSTR_209" )
    // Start timer for game end
    call StartTimerBJ( udg_defeatEndTimer, false, 8.00 )
endfunction

//===========================================================================
function InitTrig_Defeat_Message takes nothing returns nothing
    set gg_trg_Defeat_Message = CreateTrigger(  )
    call TriggerRegisterTimerExpireEventBJ( gg_trg_Defeat_Message, udg_defeatMsgTimer )
    call TriggerAddCondition( gg_trg_Defeat_Message, Condition( function Trig_Defeat_Message_Conditions ) )
    call TriggerAddAction( gg_trg_Defeat_Message, function Trig_Defeat_Message_Actions )
endfunction

//===========================================================================
// Trigger: Defeat End
//===========================================================================
function Trig_Defeat_End_Conditions takes nothing returns boolean
    if ( not ( udg_defeat == true ) ) then
        return false
    endif
    return true
endfunction

function Trig_Defeat_End_Func003A takes nothing returns nothing
    call CustomDefeatBJ( GetEnumPlayer(), "TRIGSTR_211" )
endfunction

function Trig_Defeat_End_Actions takes nothing returns nothing
    // Peace out, thanks for playing
    call ForForce( udg_userPlayerGroup, function Trig_Defeat_End_Func003A )
endfunction

//===========================================================================
function InitTrig_Defeat_End takes nothing returns nothing
    set gg_trg_Defeat_End = CreateTrigger(  )
    call TriggerRegisterTimerExpireEventBJ( gg_trg_Defeat_End, udg_defeatEndTimer )
    call TriggerAddCondition( gg_trg_Defeat_End, Condition( function Trig_Defeat_End_Conditions ) )
    call TriggerAddAction( gg_trg_Defeat_End, function Trig_Defeat_End_Actions )
endfunction

//===========================================================================
function InitCustomTriggers takes nothing returns nothing
    call InitTrig_Remove_Sockpuppet(  )
    call InitTrig_Map_Init(  )
    call InitTrig_Init_Variables(  )
    call InitTrig_Externalized_Strings(  )
    call InitTrig_Creep_Type_Info(  )
    call InitTrig_Find_User_From_Player(  )
    call InitTrig_Set_Up_User_Players(  )
    call InitTrig_Empty_Player(  )
    call InitTrig_Create_User_Player(  )
    call InitTrig_Start_Melee_AI(  )
    call InitTrig_Choose_Random_Location(  )
    call InitTrig_Set_Up_Creep_Players(  )
    call InitTrig_Create_Creep_Player(  )
    call InitTrig_Place_All_Shards(  )
    call InitTrig_Place_One_Shard(  )
    call InitTrig_Intro_Cinematic_Screenshot(  )
    call InitTrig_Intro_Cinematic_Start(  )
    call InitTrig_Intro_Cinematic_End(  )
    call InitTrig_Cheats_Disabled(  )
    call InitTrig_Play_As(  )
    call InitTrig_Team_Coloring_Construction(  )
    call InitTrig_Team_Coloring_Update_All(  )
    call InitTrig_Team_Coloring_Apply(  )
    call InitTrig_Wolf_Den_Shrubs_Create(  )
    call InitTrig_Wolf_Den_Shrubs_Destroy(  )
    call InitTrig_Werewolf_Morph(  )
    call InitTrig_Monolith_Work_Start(  )
    call InitTrig_Monolith_Work_End(  )
    call InitTrig_Ping_Shards(  )
    call InitTrig_Shard_Disabled(  )
    call InitTrig_Shard_Picked_Up(  )
    call InitTrig_Creep_Reclaims_Shard(  )
    call InitTrig_User_Reclaims_Shard(  )
    call InitTrig_Computer_Ally_Gets_Shard(  )
    call InitTrig_User_Uses_Shard(  )
    call InitTrig_Shard_Disruption_Begin(  )
    call InitTrig_Shard_Disruption_End(  )
    call InitTrig_Lumber_Cheese_Prevention(  )
    call InitTrig_Monolith_Count(  )
    call InitTrig_Monolith_Destroyed(  )
    call InitTrig_Create_Leaderboard(  )
    call InitTrig_Update_Leaderboard(  )
    call InitTrig_Create_Main_Quest(  )
    call InitTrig_Update_Main_Quest(  )
    call InitTrig_Create_Shard_Quest(  )
    call InitTrig_Shard_Extra_Hint(  )
    call InitTrig_Attack_Enemy(  )
    call InitTrig_Victory_Start(  )
    call InitTrig_Victory_Message(  )
    call InitTrig_Victory_End(  )
    call InitTrig_Defeat_Check(  )
    call InitTrig_Defeat_Start(  )
    call InitTrig_Defeat_Message(  )
    call InitTrig_Defeat_End(  )
endfunction

//===========================================================================
function RunInitializationTriggers takes nothing returns nothing
    call ConditionalTriggerExecute( gg_trg_Map_Init )
endfunction

//***************************************************************************
//*
//*  Players
//*
//***************************************************************************

function InitCustomPlayerSlots takes nothing returns nothing

    // Player 0
    call SetPlayerStartLocation( Player(0), 0 )
    call SetPlayerColor( Player(0), ConvertPlayerColor(0) )
    call SetPlayerRacePreference( Player(0), RACE_PREF_RANDOM )
    call SetPlayerRaceSelectable( Player(0), true )
    call SetPlayerController( Player(0), MAP_CONTROL_USER )

    // Player 1
    call SetPlayerStartLocation( Player(1), 1 )
    call SetPlayerColor( Player(1), ConvertPlayerColor(1) )
    call SetPlayerRacePreference( Player(1), RACE_PREF_RANDOM )
    call SetPlayerRaceSelectable( Player(1), true )
    call SetPlayerController( Player(1), MAP_CONTROL_USER )

    // Player 2
    call SetPlayerStartLocation( Player(2), 2 )
    call SetPlayerColor( Player(2), ConvertPlayerColor(2) )
    call SetPlayerRacePreference( Player(2), RACE_PREF_RANDOM )
    call SetPlayerRaceSelectable( Player(2), true )
    call SetPlayerController( Player(2), MAP_CONTROL_USER )

    // Player 3
    call SetPlayerStartLocation( Player(3), 3 )
    call SetPlayerColor( Player(3), ConvertPlayerColor(3) )
    call SetPlayerRacePreference( Player(3), RACE_PREF_RANDOM )
    call SetPlayerRaceSelectable( Player(3), true )
    call SetPlayerController( Player(3), MAP_CONTROL_USER )

    // Player 4
    call SetPlayerStartLocation( Player(4), 4 )
    call ForcePlayerStartLocation( Player(4), 4 )
    call SetPlayerColor( Player(4), ConvertPlayerColor(4) )
    call SetPlayerRacePreference( Player(4), RACE_PREF_NIGHTELF )
    call SetPlayerRaceSelectable( Player(4), false )
    call SetPlayerController( Player(4), MAP_CONTROL_COMPUTER )

    // Player 5
    call SetPlayerStartLocation( Player(5), 5 )
    call ForcePlayerStartLocation( Player(5), 5 )
    call SetPlayerColor( Player(5), ConvertPlayerColor(5) )
    call SetPlayerRacePreference( Player(5), RACE_PREF_NIGHTELF )
    call SetPlayerRaceSelectable( Player(5), false )
    call SetPlayerController( Player(5), MAP_CONTROL_COMPUTER )

    // Player 6
    call SetPlayerStartLocation( Player(6), 6 )
    call ForcePlayerStartLocation( Player(6), 6 )
    call SetPlayerColor( Player(6), ConvertPlayerColor(6) )
    call SetPlayerRacePreference( Player(6), RACE_PREF_NIGHTELF )
    call SetPlayerRaceSelectable( Player(6), false )
    call SetPlayerController( Player(6), MAP_CONTROL_COMPUTER )

    // Player 7
    call SetPlayerStartLocation( Player(7), 7 )
    call ForcePlayerStartLocation( Player(7), 7 )
    call SetPlayerColor( Player(7), ConvertPlayerColor(7) )
    call SetPlayerRacePreference( Player(7), RACE_PREF_NIGHTELF )
    call SetPlayerRaceSelectable( Player(7), false )
    call SetPlayerController( Player(7), MAP_CONTROL_COMPUTER )

endfunction

function InitCustomTeams takes nothing returns nothing
    // Force: 妫灄浠诲姟閮ㄩ槦
    call SetPlayerTeam( Player(0), 0 )
    call SetPlayerTeam( Player(1), 0 )
    call SetPlayerTeam( Player(2), 0 )
    call SetPlayerTeam( Player(3), 0 )

    //   Allied
    call SetPlayerAllianceStateAllyBJ( Player(0), Player(1), true )
    call SetPlayerAllianceStateAllyBJ( Player(0), Player(2), true )
    call SetPlayerAllianceStateAllyBJ( Player(0), Player(3), true )
    call SetPlayerAllianceStateAllyBJ( Player(1), Player(0), true )
    call SetPlayerAllianceStateAllyBJ( Player(1), Player(2), true )
    call SetPlayerAllianceStateAllyBJ( Player(1), Player(3), true )
    call SetPlayerAllianceStateAllyBJ( Player(2), Player(0), true )
    call SetPlayerAllianceStateAllyBJ( Player(2), Player(1), true )
    call SetPlayerAllianceStateAllyBJ( Player(2), Player(3), true )
    call SetPlayerAllianceStateAllyBJ( Player(3), Player(0), true )
    call SetPlayerAllianceStateAllyBJ( Player(3), Player(1), true )
    call SetPlayerAllianceStateAllyBJ( Player(3), Player(2), true )

    //   Shared Vision
    call SetPlayerAllianceStateVisionBJ( Player(0), Player(1), true )
    call SetPlayerAllianceStateVisionBJ( Player(0), Player(2), true )
    call SetPlayerAllianceStateVisionBJ( Player(0), Player(3), true )
    call SetPlayerAllianceStateVisionBJ( Player(1), Player(0), true )
    call SetPlayerAllianceStateVisionBJ( Player(1), Player(2), true )
    call SetPlayerAllianceStateVisionBJ( Player(1), Player(3), true )
    call SetPlayerAllianceStateVisionBJ( Player(2), Player(0), true )
    call SetPlayerAllianceStateVisionBJ( Player(2), Player(1), true )
    call SetPlayerAllianceStateVisionBJ( Player(2), Player(3), true )
    call SetPlayerAllianceStateVisionBJ( Player(3), Player(0), true )
    call SetPlayerAllianceStateVisionBJ( Player(3), Player(1), true )
    call SetPlayerAllianceStateVisionBJ( Player(3), Player(2), true )

    // Force: 鐭冲閲庣敓鍗曚綅
    call SetPlayerTeam( Player(4), 1 )
    call SetPlayerTeam( Player(5), 1 )
    call SetPlayerTeam( Player(6), 1 )
    call SetPlayerTeam( Player(7), 1 )

    //   Allied
    call SetPlayerAllianceStateAllyBJ( Player(4), Player(5), true )
    call SetPlayerAllianceStateAllyBJ( Player(4), Player(6), true )
    call SetPlayerAllianceStateAllyBJ( Player(4), Player(7), true )
    call SetPlayerAllianceStateAllyBJ( Player(5), Player(4), true )
    call SetPlayerAllianceStateAllyBJ( Player(5), Player(6), true )
    call SetPlayerAllianceStateAllyBJ( Player(5), Player(7), true )
    call SetPlayerAllianceStateAllyBJ( Player(6), Player(4), true )
    call SetPlayerAllianceStateAllyBJ( Player(6), Player(5), true )
    call SetPlayerAllianceStateAllyBJ( Player(6), Player(7), true )
    call SetPlayerAllianceStateAllyBJ( Player(7), Player(4), true )
    call SetPlayerAllianceStateAllyBJ( Player(7), Player(5), true )
    call SetPlayerAllianceStateAllyBJ( Player(7), Player(6), true )

    //   Shared Vision
    call SetPlayerAllianceStateVisionBJ( Player(4), Player(5), true )
    call SetPlayerAllianceStateVisionBJ( Player(4), Player(6), true )
    call SetPlayerAllianceStateVisionBJ( Player(4), Player(7), true )
    call SetPlayerAllianceStateVisionBJ( Player(5), Player(4), true )
    call SetPlayerAllianceStateVisionBJ( Player(5), Player(6), true )
    call SetPlayerAllianceStateVisionBJ( Player(5), Player(7), true )
    call SetPlayerAllianceStateVisionBJ( Player(6), Player(4), true )
    call SetPlayerAllianceStateVisionBJ( Player(6), Player(5), true )
    call SetPlayerAllianceStateVisionBJ( Player(6), Player(7), true )
    call SetPlayerAllianceStateVisionBJ( Player(7), Player(4), true )
    call SetPlayerAllianceStateVisionBJ( Player(7), Player(5), true )
    call SetPlayerAllianceStateVisionBJ( Player(7), Player(6), true )

endfunction

function InitAllyPriorities takes nothing returns nothing

    call SetStartLocPrioCount( 0, 1 )
    call SetStartLocPrio( 0, 0, 1, MAP_LOC_PRIO_HIGH )

    call SetStartLocPrioCount( 1, 2 )
    call SetStartLocPrio( 1, 0, 0, MAP_LOC_PRIO_HIGH )
    call SetStartLocPrio( 1, 1, 2, MAP_LOC_PRIO_HIGH )

    call SetStartLocPrioCount( 2, 2 )
    call SetStartLocPrio( 2, 0, 1, MAP_LOC_PRIO_HIGH )
    call SetStartLocPrio( 2, 1, 3, MAP_LOC_PRIO_HIGH )

    call SetStartLocPrioCount( 3, 1 )
    call SetStartLocPrio( 3, 0, 2, MAP_LOC_PRIO_HIGH )

    call SetStartLocPrioCount( 4, 3 )
    call SetStartLocPrio( 4, 0, 5, MAP_LOC_PRIO_HIGH )
    call SetStartLocPrio( 4, 1, 6, MAP_LOC_PRIO_HIGH )
    call SetStartLocPrio( 4, 2, 7, MAP_LOC_PRIO_HIGH )

    call SetStartLocPrioCount( 5, 3 )
    call SetStartLocPrio( 5, 0, 4, MAP_LOC_PRIO_HIGH )
    call SetStartLocPrio( 5, 1, 6, MAP_LOC_PRIO_HIGH )
    call SetStartLocPrio( 5, 2, 7, MAP_LOC_PRIO_HIGH )

    call SetStartLocPrioCount( 6, 3 )
    call SetStartLocPrio( 6, 0, 4, MAP_LOC_PRIO_HIGH )
    call SetStartLocPrio( 6, 1, 5, MAP_LOC_PRIO_HIGH )
    call SetStartLocPrio( 6, 2, 7, MAP_LOC_PRIO_HIGH )

    call SetStartLocPrioCount( 7, 3 )
    call SetStartLocPrio( 7, 0, 4, MAP_LOC_PRIO_HIGH )
    call SetStartLocPrio( 7, 1, 5, MAP_LOC_PRIO_HIGH )
    call SetStartLocPrio( 7, 2, 6, MAP_LOC_PRIO_HIGH )
endfunction

//***************************************************************************
//*
//*  Main Initialization
//*
//***************************************************************************

//===========================================================================
function main takes nothing returns nothing
    call SetCameraBounds( -5376.0 + GetCameraMargin(CAMERA_MARGIN_LEFT), -7680.0 + GetCameraMargin(CAMERA_MARGIN_BOTTOM), 5376.0 - GetCameraMargin(CAMERA_MARGIN_RIGHT), 7168.0 - GetCameraMargin(CAMERA_MARGIN_TOP), -5376.0 + GetCameraMargin(CAMERA_MARGIN_LEFT), 7168.0 - GetCameraMargin(CAMERA_MARGIN_TOP), 5376.0 - GetCameraMargin(CAMERA_MARGIN_RIGHT), -7680.0 + GetCameraMargin(CAMERA_MARGIN_BOTTOM) )
    call SetDayNightModels( "Environment\\DNC\\DNCAshenvale\\DNCAshenvaleTerrain\\DNCAshenvaleTerrain.mdl", "Environment\\DNC\\DNCAshenvale\\DNCAshenvaleUnit\\DNCAshenvaleUnit.mdl" )
    call NewSoundEnvironment( "Default" )
    call SetAmbientDaySound( "AshenvaleDay" )
    call SetAmbientNightSound( "AshenvaleNight" )
    call SetMapMusic( "Music", true, 0 )
    call InitSounds(  )
    call CreateRegions(  )
    call CreateCameras(  )
    call InitRandomGroups(  )
    call CreateAllUnits(  )
    call InitBlizzard(  )

//! initstructs
call ExecuteFunc("InitTrig_Trigger_QunTiFengBaoZhiChui")

//! initdatastructs
    call InitGlobals(  )
    call InitCustomTriggers(  )
    call RunInitializationTriggers(  )

endfunction

//***************************************************************************
//*
//*  Map Configuration
//*
//***************************************************************************

function config takes nothing returns nothing
    call SetMapName( "TRIGSTR_001" )
    call SetMapDescription( "TRIGSTR_003" )
    call SetPlayers( 8 )
    call SetTeams( 8 )
    call SetGamePlacement( MAP_PLACEMENT_TEAMS_TOGETHER )

    call DefineStartLocation( 0, -3840.0, -6400.0 )
    call DefineStartLocation( 1, -1280.0, -6400.0 )
    call DefineStartLocation( 2, 1280.0, -6400.0 )
    call DefineStartLocation( 3, 3840.0, -6400.0 )
    call DefineStartLocation( 4, 5632.0, 7552.0 )
    call DefineStartLocation( 5, 5632.0, 7552.0 )
    call DefineStartLocation( 6, 5632.0, 7552.0 )
    call DefineStartLocation( 7, 5632.0, 7552.0 )

    // Player setup
    call InitCustomPlayerSlots(  )
    call InitCustomTeams(  )
    call InitAllyPriorities(  )
endfunction