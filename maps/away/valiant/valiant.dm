#include "valiant_areas.dm"
#include "valiant_jobs.dm"
#include "valiant_access.dm"

/obj/effect/submap_landmark/joinable_submap/valiant
	name = "SEV Valiant"
	archetype = /decl/submap_archetype/derelict/valiant

/decl/submap_archetype/derelict/valiant
	descriptor = "derelict"
	map = "SEV Valiant"
	crew_jobs = list(
		/datum/job/submap/valiant/captain,
		/datum/job/submap/valiant/engineer,
		/datum/job/submap/valiant/science,
		/datum/job/submap/valiant/executive_officer,
		/datum/job/submap/valiant/chief_engineer,
		/datum/job/submap/valiant/chief_medical,
		/datum/job/submap/valiant/chief_security,
		/datum/job/submap/valiant/science_officer,
		/datum/job/submap/valiant/security,
		/datum/job/submap/valiant/pilot,
		/datum/job/submap/valiant/crewman
	)

/obj/effect/overmap/ship/valiant
	name = "old expeditionary ship"
	color = "#00ffff"
	vessel_mass = 120
	default_delay = 2 MINUTES
	speed_mod = 0.1 MINUTE
	burn_delay = 10 SECONDS

/datum/map_template/ruin/away_site/valiant
	name = "SEV Valiant"
	id = "awaysite_valiant"
	description = "An outdated exploration vessel"
	suffixes = list("valiant/valiant-1.dmm", "valiant/valiant-2.dmm", "valiant/valiant-3.dmm")
	cost = 1
	//shuttles_to_initialise = list(/datum/shuttle/autodock/sev_valiant/lift)
	template_flags = TEMPLATE_FLAG_SPAWN_GUARANTEED

/*/datum/shuttle/autodock/sev_valiant/lift
	name = "Main Lift"
	shuttle_area = /area/ship/valiant/shuttle/lift
	warmup_time = 3	//give those below some time to get out of the way
	//waypoint_station = "nav_valiant_lift_bottom"
	//waypoint_offsite = "nav_valiant_lift_top"
	sound_takeoff = 'sound/effects/lift_heavy_start.ogg'
	sound_landing = 'sound/effects/lift_heavy_stop.ogg'
	ceiling_type = null
	knockdown = 0
	defer_initialisation = TRUE
*/

/obj/machinery/power/apc/valiant
	cell_type = /obj/item/weapon/cell/infinite
	//cell_type = /obj/item/weapon/cell/apc
	lighting = 1
	equipment = 1
	environ = 1
	locked = 1
	coverlocked = 1
	req_access = list(access_valiant_engineering)

/obj/machinery/alarm/valiant
	req_one_access = list(access_valiant_engineering)

/obj/machinery/alarm/valiant/telecomms
	target_temperature = 283.15

/obj/machinery/alarm/valiant/freezer
	target_temperature = 273.15

/obj/machinery/door/firedoor/valiant
	req_one_access = list(access_valiant_engineering, access_valiant_medical, access_valiant_command)

/obj/machinery/door/airlock/autoname/valiant
	req_one_access = null
	req_access = list()

/obj/machinery/door/airlock/autoname/valiant/service/janitor
	req_one_access = list(access_valiant)

/obj/machinery/door/airlock/autoname/valiant/public
	door_color = COLOR_WHITE
	stripe_color = COLOR_COMMAND_BLUE

/obj/machinery/door/airlock/autoname/valiant/command
	door_color = COLOR_COMMAND_BLUE
	req_one_access = list(access_valiant_command)

/obj/machinery/door/airlock/autoname/valiant/command/glass/public
	door_color = COLOR_COMMAND_BLUE
	stripe_color = COLOR_SKY_BLUE
	hitsound = 'sound/effects/Glasshit.ogg'
	maxhealth = 300
	explosion_resistance = 5
	opacity = 0
	glass = 1
	req_access = list(access_valiant)
	opacity = 0

/obj/machinery/door/airlock/autoname/valiant/engineering
	door_color = COLOR_AMBER
	req_one_access = list(access_valiant_engineering)

/obj/machinery/door/airlock/autoname/valiant/engineering/atmospherics
	door_color = COLOR_AMBER
	stripe_color = COLOR_SKY_BLUE
	req_one_access = list(access_valiant_engineering)

/obj/machinery/door/airlock/autoname/valiant/command/engineering
	door_color = COLOR_AMBER
	req_access = list(access_valiant_engineering, access_valiant_command)

/obj/machinery/door/airlock/autoname/valiant/medical
	door_color = COLOR_WHITE
	stripe_color = COLOR_DEEP_SKY_BLUE
	req_access = list(access_valiant_medical)
	opacity = 0

/obj/machinery/door/airlock/autoname/valiant/medical/public
	door_color = COLOR_WHITE
	stripe_color = COLOR_DEEP_SKY_BLUE
	req_access = list()
	opacity = 0

/obj/machinery/door/airlock/autoname/valiant/command/medical
	door_color = COLOR_WHITE
	stripe_color = COLOR_DEEP_SKY_BLUE
	req_access = list(access_valiant_medical, access_valiant_command)

/obj/machinery/door/airlock/autoname/valiant/science
	door_color = COLOR_WHITE
	stripe_color = COLOR_VIOLET
	req_access = list(access_valiant_science)

/obj/machinery/door/airlock/autoname/valiant/science/secure
	airlock_type = "secure"
	name = "Secure Airlock"
	icon = 'icons/obj/doors/secure/door.dmi'
	fill_file = 'icons/obj/doors/secure/fill_steel.dmi'
	explosion_resistance = 20
	secured_wires = 1
	assembly_type = /obj/structure/door_assembly/door_assembly_highsecurity
	paintable = 0
	req_access = list(access_valiant_science)

/obj/machinery/door/airlock/autoname/valiant/command/science
	door_color = COLOR_WHITE
	stripe_color = COLOR_VIOLET
	req_access = list(access_valiant_science, access_valiant_command)

/obj/machinery/door/airlock/autoname/valiant/security
	door_color = COLOR_NT_RED
	req_access = list(access_valiant_security)

/obj/machinery/door/airlock/autoname/valiant/command/security
	door_color = COLOR_NT_RED
	req_access = list(access_valiant_security, access_valiant_command)

/obj/machinery/door/airlock/autoname/valiant/head
	door_color = COLOR_WHITE
	stripe_color = COLOR_COMMAND_BLUE
	opacity = 1
	req_access = list()

/obj/machinery/door/airlock/autoname/crew/public
	door_color = COLOR_WHITE
	stripe_color = COLOR_COMMAND_BLUE
	opacity = 0
	req_access = list()

/obj/machinery/door/airlock/autoname/valiant/maintenance
	airlock_type = "hatch"
	icon = 'icons/obj/doors/hatch/door.dmi'
	fill_file = 'icons/obj/doors/hatch/fill_steel.dmi'
	stripe_file = 'icons/obj/doors/hatch/stripe.dmi'
	stripe_fill_file = 'icons/obj/doors/hatch/fill_stripe.dmi'
	bolts_file = 'icons/obj/doors/hatch/lights_bolts.dmi'
	deny_file = 'icons/obj/doors/hatch/lights_deny.dmi'
	lights_file = 'icons/obj/doors/hatch/lights_green.dmi'
	panel_file = 'icons/obj/doors/hatch/panel.dmi'
	welded_file = 'icons/obj/doors/hatch/welded.dmi'
	emag_file = 'icons/obj/doors/hatch/emag.dmi'
	explosion_resistance = 20
	opacity = 1
	assembly_type = /obj/structure/door_assembly/door_assembly_hatch
	paintable = AIRLOCK_STRIPABLE
	req_access = list(access_valiant)
	stripe_color = COLOR_AMBER

/obj/machinery/status_display/valiant
	mode = 3

/obj/machinery/status_display/valiant/display_alert()
	remove_display()

	//var/decl/security_state/security_state = decls_repository.get_decl(GLOB.using_map.security_state)
	var/decl/security_level/sl = new /decl/security_level/default/code_red

	var/image/alert = image(sl.icon, sl.overlay_status_display)
	set_light(sl.light_max_bright, sl.light_inner_range, sl.light_outer_range, 2, sl.light_color_alarm)
	overlays |= alert
	return

/obj/machinery/power/smes/buildable/preset/valiant/substation

/obj/machinery/power/smes/buildable/preset/valiant/substation/configure_and_install_coils()
	component_parts += new /obj/item/weapon/smes_coil(src)
	component_parts += new /obj/item/weapon/smes_coil(src)
	_input_maxed = TRUE
	_output_maxed = TRUE

/obj/turbolift_map_holder/valiant
	name = "Valiant turbolift map placeholder"
	depth = 3
	lift_size_x = 4
	lift_size_y = 4

	areas_to_use = list(
		/area/turbolift/valiant/deck3,
		/area/turbolift/valiant/deck2,
		/area/turbolift/valiant/deck1
		)

/obj/machinery/suit_storage_unit/atmos/valiant
	req_one_access = list(access_valiant_engineering)

/obj/machinery/suit_storage_unit/engineering/valiant
	req_one_access = list(access_valiant_engineering)

/obj/machinery/suit_storage_unit/explorer/valiant
	req_one_access = list(access_valiant_science)

/obj/machinery/suit_storage_unit/medical/valiant
	req_one_access = list(access_valiant_science)

/obj/machinery/suit_storage_unit/security/valiant
	req_one_access = list(access_valiant_security)

/obj/machinery/vending/boozeomat/valiant
	req_access = list(access_valiant)

/obj/item/weapon/reagent_containers/food/drinks/coffeecup/EC
	icon = 'maps/away/valiant/valiant.dmi'
	icon_state = "coffeecup_ec"

/obj/effect/floor_decal/eclogo
	alpha = 230
	icon = 'maps/away/valiant/valiant.dmi'
	icon_state = "ecsymbol_06"

/obj/machinery/button/remote/blast_door/valiant/atmos
	name = "Atmospherics Emergency Vent"
	id = "atmos_emergency_vent"
	req_one_access = list(access_valiant_engineering)