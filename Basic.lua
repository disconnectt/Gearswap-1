--[[How To Use:
	1. make sure that the files for this include setup is in the gearswap/data/<players name> directory
	2. to create a new job file just coppy this and rename it to the correct job name I.e. for Dancer name it DNC.lua
	3. add your gearsets in to function get_sets ware shown
	4. add rules to each function below ware shown
	5. your ready to use
	notes: i have included basic layouts for 3 gearsets Engaged,Idle,Resting]]
include('includes/Extras.lua')
function get_sets()
	jobneck = "" --if using the conquest include put the neck that you want as your main neck when conquest neck is not needed
	jobring = "" --if using the conquest include put the left_ring that you want as your main ring when conquest ring is not needed
	sets.Engaged = {
		main="",
		sub="",
		head="",
		body="",
		hands="",
		legs="",
		feet="",
		neck="",
		waist="",
		left_ear="",
		right_ear="",
		left_ring="",
		right_ring="",
		back="",
		range="",
		ammo=""
	}
	sets.Idle = {
		main="",
		sub="",
		head="",
		body="",
		hands="",
		legs="",
		feet="",
		neck="",
		waist="",
		left_ear="",
		right_ear="",
		left_ring="",
		right_ring="",
		back="",
		range="",
		ammo=""
	}
	sets.Resting = {
		main="",
		sub="",
		head="",
		body="",
		hands="",
		legs="",
		feet="",
		neck="",
		waist="",
		left_ear="",
		right_ear="",
		left_ring="",
		right_ring="",
		back="",
		range="",
		ammo=""
	}
	---------------------------------------
	--put your sets here
	---------------------------------------
	if _G['updatedisplay'] then
		_G['updatedisplay']()
	end
end
function file_unload()
	---------------------------------------
	--put your file_unload rules here
	---------------------------------------
    if _G['file_unload_include'] then
		_G['file_unload_include']()
	end
end
function status_change(new,old)
	if _G['status_change_include'] then
		_G['status_change_include'](new,old)
	end
	----------------------------------------
	--you can change the below to anything you want
	----------------------------------------
	if new=='Engaged' then
		equip(sets.Engaged)
	elseif new=='Idle' then
		equip(sets.Idle)
	elseif new=='Resting' then
		equip(sets.Resting)
	end
end
function pet_change(pet,gain)
	---------------------------------------
	--put your pet_change rules here
	---------------------------------------
	if _G['pet_change_include'] then
		_G['pet_change_include'](spell)
	end
end
function filtered_action(spell)
	---------------------------------------
	--put your filtered_action rules here
	---------------------------------------
	if _G['filtered_action_include'] then
		_G['filtered_action_include'](spell)
	end
end
function pretarget(spell)
	if spell_stopper(spell) and not Disable_All then cancel_spell() return end
	---------------------------------------
	--put your pretarget rules here
	---------------------------------------
	if _G['pretarget_include'] then
		_G['pretarget_include'](spell)
	end
end
function precast(spell)
	if spell_stopper(spell) and not Disable_All then cancel_spell() return end
	---------------------------------------
	--put your precast rules here
	---------------------------------------
	if _G['precast_include'] then
		_G['precast_include'](spell)
	end
end
function buff_change(name,gain)
	---------------------------------------
	--put your buff_change rules here
	---------------------------------------
	if _G['sleepset'] then
		_G['sleepset'](name,gain)
	end
	if _G['buff_change_include'] then
		_G['buff_change_include'](name,gain)
	end
end
function midcast(spell)
	if gearchang_stopper(spell) and not Disable_All then return end
	---------------------------------------
	--put your midcast rules here
	---------------------------------------
	if _G['midcast_include'] then
		_G['midcast_include'](spell)
	end
end
function pet_midcast(spell)
	if spell_stopper(spell) and not Disable_All then cancel_spell() return end
	---------------------------------------
	--put your pet_midcast rules here
	---------------------------------------
	if _G['pet_midcast_include'] then
		_G['pet_midcast_include'](spell)
	end
end
function aftercast(spell)
	if gearchang_stopper(spell) and not Disable_All then return end
	---------------------------------------
	--put your aftercast rules here
	---------------------------------------
	if _G['aftercast_include'] then
		_G['aftercast_include'](spell)
	end
	equip(sets[player.status])--you can change this but the section above must be above your last gear change like it is now
end
function pet_aftercast(spell)
	if spell_stopper(spell) and not Disable_All then cancel_spell() return end
	---------------------------------------
	--put your pet_aftercast rules here
	---------------------------------------
	if _G['pet_aftercast_include'] then
		_G['pet_aftercast_include'](spell)
	end
	equip(sets[player.status])--you can change this but the section above must be above your last gear change like it is now
end
function self_command(command)
	---------------------------------------
	--put your self_command rules here
	---------------------------------------
	if _G['self_command_include'] then
		_G['self_command_include'](command)
	end
end