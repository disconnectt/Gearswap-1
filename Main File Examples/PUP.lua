--include setup -------------------------------------------------------------------------------------------------------------------
function include_setup()
    --Disable All Includes (Default: false)
    Disable_All = false
    --Use Display Include (Default: true)
    Display = true
    --Start with minimized window (Default: false)
    window_hidden = true
    -----------------------------------------------------------------------------------------------------------------------------------
    jobneck = {neck={ name="Magus Torque", augments={'MP+10','Mag. Acc.+1',}},} --if using the conquest include put the neck that you want as your main neck when conquest neck is not needed
    jobring = {left_ring="Onyx Ring",} --if using the conquest include put the left_ring that you want as your main ring when conquest ring is not needed
end
include('includes/Include.lua')
--Job functions
function gear_setup()
    sets.weapon['Hand-to-Hand'] = {main="Darksteel Katars",sub=empty,}
    sets.weapon['None'] = {main=empty,sub=empty,}
    -- add_weapon_modes = {'name1','name2'}
    sets.range['Other'] = {range="Animator",ammo=empty,}
    -- add_range_modes = {'name1','name2'}
    sets.armor['Basic'] = {}
    -- add_armor_modes = {'name1','name2'}
    sets.Engaged = {
    head="Tct.Mgc. Hat",
    body="Tct.Mgc. Coat",
    hands="Tct.Mgc. Cuffs",
    legs="Tct.Mgc. Slops",
    feet="Tct.Mgc. Pigaches",
    waist="Mrc.Cpt. Belt",
    left_ear="Ardent Earring",
    right_ear="Zircon Earring",
    left_ring="Rajas Ring",
    right_ring="Bastokan Ring",
    back="Jester's Cape",
    }
    sets.Idle = {
    head="Tct.Mgc. Hat",
    body="Tct.Mgc. Coat",
    hands="Tct.Mgc. Cuffs",
    legs="Tct.Mgc. Slops",
    feet="Tct.Mgc. Pigaches",
    waist="Mrc.Cpt. Belt",
    left_ear="Ardent Earring",
    right_ear="Zircon Earring",
    left_ring="Rajas Ring",
    right_ring="Bastokan Ring",
    back="Jester's Cape",
    }
    sets.Resting = {
    head="Tct.Mgc. Hat",
    body="Tct.Mgc. Coat",
    hands="Tct.Mgc. Cuffs",
    legs="Tct.Mgc. Slops",
    feet="Tct.Mgc. Pigaches",
    waist="Mrc.Cpt. Belt",
    left_ear="Sanative Earring",
    right_ear="Zircon Earring",
    left_ring="Rajas Ring",
    right_ring="Bastokan Ring",
    back="Jester's Cape",
    }
    send_command('@lua load PetTP')
end
function mf_file_unload(new_job)
    send_command('@lua unload PetTP')
    return
end
function mf_status_change(new,old,status,set_gear)
    return set_gear
end
function mf_pet_change(pet,gain,status,set_gear)
    return set_gear
end
function mf_filtered_action(spell,status,set_gear)
    return set_gear
end
function mf_pretarget(spell,status,set_gear)
    return set_gear
end
function mf_precast(spell,status,set_gear)
    return set_gear
end
function mf_buff_change(name,gain,buff_table)
    return set_gear
end
function mf_midcast(spell,status,set_gear)
    return set_gear
end
function mf_pet_midcast(spell,status,set_gear)
    return set_gear
end
function mf_aftercast(spell,status,set_gear)
    return set_gear
end
function mf_pet_aftercast(spell,status,set_gear)
    return set_gear
end
function mf_self_command(command)
    return
end