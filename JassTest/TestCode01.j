library tese initializer InitTrig_Trigger_QunTiFengBaoZhiChui
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

endlibrary
