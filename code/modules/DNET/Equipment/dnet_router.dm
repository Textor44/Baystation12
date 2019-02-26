/obj/machinery/dnet/networking/router
	icon = 'icons/obj/stationobjs.dmi'
	icon_state = "bus"
	name = "network router"
	var/datum/dnet/datanet/network
	var/list/vlans = list()
	var/list/connected_equipment = list()

/obj/machinery/dnet/networking/router/Initialize()
	. = ..()
	serial_number = generate_serial_number()
	unique_hardware_identifier = generate_uhid(TRUE)

/obj/machinery/dnet/networking/router/proc/generate_ui_data()
	return

/obj/machinery/dnet/networking/attack_robot(mob/user)
	attack_hand(user)

/obj/machinery/dnet/networking/router/attack_hand(mob/user)
	. = ..()

/obj/machinery/dnet/networking/router/OnTopic(mob/user, href_list, datum/topic_state/state)
	. = ..()