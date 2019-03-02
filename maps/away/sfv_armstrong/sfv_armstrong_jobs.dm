/datum/job/submap/sfv_armstrong/captain
	title = "Scout Ship Captain"
	total_positions = 1
	outfit_type = /decl/hierarchy/outfit/job/sfv_armstrong/command/captain
	supervisors = "Fleet Command"
	info = ""
	rank =   /datum/mil_rank/fleet/o6
	branch = /datum/mil_branch/fleet
	allowed_branches = list(/datum/mil_branch/fleet)
	allowed_ranks = list(/datum/mil_rank/fleet/o6)

/datum/job/submap/sfv_armstrong/xo
	title = "Scout Ship First Officer"
	supervisors = "the Captain"
	total_positions = 1
	outfit_type = /decl/hierarchy/outfit/job/sfv_armstrong/command/xo
	info = ""
	rank =   /datum/mil_rank/fleet/o5
	branch = /datum/mil_branch/fleet
	allowed_branches = list(/datum/mil_branch/fleet)
	allowed_ranks = list(/datum/mil_rank/fleet/o5)

/datum/job/submap/sfv_armstrong/chief_engineer
	title = "Scout Ship Chief Engineer"
	supervisors = "the Captain"
	total_positions = 1
	outfit_type = /decl/hierarchy/outfit/job/sfv_armstrong/command/ce
	info = ""
	rank =   /datum/mil_rank/fleet/o3
	branch = /datum/mil_branch/fleet
	allowed_branches = list(/datum/mil_branch/fleet)
	allowed_ranks = list(/datum/mil_rank/fleet/o3)

/datum/job/submap/sfv_armstrong/strike_team_commander
	title = "Scout Ship Strike Team Commander"
	supervisors = "the Captain"
	total_positions = 1
	outfit_type = /decl/hierarchy/outfit/job/sfv_armstrong/command/cos
	info = ""
	rank =   /datum/mil_rank/fleet/o4
	branch = /datum/mil_branch/fleet
	allowed_branches = list(/datum/mil_branch/fleet)
	allowed_ranks = list(/datum/mil_rank/fleet/o4)

/datum/job/submap/sfv_armstrong/doctor
	title = "Scout Ship Doctor"
	supervisors = "the Captain"
	total_positions = 1
	outfit_type = /decl/hierarchy/outfit/job/sfv_armstrong/command/cmo
	info = ""
	rank =   /datum/mil_rank/fleet/o3
	branch = /datum/mil_branch/fleet
	allowed_branches = list(/datum/mil_branch/fleet)
	allowed_ranks = list(/datum/mil_rank/fleet/o3)

/datum/job/submap/sfv_armstrong/intelligence_officer
	title = "Scout Ship Intelligence Officer"
	supervisors = "the Captain"
	total_positions = 1
	outfit_type = /decl/hierarchy/outfit/job/sfv_armstrong/command/int
	info = ""
	rank =   /datum/mil_rank/fleet/o4
	branch = /datum/mil_branch/fleet
	allowed_branches = list(/datum/mil_branch/fleet)
	allowed_ranks = list(/datum/mil_rank/fleet/o4)

/datum/job/submap/sfv_armstrong/medic
	title = "Scout Ship Medic"
	supervisors = "the Doctor"
	total_positions = 2
	outfit_type = /decl/hierarchy/outfit/job/sfv_armstrong/medical
	info = ""
	rank =   /datum/mil_rank/fleet/e4
	branch = /datum/mil_branch/fleet
	allowed_branches = list(/datum/mil_branch/fleet)
	allowed_ranks = list(/datum/mil_rank/fleet/e4,/datum/mil_rank/fleet/e5,/datum/mil_rank/fleet/e6)

/datum/job/submap/sfv_armstrong/engineer
	title = "Scout Ship Engineer"
	supervisors = "the Chief Engineer"
	total_positions = 2
	outfit_type = /decl/hierarchy/outfit/job/sfv_armstrong/engineering
	info = ""
	rank =   /datum/mil_rank/fleet/e4
	branch = /datum/mil_branch/fleet
	allowed_branches = list(/datum/mil_branch/fleet)
	allowed_ranks = list(/datum/mil_rank/fleet/e4,/datum/mil_rank/fleet/e5,/datum/mil_rank/fleet/e6)

/datum/job/submap/sfv_armstrong/ert
	title = "Scout Ship Strike Team Member"
	supervisors = "the Strike Team Commander"
	total_positions = 3
	outfit_type = /decl/hierarchy/outfit/job/sfv_armstrong/ert
	info = ""
	rank =   /datum/mil_rank/fleet/e4
	branch = /datum/mil_branch/fleet
	allowed_branches = list(/datum/mil_branch/fleet)
	allowed_ranks = list(/datum/mil_rank/fleet/e4,/datum/mil_rank/fleet/e5,/datum/mil_rank/fleet/e6)

/datum/job/submap/sfv_armstrong/intelligence
	title = "Scout Ship Intelligence"
	supervisors = "the Intelligence Officer"
	total_positions = 2
	outfit_type = /decl/hierarchy/outfit/job/sfv_armstrong/intel
	info = ""
	rank =   /datum/mil_rank/fleet/e6
	branch = /datum/mil_branch/fleet
	allowed_branches = list(/datum/mil_branch/fleet)
	allowed_ranks = list(/datum/mil_rank/fleet/e6,/datum/mil_rank/fleet/e7,/datum/mil_rank/fleet/e8)

#define ARMSTRONG_OUTFIT_JOB_NAME(job_name) ("SFV Armstrong - Job - " + job_name)

/decl/hierarchy/outfit/job/sfv_armstrong
	hierarchy_type = /decl/hierarchy/outfit/job/sfv_armstrong
	pda_type = /obj/item/modular_computer/pda
	pda_slot = slot_l_store
	shoes = /obj/item/clothing/shoes/dutyboots
	l_ear = /obj/item/device/radio/headset/armstrong
	r_ear = null

/decl/hierarchy/outfit/job/sfv_armstrong/command/captain
	name = ARMSTRONG_OUTFIT_JOB_NAME("Captain")
	uniform = /obj/item/clothing/under/solgov/utility/fleet/officer/command
	pda_type = /obj/item/modular_computer/pda/captain
	id_type = /obj/item/weapon/card/id/sfv_armstrong/officer/captain

/decl/hierarchy/outfit/job/sfv_armstrong/command/xo
	name = ARMSTRONG_OUTFIT_JOB_NAME("Executive Officer")
	uniform = /obj/item/clothing/under/solgov/utility/fleet/officer/command
	id_type = /obj/item/weapon/card/id/sfv_armstrong/officer/xo

/decl/hierarchy/outfit/job/sfv_armstrong/command/ce
	name = ARMSTRONG_OUTFIT_JOB_NAME("Chief Engineer")
	uniform = /obj/item/clothing/under/solgov/utility/fleet/officer/engineering
	id_type = /obj/item/weapon/card/id/sfv_armstrong/officer/ce

/decl/hierarchy/outfit/job/sfv_armstrong/command/cos
	name = ARMSTRONG_OUTFIT_JOB_NAME("Strike Team Commander")
	uniform = /obj/item/clothing/under/solgov/utility/fleet/officer/security
	id_type = /obj/item/weapon/card/id/sfv_armstrong/officer/ert

/decl/hierarchy/outfit/job/sfv_armstrong/command/cmo
	name = ARMSTRONG_OUTFIT_JOB_NAME("Doctor")
	uniform = /obj/item/clothing/under/solgov/utility/fleet/officer/medical
	id_type = /obj/item/weapon/card/id/sfv_armstrong/officer/cmo

/decl/hierarchy/outfit/job/sfv_armstrong/command/int
	name = ARMSTRONG_OUTFIT_JOB_NAME("Intelligence Officer")
	uniform = /obj/item/clothing/under/solgov/utility/fleet/officer/command
	id_type = /obj/item/weapon/card/id/sfv_armstrong/officer/int

/decl/hierarchy/outfit/job/sfv_armstrong/medical
	name = ARMSTRONG_OUTFIT_JOB_NAME("Corpsman")
	uniform = /obj/item/clothing/under/solgov/utility/fleet/medical
	id_type = /obj/item/weapon/card/id/sfv_armstrong/enlisted/medical

/decl/hierarchy/outfit/job/sfv_armstrong/engineering
	name = ARMSTRONG_OUTFIT_JOB_NAME("Engineer")
	uniform = /obj/item/clothing/under/solgov/utility/fleet/engineering
	id_type = /obj/item/weapon/card/id/sfv_armstrong/enlisted/engineering

/decl/hierarchy/outfit/job/sfv_armstrong/ert
	name = ARMSTRONG_OUTFIT_JOB_NAME("Strike Team Member")
	uniform = /obj/item/clothing/under/solgov/utility/fleet/security
	id_type = /obj/item/weapon/card/id/sfv_armstrong/enlisted/ert

/decl/hierarchy/outfit/job/sfv_armstrong/intel
	name = ARMSTRONG_OUTFIT_JOB_NAME("Intelligence Analyst")
	uniform = /obj/item/clothing/under/solgov/utility/fleet/command
	id_type = /obj/item/weapon/card/id/sfv_armstrong/enlisted/int

/decl/hierarchy/outfit/job/sfv_armstrong/command/captain/post_equip(var/mob/living/carbon/human/H)
	..()
	var/obj/item/clothing/uniform = H.w_uniform
	if(uniform)
		var/obj/item/clothing/accessory/solgov/rank/fleet/officer/o6/rank
		if(uniform.can_attach_accessory(rank))
			uniform.attach_accessory(null, rank)
		else
			qdel(rank)

#undef BEARCAT_OUTFIT_JOB_NAME

/obj/effect/submap_landmark/spawnpoint/sfv_armstrong/captain
	name = "Scout Ship Captain"

/obj/effect/submap_landmark/spawnpoint/sfv_armstrong/xo
	name = "Scout Ship First Officer"

/obj/effect/submap_landmark/spawnpoint/sfv_armstrong/ce
	name = "Scout Ship Chief Engineer"

/obj/effect/submap_landmark/spawnpoint/sfv_armstrong/cmo
	name = "Scout Ship Doctor"

/obj/effect/submap_landmark/spawnpoint/sfv_armstrong/int_officer
	name = "Scout Ship Intelligence Officer"

/obj/effect/submap_landmark/spawnpoint/sfv_armstrong/cos
	name = "Scout Ship Strike Team Commander"

/obj/effect/submap_landmark/spawnpoint/sfv_armstrong/medic
	name = "Scout Ship Medic"

/obj/effect/submap_landmark/spawnpoint/sfv_armstrong/engineer
	name = "Scout Ship Engineer"

/obj/effect/submap_landmark/spawnpoint/sfv_armstrong/intel
	name = "Scout Ship Intelligence Analyst"

/obj/effect/submap_landmark/spawnpoint/sfv_armstrong/ert
	name = "Scout Ship Strike Team Member"

/datum/job/submap/sfv_armstrong/captain
/datum/job/submap/sfv_armstrong/first_officer
/datum/job/submap/sfv_armstrong/ce
/datum/job/submap/sfv_armstrong/doctor
/datum/job/submap/sfv_armstrong/stc
/datum/job/submap/sfv_armstrong/cii
/datum/job/submap/sfv_armstrong/medic
/datum/job/submap/sfv_armstrong/engineer
/datum/job/submap/sfv_armstrong/security