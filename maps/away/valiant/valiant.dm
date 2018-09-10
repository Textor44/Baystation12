#include "valiant_areas.dm"
#include "valiant_jobs.dm"
#include "valiant_access.dm"

/obj/effect/submap_landmark/joinable_submap/sev_valiant
	name = "SEV Valiant"
	archetype = /decl/submap_archetype/sev_valiant

/decl/submap_archetype/sev_valiant
	descriptor = "exploration vessel"
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

/obj/effect/overmap/ship/sev_valiant
	name = "old expeditionary ship"
	color = "#00ffff"
	vessel_mass = 120
	default_delay = 2 MINUTES
	speed_mod = 0.1 MINUTE
	burn_delay = 10 SECONDS

/obj/effect/overmap/ship/sev_valiant/New()
	name = "SEV Valiant"
	for(var/area/ship/valiant/A)
		A.name = "\improper [name] - [A.name]"
		GLOB.using_map.area_purity_test_exempt_areas += A.type
	name = "[name], \a [initial(name)]"
	..()

/datum/map_template/ruin/away_site/sev_valiant
	name = "SEV Valiant"
	id = "awaysite_sev_valiant"
	description = "An outdated exploration vessel"
	suffixes = list("sev_valiant/SEV_Valiant1.dmm", "sev_valiant/SEV_valiant2.dmm", "sev_valiant/SEV_valiant3.dmm")
	cost = 1
	shuttles_to_initialise = list(/datum/shuttle/autodock/sev_valiant/lift)
	template_flags = TEMPLATE_FLAG_SPAWN_GUARANTEED

/datum/shuttle/autodock/sev_valiant/lift
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

/obj/machinery/computer/shuttle_control/lift
	name = "cargo lift controls"
	shuttle_tag = "Cargo Lift"
	ui_template = "shuttle_control_console_lift.tmpl"
	icon_state = "tiny"
	icon_keyboard = "tiny_keyboard"
	icon_screen = "lift"
	density = 0

/obj/effect/shuttle_landmark/lift/top
	name = "Deck 1"
	landmark_tag = "nav_valiant_lift_top"
	autoset = 1

/obj/effect/shuttle_landmark/lift/bottom
	name = "Deck 3"
	landmark_tag = "nav_valiant_lift_bottom"
	base_area = /area/ship/valiant/engineering
	base_turf = /turf/simulated/floor

/obj/machinery/power/apc/valiant
	//cell_type = /obj/item/weapon/cell/infinite
	cell_type = /obj/item/weapon/cell/apc
	lighting = 1
	equipment = 1
	environ = 1
	locked = 1
	coverlocked = 1
	req_one_access = list(access_valiant_engineering)

/obj/machinery/alarm/valiant
	req_one_access = list(access_valiant_engineering)

/obj/machinery/alarm/valiant/telecomms
	target_temperature = 283.15

/obj/machinery/door/firedoor/valiant
	req_one_access = list(access_valiant_engineering, access_valiant_medical, access_valiant_command)

/obj/machinery/door/airlock/autoname/valiant/command
	door_color = COLOR_COMMAND_BLUE
	req_access = list(access_valiant_command)

/obj/machinery/door/airlock/autoname/valiant/command/public
	door_color = COLOR_COMMAND_BLUE
	req_access = list(access_valiant)

/obj/machinery/door/airlock/autoname/valiant/engineering
	door_color = COLOR_AMBER
	req_access = list(access_valiant_engineering)

/obj/machinery/door/airlock/autoname/valiant/command/engineering
	door_color = COLOR_AMBER
	req_access = list(access_valiant_engineering, access_valiant_command)

/obj/machinery/door/airlock/autoname/valiant/medical
	door_color = COLOR_WHITE
	stripe_color = COLOR_DEEP_SKY_BLUE
	req_access = list(access_valiant_medical)

/obj/machinery/door/airlock/autoname/valiant/command/medical
	door_color = COLOR_WHITE
	stripe_color = COLOR_DEEP_SKY_BLUE
	req_access = list(access_valiant_medical, access_valiant_command)

/obj/machinery/door/airlock/autoname/valiant/science
	door_color = COLOR_WHITE
	stripe_color = COLOR_VIOLET
	req_access = list(access_valiant_science)

/obj/machinery/door/airlock/autoname/valiant/science/secure
	door_color = COLOR_WHITE
	stripe_color = COLOR_VIOLET
	icon = 'icons/obj/doors/secure/door.dmi'
	fill_file = 'icons/obj/doors/vault/fill_steel.dmi'
	explosion_resistance = 20
	opacity = 1
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

/obj/machinery/door/airlock/autoname/valiant/engineering/maintenance
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
	stripe_color = COLOR_AMBER
	req_access = list(access_valiant)

/obj/machinery/status_display/valiant

/obj/machinery/status_display/valiant/display_alert()
	return

/obj/machinery/power/smes/buildable/preset/valiant/substation

/obj/machinery/power/smes/buildable/preset/valiant/substation/configure_and_install_coils()
	component_parts += new /obj/item/weapon/smes_coil(src)
	component_parts += new /obj/item/weapon/smes_coil(src)
	_input_maxed = TRUE
	_output_maxed = TRUE