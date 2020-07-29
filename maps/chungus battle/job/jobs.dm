/datum/map/chungus
	allowed_jobs = list(
						/datum/job/chungus,
						/datum/job/noob,
						)

/datum/job/chungus
	title = "Chungus"
	department = "Reddit"
	department_flag = RED
	total_positions = -1
	spawn_positions = -1
	supervisors = "Big Chungus"
	selection_color = "#515151"
	alt_titles = list("Medium Chungus","Small Chungus","CHUNGIOD")
//	outfit_type = /decl/hierarchy/outfit/job/battlekit

	equip(var/mob/living/carbon/human/H)
		..()
		H.generate_stats(STAT_HT)
		H.generate_skills(list("melee"))


/datum/job/noob
	title = "Noob"
	department = "Roblox"
	department_flag = ROB
	total_positions = -1
	spawn_positions = -1
	supervisors = "Builder Club Leader"
	selection_color = "#FFFF00"
	alt_titles = list("Guest")
//	outfit_type = /decl/hierarchy/outfit/job/battlekit

	equip(var/mob/living/carbon/human/H)
		..()
		H.generate_stats(STAT_DX)
		H.generate_skills(list("ranged"))

