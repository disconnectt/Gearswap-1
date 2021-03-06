--include setup -------------------------------------------------------------------------------------------------------------------
function include_setup()
    --Disable All Includes (Default: false)
    Disable_All = false
    --Use Display Include (Default: true)
    Display = true
    --Start with minimized window (Default: false)
    window_hidden = true
end
include('organizer-lib')
include('SMDinclude/includes/Include.lua')
--Job functions
function gear_setup()
    sets["Waltz"] = {} -- use this set for all Waltz
    sets.weapon['Polearm'] = {main="Eminent Lance",sub="Danger Grip"}
    sets.weapon['None'] = {main=empty,sub=empty}
    sets.range['Other'] = {range=empty,ammo="Fullmetal Bullet"}
    sets.armor['Basic'] = {}
    sets.armor['Capacity_Points'] = {back="Aptitude Mantle +1",}
    sets.Engaged = {
        head="Tema. Headband",
        body="Temachtiani Shirt",
        hands="Temachtiani Gloves",
        legs="Temachtiani Pants",
        feet="Temachtiani Boots",
        neck={ name="Wivre Gorget", augments={'"Subtle Blow"+4','MP+3',}},
        waist="Marid Belt",
        left_ear="Dragonkin Earring",
        right_ear="Terminus Earring",
        left_ring="Vehemence Ring",
        right_ring="Prouesse Ring",
        back="Cerberus Mantle",
        }
    sets.Idle = {
        head="Tema. Headband",
        body="Temachtiani Shirt",
        hands="Temachtiani Gloves",
        legs="Temachtiani Pants",
        feet="Temachtiani Boots",
        neck={ name="Wivre Gorget", augments={'"Subtle Blow"+4','MP+3',}},
        waist="Marid Belt",
        left_ear="Dragonkin Earring",
        right_ear="Terminus Earring",
        left_ring="Vehemence Ring",
        right_ring="Prouesse Ring",
        back="Cerberus Mantle",
        }
    sets.Resting = {
        head="Tema. Headband",
        body="Temachtiani Shirt",
        hands="Temachtiani Gloves",
        legs="Temachtiani Pants",
        feet="Temachtiani Boots",
        neck={ name="Wivre Gorget", augments={'"Subtle Blow"+4','MP+3',}},
        waist="Marid Belt",
        left_ear="Sanative Earring",
        right_ear="Terminus Earring",
        left_ring="Vehemence Ring",
        right_ring="Prouesse Ring",
        back="Cerberus Mantle",
        }
end
function mf.file_load()
    send_command('lua load PetTP')
    if windower.ffxi.get_info().mog_house then
        send_command('gs org')
    end
end
function mf.file_unload(new_job)
    if not S{'BST','PUP','GEO','DRG','SMN'}:contains(new_job) then
        send_command('lua unload PetTP')
    end
end
function mf.precast(status,current_event,spell)
    if pet.isvalid and spell.english == "Call Wyvern" then
        status.end_spell=true
        status.end_event=true
    end
    if spell.action_type == "Ranged Attack" then
        sets.building[current_event] = set_combine(sets.building[current_event], {left_ring="Fistmele Ring",right_ring="Longshot Ring"})
    end
end
function mf.midcast(status,current_event,spell)
    if spell.action_type == "Ranged Attack" then
        sets.building[current_event] = set_combine(sets.building[current_event], {left_ring="Fistmele Ring",right_ring="Longshot Ring"})
    end
end