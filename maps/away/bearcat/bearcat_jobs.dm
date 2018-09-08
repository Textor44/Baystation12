/datum/job/submap/bearcat_captain
	title = "Captain"
	total_positions = 1
	outfit_type = /decl/hierarchy/outfit/job/bearcat/captain
	supervisors = "your bottom line"
	info = "Your ship has suffered a catastrophic amount of damage, leaving it dark and crippled in the depths of \
	unexplored space. The Captain is dead, leaving you, previously the First Mate in charge. Organize what's left of \
	your crew, and maybe you'll be able to survive long enough to be rescued."

/datum/job/submap/bearcat_engineer
	title = "Engineer"
	total_positions = 1
	outfit_type = /decl/hierarchy/outfit/job/bearcat/engineer
	supervisors = "the Captain"
	info = "Your ship has suffered a catastrophic amount of damage, leaving it dark and crippled in the depths of \
	unexplored space. Work together with the Acting Captain and what's left of the crew, and maybe you'll be able \
	to survive long enough to be rescued. As an engineer, your job is to try to repair the ship as best you can."

/datum/job/submap/bearcat_doctor
	title = "Doctor"
	total_positions = 1
	outfit_type = /decl/hierarchy/outfit/job/bearcat/doctor
	supervisors = "the Captain"
	info = "Your ship has suffered a catastrophic amount of damage, leaving it dark and crippled in the depths of \
	unexplored space. Work together with the Acting Captain and what's left of the crew, and maybe you'll be able \
	to survive long enough to be rescued. As the doctor, your job is to try to keep the crew alive by any means."


/datum/job/submap/bearcat_crewman
	title = "Crewman"
	supervisors = "the Captain"
	total_positions = 1
	outfit_type = /decl/hierarchy/outfit/job/bearcat/crew
	info = "Your ship has suffered a catastrophic amount of damage, leaving it dark and crippled in the depths of \
	unexplored space. Work together with the Acting Captain and what's left of the crew, and maybe you'll be able \
	to survive long enough to be rescued."

#define BEARCAT_OUTFIT_JOB_NAME(job_name) ("Bearcat - Job - " + job_name)

/decl/hierarchy/outfit/job/bearcat
	hierarchy_type = /decl/hierarchy/outfit/job/bearcat
	pda_type = /obj/item/modular_computer/pda
	pda_slot = slot_l_store
	r_pocket = /obj/item/device/radio
	l_ear = /obj/item/device/radio/headset/bearcat
	r_ear = null

/decl/hierarchy/outfit/job/bearcat/crew
	name = BEARCAT_OUTFIT_JOB_NAME("Crew")
	id_type = /obj/item/weapon/card/id/bearcat

/decl/hierarchy/outfit/job/bearcat/engineer
	name = BEARCAT_OUTFIT_JOB_NAME("Engineer")
	uniform = /obj/item/clothing/under/rank/engineer
	id_type = /obj/item/weapon/card/id/bearcat/engineer

/decl/hierarchy/outfit/job/bearcat/doctor
	name = BEARCAT_OUTFIT_JOB_NAME("Doctor")
	uniform = /obj/item/clothing/under/rank/medical/scrubs/blue
	id_type = /obj/item/weapon/card/id/bearcat/doctor

/decl/hierarchy/outfit/job/bearcat/captain
	name = BEARCAT_OUTFIT_JOB_NAME("Captain")
	uniform = /obj/item/clothing/under/casual_pants/classicjeans
	shoes = /obj/item/clothing/shoes/black
	pda_type = /obj/item/modular_computer/pda/captain
	id_type = /obj/item/weapon/card/id/bearcat_captain

/decl/hierarchy/outfit/job/bearcat/captain/post_equip(var/mob/living/carbon/human/H)
	..()
	var/obj/item/clothing/uniform = H.w_uniform
	if(uniform)
		var/obj/item/clothing/accessory/toggleable/hawaii/random/eyegore = new()
		if(uniform.can_attach_accessory(eyegore))
			uniform.attach_accessory(null, eyegore)
		else
			qdel(eyegore)

#undef BEARCAT_OUTFIT_JOB_NAME

/obj/effect/submap_landmark/spawnpoint/captain
	name = "Captain"

/obj/effect/submap_landmark/spawnpoint/crewman
	name = "Crewman"

/obj/effect/submap_landmark/spawnpoint/doctor
	name = "Doctor"

/obj/effect/submap_landmark/spawnpoint/engineer
	name = "Engineer"