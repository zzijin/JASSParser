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
    if ( Trig_Skill_Target_Condition() ) then
        set point02 = GetUnitLoc(GetTriggerUnit())
        call CreateNUnitsAtLoc( 1, 'h001', GetOwningPlayer(GetTriggerUnit()), point02, bj_UNIT_FACING )
        call ShowUnitHide( GetLastCreatedUnit() )
        call UnitAddAbilityBJ( 'A00A', GetLastCreatedUnit() )
        call SetUnitAbilityLevelSwapped( 'A00A', GetLastCreatedUnit(), GetUnitAbilityLevelSwapped('A009', GetTriggerUnit()) )
        call IssueTargetOrderBJ( GetLastCreatedUnit(), "thunderbolt", GetEnumUnit() )
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
function InitTrig_Untitled_Trigger_001 takes nothing returns nothing
    set gg_trg_Untitled_Trigger_001 = CreateTrigger(  )
    call TriggerRegisterAnyUnitEventBJ( gg_trg_Untitled_Trigger_001, EVENT_PLAYER_UNIT_SPELL_EFFECT )
    call TriggerAddCondition( gg_trg_Untitled_Trigger_001, Condition( function Trig_Conditions ) )
    call TriggerAddAction( gg_trg_Untitled_Trigger_001, function Trig_Actions )
endfunction