--include setup -------------------------------------------------------------------------------------------------------------------
function include_setup()
    --Disable All Includes (Default: false)
    Disable_All = false
    --Use Display Include (Default: true)
    Display = true
    --Start with minimized window (Default: false)
    window_hidden = true
end
include('SMDinclude/includes/Include.lua')
--Job functions
function gear_setup()
    sets["Curing Waltz"] = {} -- use this set for all Curing Waltz
    sets.weapon['Scythe'] = {main="Eminent Sickle",sub="Uther's Grip"}
    sets.weapon['None'] = {main=empty,sub=empty}
    sets.range['Other'] = {range=empty,ammo="Fullmetal Bullet"}
    sets.armor['Basic'] = {}
    sets.Engaged = {
    head="Wayfarer Circlet",
    body="Wayfarer Robe",
    hands="Wayfarer Cuffs",
    legs="Wayfarer Slops",
    feet="Wayfarer Clogs",
    neck={ name="Wivre Gorget", augments={'"Subtle Blow"+4','MP+3',}},
    waist="Marid Belt",
    left_ear="Beetle Earring",
    right_ear="Sardonyx Earring",
    left_ring="Vehemence Ring",
    right_ring="Enlivened Ring",
    back="Cerberus Mantle",
    }
    sets.Idle = {
    head="Wayfarer Circlet",
    body="Wayfarer Robe",
    hands="Wayfarer Cuffs",
    legs="Wayfarer Slops",
    feet="Wayfarer Clogs",
    neck={ name="Wivre Gorget", augments={'"Subtle Blow"+4','MP+3',}},
    waist="Marid Belt",
    left_ear="Beetle Earring",
    right_ear="Sardonyx Earring",
    left_ring="Vehemence Ring",
    right_ring="Enlivened Ring",
    back="Cerberus Mantle",
    }
    sets.Resting = {
    head="Wayfarer Circlet",
    body="Wayfarer Robe",
    hands="Wayfarer Cuffs",
    legs="Wayfarer Slops",
    feet="Wayfarer Clogs",
    neck={ name="Wivre Gorget", augments={'"Subtle Blow"+4','MP+3',}},
    waist="Marid Belt",
    left_ear="Sanative Earring",
    right_ear="Sardonyx Earring",
    left_ring="Vehemence Ring",
    right_ring="Enlivened Ring",
    back="Cerberus Mantle",
    }
end
function mf.file_load()
    if windower.ffxi.get_info().mog_house then
        send_command('org organize')
    end
end
function mf.file_unload(new_job)
end
function mf.status_change(status,current_event,new,old)
end
function mf.pet_change(status,current_event,pet,gain)
end
function mf.filtered_action(status,current_event,spell)
end
function mf.pretarget(status,current_event,spell)
end
function mf.precast(status,current_event,spell)
    if spell.action_type == "Ranged Attack" then
        sets.building[current_event] = set_combine(sets.building[current_event], {left_ring="Fistmele Ring",right_ring="Longshot Ring"})
    elseif spell.action_type == "Magic" then
        sets.building[current_event] = set_combine(sets.building[current_event], {left_ring="Acumen Ring",right_ring="Perception Ring"})
    end
end
function mf.buff_change(status,current_event,name,gain,buff_table)
end
function mf.midcast(status,current_event,spell)
    if spell.action_type == "Ranged Attack" then
        sets.building[current_event] = set_combine(sets.building[current_event], {left_ring="Fistmele Ring",right_ring="Longshot Ring"})
    elseif spell.action_type == "Magic" then
        sets.building[current_event] = set_combine(sets.building[current_event], {left_ring="Acumen Ring",right_ring="Perception Ring"})
    end
end
function mf.pet_midcast(status,current_event,spell)
end
function mf.aftercast(status,current_event,spell)
end
function mf.pet_aftercast(status,current_event,spell)
end
function mf.self_command(command)
end