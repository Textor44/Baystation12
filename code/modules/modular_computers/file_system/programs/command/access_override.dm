#define STATE_MAIN 1
#define STATE_LOG 2
#define STATE_EMAG 3

/datum/access_overrides
	var/list/override_list[8]
	var/list/override_logs = list()

/datum/access_overrides/New()
	override_list[OVERRIDE_GENERAL] = OVERRIDE_GRANTED_NONE
	override_list[OVERRIDE_COMMAND] = OVERRIDE_GRANTED_NONE
	override_list[OVERRIDE_ENGINEERING] = OVERRIDE_GRANTED_NONE
	override_list[OVERRIDE_MEDICAL] = OVERRIDE_GRANTED_NONE
	override_list[OVERRIDE_RESEARCH] = OVERRIDE_GRANTED_NONE
	override_list[OVERRIDE_SECURITY] = OVERRIDE_GRANTED_NONE
	override_list[OVERRIDE_SERVICE] = OVERRIDE_GRANTED_NONE
	override_list[OVERRIDE_SUPPLY] = OVERRIDE_GRANTED_NONE
	. = ..()

/datum/access_overrides/proc/override_active(var/department, var/department_permission)
	return (override_list[department] & department_permission)

/datum/access_overrides/proc/set_override(var/department, var/department_permission)
	if(department_permission == OVERRIDE_GENERAL)//evac override granted
		for(var/override in override_list)
			override = OVERRIDE_GRANTED_ENGINEERING | OVERRIDE_GRANTED_MEDICAL | OVERRIDE_GRANTED_SECURITY | OVERRIDE_GRANTED_ALL
	else		
		override_list[department] = override_list[department] | department_permission

/datum/access_overrides/proc/revoke_access(var/department, /var/department_permission)
	if(department_permission == OVERRIDE_GRANTED_NONE)//Revoke All command has been issued.
		for(var/override in override_list)
			override = OVERRIDE_GRANTED_NONE
	else
		override_list[department] &= ~department_permission

/datum/access_overrides/proc/can_override(var/obj/machinery/door/airlock/door, var/obj/item/weapon/card/id/ID)
	
	//Basically... admin override. This item should normally not be in the hands of players, ever,
	//though they should be able to just walk throgh anyhow with this card. Considering making bolts raise with overrides
	//so this might work for that.
	if(istype(ID, /obj/item/weapon/card/id/all_access))
		return TRUE
	
	//Evac override granted. All IDs can override any non-secure door.
	if(ID.override_category >= OVERRIDE_GENERAL)
		if(override_list[OVERRIDE_GENERAL] & OVERRIDE_GRANTED_ALL)
			return TRUE

	if(ID.override_category == OVERRIDE_ENGINEERING)
		if(override_list[door.get_override_category()] & OVERRIDE_GRANTED_ENGINEERING)
			return TRUE
		else
			return FALSE
	else if(ID.override_category == OVERRIDE_MEDICAL)
		if(override_list[door.get_override_category()] & OVERRIDE_GRANTED_MEDICAL)
			return TRUE
		else
			return FALSE
	else if(ID.override_category == OVERRIDE_SECURITY)
		if(override_list[door.get_override_category()] & OVERRIDE_GRANTED_SECURITY)
			return TRUE
		else
			return FALSE
	else
		return FALSE

/datum/access_overrides/proc/override_department_name(var/override)
	switch(override)
		if(OVERRIDE_NONE)
			return "No Deparment"
		if(OVERRIDE_GENERAL)
			return "All Departments"
		if(OVERRIDE_COMMAND)
			return "Command"
		if(OVERRIDE_ENGINEERING)
			return "Engineering"
		if(OVERRIDE_MEDICAL)
			return "Medical"
		if(OVERRIDE_RESEARCH)
			return "Research"
		if(OVERRIDE_SECURITY)
			return "Security"
		if(OVERRIDE_SERVICE)
			return "Service"
		if(OVERRIDE_SUPPLY)
			return "Supply"

/datum/access_overrides/proc/override_grant_name(var/override)
	switch(override)
		if(OVERRIDE_GRANTED_NONE)
			return "All Departments"
		if(OVERRIDE_GRANTED_ENGINEERING)
			return "Engineering"
		if(OVERRIDE_GRANTED_MEDICAL)
			return "Medical"
		if(OVERRIDE_GRANTED_SECURITY)
			return "Security"
		if(OVERRIDE_GRANTED_ALL)
			return "All Personnel"

/datum/access_overrides/proc/generate_log(var/mob/living/carbon/human/user, var/log_type, var/department, var/location, var/obj/machinery/door/airlock/door = null)
	var/datum/access_override_log/log = new()

	log.name = user.get_id_name()
	log.time = stationtime2text()

	if(log_type == OVERRIDE_LOG_REVOKE)
		log.denied = TRUE
		log.request = "Revoked [department] override access to [location]."

	if(log_type == OVERRIDE_LOG_GRANT)
		log.denied = FALSE			
		log.request = "Granted [department] override access to [location]."

	if(log_type == OVERRIDE_LOG_ACCESS)
		if(location)
			log.denied = FALSE
			log.request = "[department] Override: airlock [door.name] in [location]"

	if(log_type == OVERRIDE_LOG_ATTEMPT)
		if(location)
			log.denied = TRUE
			log.request = "[department] Override Attempt: airlock [door.name] in [location]"

	if(log.request)
		override_logs += log

/datum/access_override_log
	var/denied
	var/name
	var/time
	var/request

/datum/access_override_log/New()
	. = ..()

/datum/computer_file/program/access_override
	filename = "aoverride"
	filedesc = "Access Override"
	extended_desc = "This program allows for emergency access overrides for departments."
	program_icon_state = "id"
	program_key_state = "id_key"
	program_menu_icon = "key"
	size = 4
	requires_ntnet = 1
	available_on_ntnet = 1
	nanomodule_path = /datum/nano_module/program/access_override/	

/datum/nano_module/program/access_override
	name = "Access Override"
	available_to_ai = FALSE
	var/current_status = STATE_MAIN
	var/auth_engineering
	var/auth_medical
	var/auth_security
	var/auth_evac
	var/auth_logs
	var/auth_revoke	
	var/evacuating
	var/alert_level	
	var/list/logs = list()
	var/list/data = list()

/datum/nano_module/program/access_override/proc/determine_authorization(var/mob/user)
	auth_security = FALSE
	auth_medical = FALSE
	auth_engineering = FALSE
	auth_evac = FALSE
	auth_revoke = FALSE
	auth_logs = FALSE
	if(ishuman(user))		
		if(check_access(usr, access_hos))
			auth_security = TRUE
		if(check_access(usr, access_ce))
			auth_engineering = TRUE
			auth_evac = TRUE
		if(check_access(usr, access_cmo))
			auth_medical = TRUE
		if(check_access(usr, access_bridge))
			auth_logs = TRUE
			auth_revoke = TRUE

GLOBAL_DATUM(access_overrides, /datum/access_overrides)

/datum/nano_module/program/access_override/New()
	if(!GLOB.access_overrides)
		/var/datum/access_overrides/ao = new()
		GLOB.access_overrides = ao
	. = ..()	

/datum/nano_module/program/access_override/ui_interact(mob/user, ui_key = "main", var/datum/nanoui/ui = null, var/force_open = 1, var/datum/topic_state/state = GLOB.default_state)
	determine_authorization(user)

	data["state"] = current_status

	data["command_e"] = GLOB.access_overrides.override_active(OVERRIDE_COMMAND, OVERRIDE_GRANTED_ENGINEERING)
	data["command_m"] = GLOB.access_overrides.override_active(OVERRIDE_COMMAND, OVERRIDE_GRANTED_MEDICAL)
	data["command_s"] = GLOB.access_overrides.override_active(OVERRIDE_COMMAND, OVERRIDE_GRANTED_SECURITY)

	data["engineering_m"] = GLOB.access_overrides.override_active(OVERRIDE_ENGINEERING, OVERRIDE_GRANTED_MEDICAL)
	data["engineering_s"] = GLOB.access_overrides.override_active(OVERRIDE_ENGINEERING, OVERRIDE_GRANTED_SECURITY)
	
	data["medical_e"] = GLOB.access_overrides.override_active(OVERRIDE_MEDICAL, OVERRIDE_GRANTED_ENGINEERING)
	data["medical_s"] = GLOB.access_overrides.override_active(OVERRIDE_MEDICAL, OVERRIDE_GRANTED_ENGINEERING)
	
	data["research_e"] = GLOB.access_overrides.override_active(OVERRIDE_RESEARCH, OVERRIDE_GRANTED_ENGINEERING)
	data["research_m"] = GLOB.access_overrides.override_active(OVERRIDE_RESEARCH, OVERRIDE_GRANTED_ENGINEERING)
	data["research_s"] = GLOB.access_overrides.override_active(OVERRIDE_RESEARCH, OVERRIDE_GRANTED_ENGINEERING)
	
	data["security_e"] = GLOB.access_overrides.override_active(OVERRIDE_SECURITY, OVERRIDE_GRANTED_ENGINEERING)
	data["security_m"] = GLOB.access_overrides.override_active(OVERRIDE_SECURITY, OVERRIDE_GRANTED_MEDICAL)
	
	data["service_e"] = GLOB.access_overrides.override_active(OVERRIDE_SERVICE, OVERRIDE_GRANTED_ENGINEERING)
	data["service_m"] = GLOB.access_overrides.override_active(OVERRIDE_SERVICE, OVERRIDE_GRANTED_MEDICAL)
	data["service_s"] = GLOB.access_overrides.override_active(OVERRIDE_SERVICE, OVERRIDE_GRANTED_SECURITY)
	
	data["supply_e"] = GLOB.access_overrides.override_active(OVERRIDE_SUPPLY, OVERRIDE_GRANTED_ENGINEERING)
	data["supply_m"] = GLOB.access_overrides.override_active(OVERRIDE_SUPPLY, OVERRIDE_GRANTED_MEDICAL)
	data["supply_s"] = GLOB.access_overrides.override_active(OVERRIDE_SUPPLY, OVERRIDE_GRANTED_SECURITY)
	
	data["auth_engineering"] = auth_engineering
	data["auth_medical"] = auth_medical
	data["auth_security"] = auth_security
	data["auth_evac"] = auth_evac
	data["auth_logs"] = auth_logs
	data["auth_revoke"] = auth_revoke

	data["logs"] = GLOB.access_overrides.override_logs
	
	if(evacuation_controller && evacuation_controller.is_evacuating() && evacuation_controller.emergency_evacuation)					
		data["evac"] = TRUE
	else
		data["evac"] = FALSE		
		
	if(program)
		if(program.computer_emagged)
			data["state"] = STATE_EMAG
		if(program.computer)
			data["printer"] = !!program.computer.nano_printer
		else
			data["printer"] = 0

	ui = SSnano.try_update_ui(user, src, ui_key, ui, data, force_open)

	if(!ui)
		ui = new(user, src, ui_key, "access_override.tmpl", name, 550, 420, state = state)
		ui.auto_update_layout = 1
		ui.set_initial_data(data)
		ui.open()

/datum/nano_module/program/access_override/Topic(href, href_list)
	var/mob/user = usr

	if(..())
		return TOPIC_HANDLED
	
	if(href_list["revoke_access"])
		var/department = text2num(href_list["revoke_access"])
		var/overriding_department = text2num(href_list["o_dept"])

		GLOB.access_overrides.revoke_access(overriding_department, department)
		GLOB.access_overrides.generate_log(user, OVERRIDE_LOG_REVOKE, overriding_department, department)
		return TOPIC_REFRESH

	if(href_list["grant_access"])
		var/department = text2num(href_list["revoke_access"])
		var/overriding_department = text2num(href_list["o_dept"])

		GLOB.access_overrides.set_override(overriding_department, department)
		GLOB.access_overrides.generate_log(user, OVERRIDE_LOG_GRANT, overriding_department, department)
		return TOPIC_REFRESH

	if(href_list["revoke"])		
		GLOB.access_overrides.revoke_access(OVERRIDE_GRANTED_NONE, OVERRIDE_GENERAL)
		GLOB.access_overrides.generate_log(user, OVERRIDE_LOG_REVOKE, OVERRIDE_GRANTED_NONE, OVERRIDE_GENERAL)
		return TOPIC_REFRESH

	if(href_list["evac"])
		GLOB.access_overrides.set_override(OVERRIDE_GRANTED_ALL, OVERRIDE_GENERAL)
		GLOB.access_overrides.generate_log(user, OVERRIDE_LOG_REVOKE, OVERRIDE_GRANTED_ALL, OVERRIDE_GENERAL)
		return TOPIC_REFRESH

	if(href_list["change_screen"])
		current_status = text2num(href_list["change_screen"])
		return TOPIC_REFRESH

#undef STATE_MAIN
#undef STATE_LOG
#undef STATE_EMAG