conquestalways = S{"Al'Taieu","Auroral Updraft","Empyreal Paradox","The Garden of Ru'Hmet","Grand Palace of Hu'Xzoi","Apollyon","Temenos","Hall of Transference"}
Conquest.neck.case = {"Mage","Tank","Normal"}
Conquest.neck.Mage = {[1] = {neck="Rep.Gold Medal"}, [2] = jobneck}
Conquest.neck.Tank = {[1] = {neck="Windurstian Scarf"}, [2] = jobneck}
Conquest.neck.Normal = {[1] = {neck="Grand Temple Knight's Collar"},[2] = jobneck}
if not Conquest.neck.change then
	Conquest.neck.change = false
end
if not Conquest.neck.case_id then
	Conquest.neck.case_id = 1
end
Conquest.ring.case = {"Mage","Tank","Normal"}
Conquest.ring.Mage = {[1] = {left_ring="Grand Knight's Ring"}, [2] = jobring}
Conquest.ring.Tank = {[1] = {left_ring="Patriarch Protector's Ring"},[2] = jobring}
Conquest.ring.Normal = {[1] = {left_ring="Gold Musketeer's Ring"},[2] = jobring}
if not Conquest.ring.change then
	Conquest.ring.change = false
end
if not Conquest.ring.case_id then
	Conquest.ring.case_id = 1
end
neckid = 2
ringid = 2

function conquest_Gear()
	if has_any_buff_of(S{"Signet","Sanction","Sigil","Prowess"}) then
		if windower.wc_match(world.area, "Al'Taieu|Auroral Updraft|Empyreal Paradox|The Garden of Ru'Hmet|Grand Palace of Hu'Xzoi|*Apollyon*|*Temenos*|Hall of Transference|Dynamis*|Spire of*|Promyvion*|Memory Flux") then
			neckid = 1
			ringid = 1
			if Conquest.neck.change then
				equip_status_change = set_combine(equip_status_change, Conquest.neck[Conquest.neck.case[Conquest.neck.case_id]][neckid])
				equip_pre_cast = set_combine(equip_pre_cast, Conquest.neck[Conquest.neck.case[Conquest.neck.case_id]][neckid])
				equip_mid_cast = set_combine(equip_mid_cast, Conquest.neck[Conquest.neck.case[Conquest.neck.case_id]][neckid])
				equip_after_cast = set_combine(equip_after_cast, Conquest.neck[Conquest.neck.case[Conquest.neck.case_id]][neckid])
				equip_petmidcast = set_combine(equip_petmidcast, Conquest.neck[Conquest.neck.case[Conquest.neck.case_id]][neckid])
				equip_petaftercast = set_combine(equip_petaftercast, Conquest.neck[Conquest.neck.case[Conquest.neck.case_id]][neckid])
			end
			if Conquest.ring.change then
				equip_status_change = set_combine(equip_status_change, Conquest.ring[Conquest.ring.case[Conquest.ring.case_id]][ringid])
				equip_pre_cast = set_combine(equip_pre_cast, Conquest.ring[Conquest.ring.case[Conquest.ring.case_id]][ringid])
				equip_mid_cast = set_combine(equip_mid_cast, Conquest.ring[Conquest.ring.case[Conquest.ring.case_id]][ringid])
				equip_after_cast = set_combine(equip_after_cast, Conquest.ring[Conquest.ring.case[Conquest.ring.case_id]][ringid])
				equip_petmidcast = set_combine(equip_petmidcast, Conquest.ring[Conquest.ring.case[Conquest.ring.case_id]][ringid])
				equip_petaftercast = set_combine(equip_petaftercast, Conquest.ring[Conquest.ring.case[Conquest.ring.case_id]][ringid])
			end
		elseif windower.wc_match(world.area, "Metalworks|*Bastok*|Chateau d'Oraguille|*San d'Oria|Heavens Tower|*Windurst*|*Jeuno|Ru'Lude Gardens|Selbina|Mhaura|Tavnazian Safehold|Kazham|Norg|Rabao|Altar Room|Attohwa Chasm|Boneyard Gully|Castle Oztroja|Garlaige Citadel|Meriphataud Mountains|Sauromugue Champaign|Beadeaux|Crawlers' Nest|Pashhow Marshlands|Qulun Dome|Rolanberry Fields|Sea Serpent Grotto|Cloister*|Den of Rancor|Ifrit's Cauldron|Sacrificial Chamber|Temple of Uggalepih|*Jungle|Beaucedine Glacier|Fei'Yin|Pso'Xja|Qu'Bia Arena|Ranguemont Pass|The Shrouded Maw|Dangruf Wadi|Korroloka Tunnel|*Gustaberg|Palborough Mines|Waughroon Shrine|Zeruhn Mines|Bibiki Bay*|Buburimu Peninsula|Labyrinth of Onzozo|Manaclipper|Maze of Shakhrami|Tahrongi Canyon|*Altepa Desert|Chamber of Oracles|Quicksand Caves|The Boyahda Tree|Dragon's Aery|Hall of the Gods|Ro'Maeve|The Sanctuary of Zi'Tah|Mine Shaft #2716|*Movalpolos|Batallia Downs|Carpenters' Landing|Davoi|The Eldieme Necropolis|Jugner Forest|Monastic Cavern|Phanauet Channel|Behemoth's Dominion|*Delkfutt's Tower|Qufim Island|Stellar Fulcrum|Bostaunieux Oubliette|*Ronfaure|*Ghelsba*|Horlais Peak|King Ranperre's Tomb|Yughott Grotto|Balga's Dais|*Sarutabaruta|Full Moon Fountain|Giddeus|*Horutoto Ruins|Toraimarai Canal|Lufaise Meadows|Misareaux Coast|Monarch Linn|Phomiuna Aqueducts|Riverne - Site*|Sacrarium|Sealion's Den|Celestial Nexus|La'Loff Amphitheater|Ru'Aun Gardens|Shrine of Ru'Avitau|Ve'Lugannon Palace|Bearclaw Pinnacle|Castle Zvahl*|Throne Room|Uleguerand Range|Xarcabard|Cape Teriggan|Gustav Tunnel|Kuftal Tunnel|Valley of Sorrows|Gusgen Mines|Konschtat Highlands|La Theine Plateau|Ordelle's Caves|Valkurm Dunes") then
			if world.conquest.nation == player.nation then
				neckid = 2
				ringid = 1
				if Conquest.neck.change then
					equip_status_change = set_combine(equip_status_change, Conquest.neck[Conquest.neck.case[Conquest.neck.case_id]][neckid])
					equip_pre_cast = set_combine(equip_pre_cast, Conquest.neck[Conquest.neck.case[Conquest.neck.case_id]][neckid])
					equip_mid_cast = set_combine(equip_mid_cast, Conquest.neck[Conquest.neck.case[Conquest.neck.case_id]][neckid])
					equip_after_cast = set_combine(equip_after_cast, Conquest.neck[Conquest.neck.case[Conquest.neck.case_id]][neckid])
					equip_petmidcast = set_combine(equip_petmidcast, Conquest.neck[Conquest.neck.case[Conquest.neck.case_id]][neckid])
					equip_petaftercast = set_combine(equip_petaftercast, Conquest.neck[Conquest.neck.case[Conquest.neck.case_id]][neckid])
				end
				if Conquest.ring.change then
					equip_status_change = set_combine(equip_status_change, Conquest.ring[Conquest.ring.case[Conquest.ring.case_id]][ringid])
					equip_pre_cast = set_combine(equip_pre_cast, Conquest.ring[Conquest.ring.case[Conquest.ring.case_id]][ringid])
					equip_mid_cast = set_combine(equip_mid_cast, Conquest.ring[Conquest.ring.case[Conquest.ring.case_id]][ringid])
					equip_after_cast = set_combine(equip_after_cast, Conquest.ring[Conquest.ring.case[Conquest.ring.case_id]][ringid])
					equip_petmidcast = set_combine(equip_petmidcast, Conquest.ring[Conquest.ring.case[Conquest.ring.case_id]][ringid])
					equip_petaftercast = set_combine(equip_petaftercast, Conquest.ring[Conquest.ring.case[Conquest.ring.case_id]][ringid])
				end
			else
				neckid = 1
				ringid = 2
				if Conquest.neck.change then
					equip_status_change = set_combine(equip_status_change, Conquest.neck[Conquest.neck.case[Conquest.neck.case_id]][neckid])
					equip_pre_cast = set_combine(equip_pre_cast, Conquest.neck[Conquest.neck.case[Conquest.neck.case_id]][neckid])
					equip_mid_cast = set_combine(equip_mid_cast, Conquest.neck[Conquest.neck.case[Conquest.neck.case_id]][neckid])
					equip_after_cast = set_combine(equip_after_cast, Conquest.neck[Conquest.neck.case[Conquest.neck.case_id]][neckid])
					equip_petmidcast = set_combine(equip_petmidcast, Conquest.neck[Conquest.neck.case[Conquest.neck.case_id]][neckid])
					equip_petaftercast = set_combine(equip_petaftercast, Conquest.neck[Conquest.neck.case[Conquest.neck.case_id]][neckid])
				end
				if Conquest.ring.change then
					equip_status_change = set_combine(equip_status_change, Conquest.ring[Conquest.ring.case[Conquest.ring.case_id]][ringid])
					equip_pre_cast = set_combine(equip_pre_cast, Conquest.ring[Conquest.ring.case[Conquest.ring.case_id]][ringid])
					equip_mid_cast = set_combine(equip_mid_cast, Conquest.ring[Conquest.ring.case[Conquest.ring.case_id]][ringid])
					equip_after_cast = set_combine(equip_after_cast, Conquest.ring[Conquest.ring.case[Conquest.ring.case_id]][ringid])
					equip_petmidcast = set_combine(equip_petmidcast, Conquest.ring[Conquest.ring.case[Conquest.ring.case_id]][ringid])
					equip_petaftercast = set_combine(equip_petaftercast, Conquest.ring[Conquest.ring.case[Conquest.ring.case_id]][ringid])
				end
			end
		end
	end
end

function conquest_Gear_command(command)
	if command == "conquestneck" then
		Conquest.neck.case_id = (Conquest.neck.case_id % #Conquest.neck.case) + 1
	end
	if command == "conquestring" then
		Conquest.ring.case_id = (Conquest.ring.case_id % #Conquest.ring.case) + 1
	end
	if command == 'conquestneckchange' then
		Conquest.neck.change = not Conquest.neck.change
	end
	if command == 'conquestringchange' then
		Conquest.ring.change = not Conquest.ring.change
	end
end