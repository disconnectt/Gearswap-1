
	sets.drg = {body="Barone Corazza",legs="Barone Cosciales"}

function sub_job_precast(spell)
	if spell.english == 'Jump' then
		equip_pre_cast = set_combine(equip_pre_cast, sets.drg)
	end
	if spell.english == 'High Jump' then
		equip_pre_cast = set_combine(equip_pre_cast, sets.drg)
	end
end