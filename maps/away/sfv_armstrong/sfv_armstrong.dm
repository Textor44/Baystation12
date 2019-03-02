#include "sfv_armstrong_access.dm"
#include "sfv_armstrong_areas.dm"
#include "sfv_armstrong_jobs.dm"

/obj/effect/submap_landmark/joinable_submap/sfv_armstrong
	name = "SFV Armstrong"
	archetype = /decl/submap_archetype/derelict/sfv_armstrong

/decl/submap_archetype/derelict/sfv_armstrong
	descriptor = "Fifth Fleet scout ship"
	map = "SFV Armstrong"
	crew_jobs = list(
		/datum/job/submap/sfv_armstrong/captain,
		/datum/job/submap/sfv_armstrong/first_officer,
		/datum/job/submap/sfv_armstrong/ce,
		/datum/job/submap/sfv_armstrong/doctor,
		/datum/job/submap/sfv_armstrong/stc,
		/datum/job/submap/sfv_armstrong/cii,
		/datum/job/submap/sfv_armstrong/medic,
		/datum/job/submap/sfv_armstrong/engineer,
		/datum/job/submap/sfv_armstrong/security
	)

/obj/effect/overmap/ship/sfv_armstrong
	name = "SFV Armstrong"
	color = "#ffff00"
	vessel_mass = 60
	max_speed = 5/(10 SECONDS)
	burn_delay = 2 SECONDS
	//template_flags = TEMPLATE_FLAG_SPAWN_GUARANTEED

/datum/map_template/ruin/away_site/sfv_armstrong
	name = "SFV Armstrong"
	id = "awaysite_sfv_armstrong"
	description = "A SCG Fleet scout vessel"
	suffixes = list("sfv_armstrong/sfv_armstrong-1.dmm", "sfv_armstrong-2.dmm")
	cost = 1
	shuttles_to_initialise = list()

/obj/machinery/door/firedoor/sfv_armstrong
	req_access = list(access_armstrong_general)

/obj/machinery/power/apc/sfv_armstrong
	req_access = list(access_armstrong_engineering)

/obj/machinery/door/blast/regular/sfv_armstrong

/obj/machinery/door/blast/regular/open/sfv_armstrong
	icon_state = "pdoor0"

/obj/machinery/door/blast/regular/open/sfv_armstrong/bridge
	id = "sfva_bridge_blast"

/obj/machinery/door/blast/regular/open/sfv_armstrong/conf_room
	id = "sfva_conf_room_blast"

/obj/machinery/door/blast/regular/open/sfv_armstrong/sensors
	id = "sfva_sensor_shroud"

/obj/item/device/radio/headset/armstrong

/obj/machinery/alarm/sfv_armstrong
	req_access = list(access_armstrong_engineering)