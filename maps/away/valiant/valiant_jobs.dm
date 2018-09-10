/datum/job/submap/valiant/captain
	title = "Captain"
	total_positions = 1
	outfit_type = /decl/hierarchy/outfit/job/valiant/captain
	supervisors = "Expedition Command"
	info = "The year is 2520. You've been sent out to explore the galaxy. With the recent discovery of bluespace\
	this is even more important than ever to the Expeditionary Corps. After proceeding through a bluespace rift \
	you find yourself in a strange sector, your ship damaged. Your job, as captain, is to command the SEV Valiant \
	and get its crew home safe and sound."

/datum/job/submap/valiant/executive_officer
	title = "Executive Officer"
	supervisors = "the Captain"
	total_positions = 1
	outfit_type = /decl/hierarchy/outfit/job/valiant/executive_officer
	info = "The year is 2520. You've been sent out to explore the galaxy. With the recent discovery of bluespace\
	this is even more important than ever to the Expeditionary Corps. After proceeding through a bluespace rift \
	you find yourself in a strange sector, your ship damaged. Your job, as a the Executive Officer is to coorindate \
	crewmen and department heads in order to carry out the orders of the captain."

/datum/job/submap/valiant/chief_engineer
	title = "Chief Engineer"
	supervisors = "the Executive Officer"
	total_positions = 1
	outfit_type = /decl/hierarchy/outfit/job/valiant/chief_engineer
	info = "The year is 2520. You've been sent out to explore the galaxy. With the recent discovery of bluespace\
	this is even more important than ever to the Expeditionary Corps. After proceeding through a bluespace rift \
	you find yourself in a strange sector, your ship damaged. Your job, as the Chief Engineer, is to coordinate \
	engineers to repair damage to the SEV Valiant and ensure the safe operation of the ship."

/datum/job/submap/valiant/chief_medical
	title = "Chief Medical Officer"
	supervisors = "the Executive Officer"
	total_positions = 1
	outfit_type = /decl/hierarchy/outfit/job/valiant/chief_engineer
	info = "The year is 2520. You've been sent out to explore the galaxy. With the recent discovery of bluespace\
	this is even more important than ever to the Expeditionary Corps. After proceeding through a bluespace rift \
	you find yourself in a strange sector, your ship damaged. Your job, as the Chief Medical Officer, is to coordinate \
	medical personnel to ensure the health of those on board."

/datum/job/submap/valiant/chief_security
	title = "Security Chief"
	supervisors = "the Executive Officer"
	total_positions = 1
	outfit_type = /decl/hierarchy/outfit/job/valiant/chief_engineer
	info = "The year is 2520. You've been sent out to explore the galaxy. With the recent discovery of bluespace\
	this is even more important than ever to the Expeditionary Corps. After proceeding through a bluespace rift \
	you find yourself in a strange sector, your ship damaged. Your job, as the Security Chief, is to coordinate your \
	officers and ensure the safety and discipline of the crew."

/datum/job/submap/valiant/science_officer
	title = "Science Officer"
	supervisors = "the Executive Officer"
	total_positions = 1
	outfit_type = /decl/hierarchy/outfit/job/valiant/chief_engineer
	info = "The year is 2520. You've been sent out to explore the galaxy. With the recent discovery of bluespace\
	this is even more important than ever to the Expeditionary Corps. After proceeding through a bluespace rift \
	you find yourself in a strange sector, your ship damaged. Your job, as the Science Officer, is to coodinate \
	your scientist's efforts and continue the exploration of this sector."

/datum/job/submap/valiant/pilot
	title = "Pilot"
	supervisors = "the Executive Officer"
	total_positions = 1
	outfit_type = /decl/hierarchy/outfit/job/valiant/chief_engineer
	info = "The year is 2520. You've been sent out to explore the galaxy. With the recent discovery of bluespace\
	this is even more important than ever to the Expeditionary Corps. After proceeding through a bluespace rift \
	you find yourself in a strange sector, your ship damaged. Your job, as the pilot is to man the bridge and \
	move the ship to where it needs to go."

/datum/job/submap/valiant/engineer
	title = "Engineer"
	supervisors = "the Chief Engineer"
	total_positions = 1
	outfit_type = /decl/hierarchy/outfit/job/valiant/chief_engineer
	info = "The year is 2520. You've been sent out to explore the galaxy. With the recent discovery of bluespace\
	this is even more important than ever to the Expeditionary Corps. After proceeding through a bluespace rift \
	you find yourself in a strange sector, your ship damaged. Your job, as an engineer, is to follow the directions \
	of the Chief Engineer to repair and maintain the SEV Valiant."

/datum/job/submap/valiant/science
	title = "Scientist"
	supervisors = "the Science Officer"
	total_positions = 1
	outfit_type = /decl/hierarchy/outfit/job/valiant/chief_engineer
	info = "The year is 2520. You've been sent out to explore the galaxy. With the recent discovery of bluespace\
	this is even more important than ever to the Expeditionary Corps. After proceeding through a bluespace rift \
	you find yourself in a strange sector, your ship damaged. Your job, as a scientist, is to continue the eploration \
	of the sector under the direction of the Science Officer."

/datum/job/submap/valiant/security
	title = "Security"
	supervisors = "the Security Chief"
	total_positions = 1
	outfit_type = /decl/hierarchy/outfit/job/valiant/chief_engineer
	info = "The year is 2520. You've been sent out to explore the galaxy. With the recent discovery of bluespace\
	this is even more important than ever to the Expeditionary Corps. After proceeding through a bluespace rift \
	you find yourself in a strange sector, your ship damaged. Your job, as security personnel, is to ensure the \
	safety and security of the crew under the direction of the Security Chief"

/datum/job/submap/valiant/crewman
	title = "Crewman"
	supervisors = "the Executive Officer"
	total_positions = 3
	outfit_type = /decl/hierarchy/outfit/job/valiant/crew
	info = "The year is 2520. You've been sent out to explore the galaxy. With the recent discovery of bluespace\
	this is even more important than ever to the Expeditionary Corps. After proceeding through a bluespace rift \
	you find yourself in a strange sector, your ship damaged. Your job, as a crewman, is to listen to the directives \
	of the Executive Officer and perform whatever duties you've been assigned by your superiors."

#define VALIANT_OUTFIT_JOB_NAME(job_name) ("SEV Valiant - Job - " + job_name)

/decl/hierarchy/outfit/job/valiant
	hierarchy_type = /decl/hierarchy/outfit/job/valiant
	pda_type = /obj/item/modular_computer/pda
	pda_slot = slot_l_store
	r_pocket = /obj/item/device/radio
	l_ear = null
	r_ear = null

/decl/hierarchy/outfit/job/valiant/crew
	name = VALIANT_OUTFIT_JOB_NAME("Crew")
	id_type = /obj/item/weapon/card/id/valiant/crew

/decl/hierarchy/outfit/job/valiant/captain
	name = VALIANT_OUTFIT_JOB_NAME("Captain")
	uniform = /obj/item/clothing/under/solgov/service/expeditionary/command
	suit = /obj/item/clothing/suit/storage/solgov/service/expeditionary/command
	shoes = /obj/item/clothing/shoes/laceup
	pda_type = /obj/item/modular_computer/pda/captain
	id_type = /obj/item/weapon/card/id/valiant/captain

/decl/hierarchy/outfit/job/valiant/executive_officer
	name = VALIANT_OUTFIT_JOB_NAME("Executive Officer")
	uniform = /obj/item/clothing/under/solgov/service/expeditionary/command
	suit = /obj/item/clothing/suit/storage/solgov/service/expeditionary/command
	shoes = /obj/item/clothing/shoes/laceup
	pda_type = /obj/item/modular_computer/pda/heads/hop
	id_type = /obj/item/weapon/card/id/valiant/executive_officer

/decl/hierarchy/outfit/job/valiant/chief_engineer
	name = VALIANT_OUTFIT_JOB_NAME("Chief Engineer")
	pda_type = /obj/item/modular_computer/pda/heads/ce
	id_type = /obj/item/weapon/card/id/valiant/chief_engineer
	uniform = /obj/item/clothing/under/solgov/utility/expeditionary/officer/engineering
	shoes = /obj/item/clothing/shoes/dutyboots

/decl/hierarchy/outfit/job/valiant/chief_medical
name = VALIANT_OUTFIT_JOB_NAME("Chief Medical Officer")
	pda_type = /obj/item/modular_computer/pda/heads/cmo
	id_type = /obj/item/weapon/card/id/valiant/chief_medical
	uniform = /obj/item/clothing/under/solgov/utility/expeditionary/officer/medical
	shoes = /obj/item/clothing/shoes/dutyboots

/decl/hierarchy/outfit/job/valiant/chief_security
	name = VALIANT_OUTFIT_JOB_NAME("Security Chief")
	pda_type = /obj/item/modular_computer/pda/heads/hos
	id_type = /obj/item/weapon/card/id/valiant/chief_security
	uniform = /obj/item/clothing/under/solgov/utility/expeditionary/officer/security
	shoes = /obj/item/clothing/shoes/dutyboots

/decl/hierarchy/outfit/job/valiant/science_officer
	name = VALIANT_OUTFIT_JOB_NAME("Science Officer")
	pda_type = /obj/item/modular_computer/pda/heads/rd
	id_type = /obj/item/weapon/card/id/valiant/science_officer
	uniform = /obj/item/clothing/under/solgov/utility/expeditionary/officer/exploration
	shoes = /obj/item/clothing/shoes/dutyboots

/decl/hierarchy/outfit/job/valiant/engineer
	name = VALIANT_OUTFIT_JOB_NAME("Engineer")
	pda_type = /obj/item/modular_computer/pda/engineering
	id_type = /obj/item/weapon/card/id/valiant/engineer
	uniform = /obj/item/clothing/under/solgov/utility/expeditionary/engineering
	shoes = /obj/item/clothing/shoes/dutyboots

/decl/hierarchy/outfit/job/valiant/science
	name = VALIANT_OUTFIT_JOB_NAME("Scientist")
	pda_type = /obj/item/modular_computer/pda/science
	id_type = /obj/item/weapon/card/id/valiant/science
	uniform = /obj/item/clothing/under/solgov/utility/expeditionary/exploration
	shoes = /obj/item/clothing/shoes/dutyboots

/decl/hierarchy/outfit/job/valiant/medic
	name = VALIANT_OUTFIT_JOB_NAME("Medic")
	pda_type = /obj/item/modular_computer/pda/medical
	id_type = /obj/item/weapon/card/id/valiant/medical
	uniform = /obj/item/clothing/under/solgov/utility/expeditionary/medical
	shoes = /obj/item/clothing/shoes/dutyboots

/decl/hierarchy/outfit/job/valiant/security
	name = VALIANT_OUTFIT_JOB_NAME("Security")
	pda_type = /obj/item/modular_computer/pda/security
	id_type = /obj/item/weapon/card/id/valiant/security
	uniform = /obj/item/clothing/under/solgov/utility/expeditionary/security
	shoes = /obj/item/clothing/shoes/dutyboots

/decl/hierarchy/outfit/job/valiant/pilot
	name = VALIANT_OUTFIT_JOB_NAME("Pilot")
	pda_type = /obj/item/modular_computer/pda/heads
	id_type = /obj/item/weapon/card/id/valiant/pilot
	uniform = /obj/item/clothing/under/solgov/service/expeditionary/command
	suit = /obj/item/clothing/suit/storage/solgov/service/expeditionary/exploration/command
	shoes = /obj/item/clothing/shoes/laceup

/decl/hierarchy/outfit/job/valiant/captain/post_equip(var/mob/living/carbon/human/H)
	..()
	var/obj/item/clothing/suit/suit = H.wear_suit
	var/obj/item/clothing/uniform = H.w_uniform
	var/obj/item/clothing/accessory/solgov/rank/ec/officer/o6/rank = new()
		var/obj/item/clothing/accessory/solgov/ec_patch/fieldops/patch = new()
	var/obj/item/clothing/accessory/badge/solgov/tags/tags = new()
	if(uniform)
		if(uniform.can_attach_accessory(tags))
			uniform.attach_accessory(tags)
	if(suit)
		if(suit.can_attach_accessory(rank))
			suit.attach_accessory(null, rank)
		if(suit.can_attach_accessory(patch)
			suit.attach_accessory(null, patch)

/decl/hierarchy/outfit/job/valiant/executive_officer/post_equip(var/mob/living/carbon/human/H)
	..()
	var/obj/item/clothing/suit/suit = H.wear_suit
	var/obj/item/clothing/uniform = H.w_uniform
	var/obj/item/clothing/accessory/solgov/rank/ec/officer/o5/rank = new()
	var/obj/item/clothing/accessory/solgov/ec_patch/fieldops/patch = new()
	var/obj/item/clothing/accessory/badge/solgov/tags/tags = new()
	if(uniform)
		if(uniform.can_attach_accessory(tags))
			uniform.attach_accessory(tags)
	if(suit)
		if(suit.can_attach_accessory(rank))
			suit.attach_accessory(null, rank)
		if(suit.can_attach_accessory(patch)
			suit.attach_accessory(null, patch)

/decl/hierarchy/outfit/job/valiant/pilot/post_equip(var/mob/living/carbon/human/H)
	..()
	var/obj/item/clothing/suit/suit = H.wear_suit
	var/obj/item/clothing/uniform = H.w_uniform
	var/obj/item/clothing/accessory/solgov/rank/ec/officer/rank = new()
	var/obj/item/clothing/accessory/solgov/ec_patch/fieldops/patch = new()
	var/obj/item/clothing/accessory/solgov/speciality/pilot/pilot = new()
	var/obj/item/clothing/accessory/badge/solgov/tags/tags = new()
	if(uniform)
		if(uniform.can_attach_accessory(tags))
			uniform.attach_accessory(tags)
	if(suit)
		if(suit.can_attach_accessory(rank))
			suit.attach_accessory(null, rank)
		if(suit.can_attach_accessory(patch)
			suit.attach_accessory(null, patch)
		if(suit.can_attach_accessory(pilot)
			suit.attach_accessory(null, pilot)

/decl/hierarchy/outfit/job/valiant/chief_engineer/post_equip(var/mob/living/carbon/human/H)
	..()
	var/obj/item/clothing/uniform = H.w_uniform
	var/obj/item/clothing/accessory/solgov/rank/ec/officer/o3/rank = new()
	var/obj/item/clothing/accessory/solgov/ec_patch/fieldops/patch = new()
	var/obj/item/clothing/accessory/badge/solgov/tags/tags = new()
	if(uniform)
		if(uniform.can_attach_accessory(rank))
			uniform.attach_accessory(null, rank)
		if(uniform.can_attach_accessory(patch)
			uniform.attach_accessory(null, patch)
		if(uniform.can_attach_accessory(pilot)
			uniform.attach_accessory(null, pilot)


/decl/hierarchy/outfit/job/valiant/chief_medical/post_equip(var/mob/living/carbon/human/H)
	..()
	var/obj/item/clothing/uniform = H.w_uniform
	var/obj/item/clothing/accessory/solgov/rank/ec/officer/o3/rank = new()
	var/obj/item/clothing/accessory/solgov/ec_patch/fieldops/patch = new()
	var/obj/item/clothing/accessory/badge/solgov/tags/tags = new()
	if(uniform)
		if(uniform.can_attach_accessory(rank))
			uniform.attach_accessory(null, rank)
		if(uniform.can_attach_accessory(patch)
			uniform.attach_accessory(null, patch)
		if(uniform.can_attach_accessory(pilot)
			uniform.attach_accessory(null, pilot)
/decl/hierarchy/outfit/job/valiant/chief_security/post_equip(var/mob/living/carbon/human/H)
	..()
	var/obj/item/clothing/uniform = H.w_uniform
	var/obj/item/clothing/accessory/solgov/rank/ec/officer/o3/rank = new()
	var/obj/item/clothing/accessory/solgov/ec_patch/fieldops/patch = new()
	var/obj/item/clothing/accessory/badge/solgov/tags/tags = new()
	if(uniform)
		if(uniform.can_attach_accessory(rank))
			uniform.attach_accessory(null, rank)
		if(uniform.can_attach_accessory(patch)
			uniform.attach_accessory(null, patch)
		if(uniform.can_attach_accessory(pilot)
			uniform.attach_accessory(null, pilot)
/decl/hierarchy/outfit/job/valiant/science_officer/post_equip(var/mob/living/carbon/human/H)
	..()
	var/obj/item/clothing/uniform = H.w_uniform
	var/obj/item/clothing/accessory/solgov/rank/ec/officer/o3/rank = new()
	var/obj/item/clothing/accessory/solgov/ec_patch/fieldops/patch = new()
	var/obj/item/clothing/accessory/badge/solgov/tags/tags = new()
	if(uniform)
		if(uniform.can_attach_accessory(rank))
			uniform.attach_accessory(null, rank)
		if(uniform.can_attach_accessory(patch)
			uniform.attach_accessory(null, patch)
		if(uniform.can_attach_accessory(pilot)
			uniform.attach_accessory(null, pilot)

#undef VALIANT_OUTFIT_JOB_NAME

/obj/effect/submap_landmark/spawnpoint/valiant/captain
	name = "Captain"

/obj/effect/submap_landmark/spawnpoint/valiant/crewman
	name = "Crewman"

/obj/effect/submap_landmark/spawnpoint/valiant/engineer
	name = "Engineer"

/obj/effect/submap_landmark/spawnpoint/valiant/medic
	name = "Medic"

/obj/effect/submap_landmark/spawnpoint/valiant/science
	name = "Science"

/obj/effect/submap_landmark/spawnpoint/valiant/security
	name = "Security"

/obj/effect/submap_landmark/spawnpoint/valiant/chief_engineer
	name = "Chief Engineer"

/obj/effect/submap_landmark/spawnpoint/valiant/executive_officer
	name = "Executive Officer"

/obj/effect/submap_landmark/spawnpoint/valiant/chief_medical
	name = "Chief Medical Officer"

/obj/effect/submap_landmark/spawnpoint/valiant/chief_security
	name = "Security Chief"

/obj/effect/submap_landmark/spawnpoint/valiant/science_officer
	name = "Science Officer"