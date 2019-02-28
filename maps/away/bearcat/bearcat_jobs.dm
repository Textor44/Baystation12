/datum/job/submap/bearcat_captain
	title = "First Mate"
	total_positions = 1
	outfit_type = /decl/hierarchy/outfit/job/bearcat/captain/captain
	supervisors = "the winds of fate"
	info = "Your ship has suffered a catastrophic amount of damage, leaving it dark and crippled in the depths of \
	unexplored space. The Captain is dead, leaving you, the highest ranking officer alive, in charge. Organize what's left of \
	your crew, and maybe you'll be able to fix the ship or at least be able to survive long enough to be rescued."
	alt_titles = list("Chief Engineer" = /decl/hierarchy/outfit/job/bearcat/captain/ce,
					  "Doctor" = /decl/hierarchy/outfit/job/bearcat/captain/cmo,
					  "Security Chief" = /decl/hierarchy/outfit/job/bearcat/captain/cos)


/datum/job/submap/bearcat_crewman
	title = "Crewman"
	supervisors = "the Captain"
	total_positions = 5
	outfit_type = /decl/hierarchy/outfit/job/bearcat/crew/crewman
	info = "Your ship has suffered a catastrophic amount of damage, leaving it dark and crippled in the depths of \
	unexplored space. Work together with the Acting Captain and what's left of the crew, and maybe you'll be able \
	to fix the ship or at least survive long enough to be rescued."
	alt_titles = list("Engineer" = /decl/hierarchy/outfit/job/bearcat/crew/engineer,
					  "Atmospheric Technician" = /decl/hierarchy/outfit/job/bearcat/crew/atmostech,
					  "Medic" = /decl/hierarchy/outfit/job/bearcat/crew/medic,
					  "Security" = /decl/hierarchy/outfit/job/bearcat/crew/security,
					  "Cook" = /decl/hierarchy/outfit/job/bearcat/crew/cook,
					  "Deck Hand" = /decl/hierarchy/outfit/job/bearcat/crew/deckhand,
					  "Prospector" = /decl/hierarchy/outfit/job/bearcat/crew/prospector)

#define BEARCAT_OUTFIT_JOB_NAME(job_name) ("Bearcat - Job - " + job_name)

/decl/hierarchy/outfit/job/bearcat
	hierarchy_type = /decl/hierarchy/outfit/job/bearcat
	pda_type = /obj/item/modular_computer/pda
	pda_slot = slot_l_store
	r_pocket = /obj/item/device/radio
	l_ear = /obj/item/device/radio/headset/bearcat
	r_ear = null

/decl/hierarchy/outfit/job/bearcat/crew
	id_type = /obj/item/weapon/card/id/bearcat
	shoes = /obj/item/clothing/shoes/workboots

/decl/hierarchy/outfit/job/bearcat/crew/crewman
	name = BEARCAT_OUTFIT_JOB_NAME("Crewman")

/decl/hierarchy/outfit/job/bearcat/crew/engineer
	name = BEARCAT_OUTFIT_JOB_NAME("Engineer")
	pda_type = /obj/item/modular_computer/pda/engineering
	uniform = /obj/item/clothing/under/rank/engineer

/decl/hierarchy/outfit/job/bearcat/crew/atmostech
	name = BEARCAT_OUTFIT_JOB_NAME("Atmospheric Technician")
	pda_type = /obj/item/modular_computer/pda/engineering
	uniform = /obj/item/clothing/under/rank/atmospheric_technician

/decl/hierarchy/outfit/job/bearcat/crew/medic
	name = BEARCAT_OUTFIT_JOB_NAME("Medic")
	shoes = /obj/item/clothing/shoes/white
	pda_type = /obj/item/modular_computer/pda/medical
	uniform = /obj/item/clothing/under/rank/medical/paramedic

/decl/hierarchy/outfit/job/bearcat/crew/security
	name = BEARCAT_OUTFIT_JOB_NAME("Security Officer")
	uniform = /obj/item/clothing/under/rank/security
	pda_type = /obj/item/modular_computer/pda/security

/decl/hierarchy/outfit/job/bearcat/crew/cook
	name = BEARCAT_OUTFIT_JOB_NAME("Cook")
	suit = /obj/item/clothing/suit/chef
	head = /obj/item/clothing/head/chefhat
	pda_type = /obj/item/modular_computer/pda

/decl/hierarchy/outfit/job/bearcat/crew/deckhand
	name = BEARCAT_OUTFIT_JOB_NAME("Deck Hand")
	uniform = /obj/item/clothing/under/rank/janitor
	pda_type = /obj/item/modular_computer/pda

/decl/hierarchy/outfit/job/bearcat/crew/prospector
	name = BEARCAT_OUTFIT_JOB_NAME("Prospector")
	uniform = /obj/item/clothing/under/rank/miner
	pda_type = /obj/item/modular_computer/pda

/decl/hierarchy/outfit/job/bearcat/captain
	id_type = /obj/item/weapon/card/id/bearcat_captain

/decl/hierarchy/outfit/job/bearcat/captain/captain
	name = BEARCAT_OUTFIT_JOB_NAME("First Mate")
	pda_type = /obj/item/modular_computer/pda/heads/hop
	uniform = /obj/item/clothing/under/casual_pants/classicjeans
	shoes = /obj/item/clothing/shoes/black

/decl/hierarchy/outfit/job/bearcat/captain/ce
	name = BEARCAT_OUTFIT_JOB_NAME("Chief Engineer")
	pda_type = /obj/item/modular_computer/pda/heads/ce
	uniform = /obj/item/clothing/under/rank/chief_engineer
	shoes = /obj/item/clothing/shoes/workboots

/decl/hierarchy/outfit/job/bearcat/captain/cmo
	name = BEARCAT_OUTFIT_JOB_NAME("Doctor")
	pda_type = /obj/item/modular_computer/pda/heads/cmo
	uniform = /obj/item/clothing/under/rank/chief_medical_officer
	shoes = /obj/item/clothing/shoes/white

/decl/hierarchy/outfit/job/bearcat/captain/cos
	name = BEARCAT_OUTFIT_JOB_NAME("Security Chief")
	pda_type = /obj/item/modular_computer/pda/heads/hos
	uniform = /obj/item/clothing/under/rank/head_of_security
	shoes = /obj/item/clothing/shoes/workboots

/decl/hierarchy/outfit/job/bearcat/captain/captain/post_equip(var/mob/living/carbon/human/H)
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
	name = "First Mate"

/obj/effect/submap_landmark/spawnpoint/crewman
	name = "Crewman"