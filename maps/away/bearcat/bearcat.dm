#include "bearcat_areas.dm"
#include "bearcat_jobs.dm"
#include "bearcat_access.dm"

#define BEARCAT_FREQ 1281

/obj/effect/submap_landmark/joinable_submap/bearcat
	name = "FTV Bearcat"
	archetype = /decl/submap_archetype/derelict/bearcat

/decl/submap_archetype/derelict/bearcat
	descriptor = "derelict cargo vessel"
	map = "Bearcat Wreck"
	crew_jobs = list(
		/datum/job/submap/bearcat_captain,
		/datum/job/submap/bearcat_crewman
	)

/obj/effect/overmap/ship/bearcat
	name = "light freighter"
	color = "#00ffff"
	vessel_mass = 60
	max_speed = 1/(10 SECONDS)
	burn_delay = 10 SECONDS
	initial_generic_waypoints = list(
		"nav_bearcat_1",
		"nav_bearcat_2",
		"nav_bearcat_3",
		"nav_bearcat_4",
		"nav_bearcat_antag",
		"nav_bearcat_hangar",
	)
	initial_restricted_waypoints = list(
		"Utility Pod" = list("nav_hangar_bc_gup")
	)

/obj/effect/overmap/ship/bearcat/New()
	name = "[pick("FTV","ITV","IEV")] [pick("Bearcat", "Firebug", "Defiant", "Unsinkable","Horizon","Vagrant")]"
	for(var/area/ship/scrap/A)
		A.name = "\improper [name] - [A.name]"
		GLOB.using_map.area_purity_test_exempt_areas += A.type
	name = "[name], \a [initial(name)]"
	..()

/datum/map_template/ruin/away_site/bearcat_wreck
	name = "Bearcat Wreck"
	id = "awaysite_bearcat_wreck"
	description = "A wrecked light freighter."
	suffixes = list("bearcat/bearcat-1.dmm", "bearcat/bearcat-2.dmm")
	cost = 1
	shuttles_to_initialise = list(/datum/shuttle/autodock/ferry/lift, /datum/shuttle/autodock/overmap/bc_gup)
	template_flags = TEMPLATE_FLAG_SPAWN_GUARANTEED

/datum/shuttle/autodock/ferry/lift
	name = "Cargo Lift"
	shuttle_area = /area/ship/scrap/shuttle/lift
	warmup_time = 3	//give those below some time to get out of the way
	waypoint_station = "nav_bearcat_lift_bottom"
	waypoint_offsite = "nav_bearcat_lift_top"
	sound_takeoff = 'sound/effects/lift_heavy_start.ogg'
	sound_landing = 'sound/effects/lift_heavy_stop.ogg'
	ceiling_type = null
	knockdown = 0
	defer_initialisation = TRUE

/obj/machinery/computer/shuttle_control/lift
	name = "cargo lift controls"
	shuttle_tag = "Cargo Lift"
	ui_template = "shuttle_control_console_lift.tmpl"
	icon_state = "tiny"
	icon_keyboard = "tiny_keyboard"
	icon_screen = "lift"
	density = 0

/obj/effect/shuttle_landmark/lift/top
	name = "Top Deck"
	landmark_tag = "nav_bearcat_lift_top"
	flags = SLANDMARK_FLAG_AUTOSET

/obj/effect/shuttle_landmark/lift/bottom
	name = "Lower Deck"
	landmark_tag = "nav_bearcat_lift_bottom"
	base_area = /area/ship/scrap/cargo/lower
	base_turf = /turf/simulated/floor

/obj/machinery/power/apc/derelict
	cell_type = /obj/item/weapon/cell/crap/empty
	lighting = 0
	equipment = 0
	environ = 0
	locked = 0
	coverlocked = 0
	req_access = list(access_bearcat)

/obj/machinery/alarm/derelict
	locked = 0
	req_access = list(access_bearcat)

/obj/machinery/door/firedoor/derelict
	req_access = list(access_bearcat)

/obj/machinery/door/airlock/autoname/command
	door_color = COLOR_COMMAND_BLUE

/obj/machinery/door/airlock/autoname/engineering
	door_color = COLOR_AMBER

/turf/simulated/floor/usedup
	initial_gas = list("carbon_dioxide" = MOLES_O2STANDARD, "nitrogen" = MOLES_N2STANDARD)

/turf/simulated/floor/tiled/usedup
	initial_gas = list("carbon_dioxide" = MOLES_O2STANDARD, "nitrogen" = MOLES_N2STANDARD)

/turf/simulated/floor/tiled/dark/usedup
	initial_gas = list("carbon_dioxide" = MOLES_O2STANDARD, "nitrogen" = MOLES_N2STANDARD)

/turf/simulated/floor/tiled/white/usedup
	initial_gas = list("carbon_dioxide" = MOLES_O2STANDARD, "nitrogen" = MOLES_N2STANDARD)

/obj/effect/landmark/deadcap
	name = "Dead Captain"
	delete_me = 1

/obj/effect/landmark/deadcap/Initialize()
	var/turf/T = get_turf(src)
	var/mob/living/carbon/human/corpse = new(T)
	scramble(1,corpse,100)
	corpse.real_name = "Captain"
	corpse.name = "Captain"
	var/decl/hierarchy/outfit/outfit = outfit_by_type(/decl/hierarchy/outfit/deadcap)
	outfit.equip(corpse)
	corpse.adjustOxyLoss(corpse.maxHealth)
	corpse.setBrainLoss(corpse.maxHealth)
	var/obj/structure/bed/chair/C = locate() in T
	department_radio_keys += list(":F" = "Freighter Comms",	".F" = "Freighter Comms")
	if(C)
		C.buckle_mob(corpse)
	. = ..()

/decl/hierarchy/outfit/deadcap
	name = "Derelict Captain"
	uniform = /obj/item/clothing/under/casual_pants/classicjeans
	suit = /obj/item/clothing/suit/storage/hooded/wintercoat
	shoes = /obj/item/clothing/shoes/black
	r_pocket = /obj/item/device/radio

/decl/hierarchy/outfit/deadcap/post_equip(mob/living/carbon/human/H)
	..()
	var/obj/item/clothing/uniform = H.w_uniform
	if(uniform)
		var/obj/item/clothing/accessory/toggleable/hawaii/random/eyegore = new()
		if(uniform.can_attach_accessory(eyegore))
			uniform.attach_accessory(null, eyegore)
		else
			qdel(eyegore)
	var/obj/item/weapon/cell/super/C = new()
	H.put_in_any_hand_if_possible(C)

/obj/effect/shuttle_landmark/bearcat/hangar/bearcat_gup
	name = "Utility Pod Docked"
	landmark_tag = "nav_hangar_bc_gup"

/obj/effect/shuttle_landmark/transit/bearcat/bearcat_gup
	name = "In transit"
	landmark_tag = "nav_transit_bc_gup"

/obj/effect/shuttle_landmark/nav_bearcat/nav1
	name = "Freighter Navpoint #1"
	landmark_tag = "nav_bearcat_1"

/obj/effect/shuttle_landmark/nav_bearcat/nav2
	name = "Freighter Navpoint #2"
	landmark_tag = "nav_bearcat_2"

/obj/effect/shuttle_landmark/nav_bearcat/nav3
	name = "Freighter Navpoint #3"
	landmark_tag = "nav_bearcat_3"

/obj/effect/shuttle_landmark/nav_bearcat/nav4
	name = "Freighter Navpoint #4"
	landmark_tag = "nav_bearcat_4"

/obj/effect/shuttle_landmark/nav_bearcat/nav5
	name = "Freighter Navpoint #5"
	landmark_tag = "nav_bearcat_antag"

/datum/shuttle/autodock/overmap/bc_gup
	name = "Utility Pod"
	warmup_time = 15
	move_time = 60
	shuttle_area = /area/ship/scrap/shuttle/bc_gup
	current_location = "nav_hangar_bc_gup"
	landmark_transition = "nav_transit_bc_gup"
	fuel_consumption = 0.5
	range = 1
	defer_initialisation = TRUE

/obj/machinery/computer/shuttle_control/explore/bc_gup
	name = "Utility Pod control console"
	shuttle_tag = "Utility Pod"

/obj/machinery/telecomms/broadcaster/bearcat
	id = "Broadcaster"
	network = "fcomms"
	autolinkers = list("bearcat_broadcaster")

/obj/machinery/telecomms/bus/bearcat
	id = "Bus"
	network = "fcomms"
	freq_listening = list(BEARCAT_FREQ)
	autolinkers = list("bearcat", "bearcat_processor")

/obj/machinery/telecomms/hub/bearcat
	id = "Hub"
	network = "fcomms"
	autolinkers = list("bearcat", "bearcat_receiver", "bearcat_broadcaster")

/obj/machinery/telecomms/processor/bearcat
	id = "Processor"
	network = "fcomms"
	autolinkers = list("bearcat_processor") // processors are sort of isolated; they don't need backward links

/obj/machinery/telecomms/receiver/bearcat
	id = "Receiver"
	network = "fcomms"
	autolinkers = list("bearcat_receiver")
	freq_listening = list(BEARCAT_FREQ)

/obj/machinery/telecomms/server/presets/bearcat
	id = "Comms Server"
	network = "fcomms"
	freq_listening = list(BEARCAT_FREQ) // AI Private and Common
	channel_tags = list(
		list(BEARCAT_FREQ, "Freighter Comms", COMMS_COLOR_SYNDICATE)
	)
	autolinkers = list("bearcat")

/obj/item/device/radio/headset/bearcat
	name = "freighter radio headset"
	desc = "This is used by the crew of a freighter."
	ks2type = /obj/item/device/encryptionkey/bearcat

/obj/item/device/encryptionkey/bearcat
	name = "freighter radio encryption key"
	channels = list("Freighter Comms" = 1)