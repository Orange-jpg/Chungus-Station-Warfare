/datum/map/chungus
	allowed_jobs = list(
						/datum/job/chungus,
						/datum/job/noob,
						)

/datum/job/chungus
	title = "Chungus"
	department = "Reddit"
	total_positions = -1
	spawn_positions = -1
	supervisors = "Big Chungus"
	selection_color = "#515151"
	alt_titles = list("Medium Chungus","Small Chungus","CHUNGIOD")
	outfit_type = /decl/hierarchy/outfit/job/battle_kit

	equip(var/mob/living/carbon/human/H)
		H.set_sprite('icons/mob/human_races/r_chungus.dmi')
		H.team = "Chungus"
		H.generate_stats(STAT_HT)
		H.generate_skills(list("melee"))
		..()
		H.set_sprite('icons/mob/human_races/r_chungus.dmi')

/datum/job/noob
	title = "Noob"
	department = "Roblox"
	total_positions = -1
	spawn_positions = -1
	supervisors = "Builder Club Leader"
	selection_color = "#FFFF00"
	alt_titles = list("Guest")
	outfit_type = /decl/hierarchy/outfit/job/battle_kit

	equip(var/mob/living/carbon/human/H)
		H.set_sprite('icons/mob/human_races/r_roblox.dmi')
		H.team = "Noob"
		H.generate_stats(STAT_DX)
		H.generate_skills(list("ranged"))
		..()
		H.set_sprite('icons/mob/human_races/r_roblox.dmi')

/decl/hierarchy/outfit/job/battle_kit
	name = OUTFIT_JOB_NAME("solider")
	backpack_contents = list(/obj/item/weapon/gun/projectile/automatic/machine_pistol = 1,/obj/item/ammo_magazine/c45uzi = 2, )