GLOBAL_LIST_EMPTY(dnet_all_uhids)

/obj/machinery/dnet/networking
	icon = 'icons/obj/machines/dnet.dmi'
	icon_state = "networking"
	name = "Base networking object"
	desc = "You should never see this."
	var/gateway
	var/address
	var/unique_hardware_identifier
	var/serial_number

/obj/machinery/dnet/networking/proc/generate_serial_number()
	var/hashingstring = "[name][desc][gateway][address][loc]"
	return md5(hashingstring)

/obj/machinery/dnet/networking/proc/generate_uhid(var/must_be_unique = FALSE)
	var/list/fakehex = list("G","H","I","J","K","L", "0","1","2","3","4","5","6","7","8","9")
	var/part1 = "[pick(fakehex)][pick(fakehex)]"
	var/part2 = "[pick(fakehex)][pick(fakehex)]"
	var/part3 = "[pick(fakehex)][pick(fakehex)]"
	var/part4 = "[pick(fakehex)][pick(fakehex)]"
	var/part5 = "[pick(fakehex)][pick(fakehex)]"
	var/part6 = "[pick(fakehex)][pick(fakehex)]"
	var/uhid = "[part1]:[part2]:[part3]:[part4]:[part5]:[part6]"
	if(must_be_unique && GLOB.dnet_all_uhids)
		if(uhid in GLOB.dnet_all_uhids)
			return generate_uhid()
		else
			return uhid

/datum/dnet/datanet
	var/name = "Data net"
	var/list/connected_equipment
	var/obj/machinery/dnet/networking/router/primary_router
	var/list/vlans

/obj/item/stack/cable_coil/data_cable
	name = "data cable coil"
	desc = "A coil of cable rated for data transmission."
	icon = 'icons/obj/data_cable.dmi'
	color = COLOR_YELLOW

/obj/item/stack/cable_coil/data_cable/turf_place(turf/simulated/F, mob/user)
	if(!isturf(user.loc))
		return

	if(get_amount() < 1) // Out of cable
		to_chat(user, "There is no cable left.")
		return

	if(get_dist(F,user) > 1) // Too far
		to_chat(user, "You can't lay cable at a place that far away.")
		return

	if(!F.is_plating())		// Ff floor is intact, complain
		to_chat(user, "You can't lay cable there unless the floor tiles are removed.")
		return

	var/dirn
	if(user.loc == F)
		dirn = user.dir			// if laying on the tile we're on, lay in the direction we're facing
	else
		dirn = get_dir(F, user)

	var/end_dir = 0
	if(istype(F, /turf/simulated/open))
		if(!can_use(2))
			to_chat(user, "You don't have enough cable to do this!")
			return
		end_dir = DOWN

	for(var/obj/machinery/dnet/datacable/LC in F)
		if((LC.d1 == dirn && LC.d2 == end_dir ) || ( LC.d2 == dirn && LC.d1 == end_dir))
			to_chat(user, "<span class='warning'>There's already a cable at that position.</span>")
			return

	put_cable(F, user, end_dir, dirn)
	if(end_dir == DOWN)
		put_cable(GetBelow(F), user, UP, 0)

// called when cable_coil is click on an installed obj/cable
// or click on a turf that already contains a "node" cable
/obj/item/stack/cable_coil/data_cable/cable_join(obj/machinery/dnet/datacable/C, mob/user)
	var/turf/U = user.loc
	if(!isturf(U))
		return

	var/turf/T = C.loc

	if(!isturf(T) || !T.is_plating())		// sanity checks, also stop use interacting with T-scanner revealed cable
		return

	if(get_dist(C, user) > 1)		// make sure it's close enough
		to_chat(user, "You can't lay cable at a place that far away.")
		return

	if(U == T) //if clicked on the turf we're standing on, try to put a cable in the direction we're facing
		turf_place(T,user)
		return

	var/dirn = get_dir(C, user)

	// one end of the clicked cable is pointing towards us
	if(C.d1 == dirn || C.d2 == dirn)
		if(!U.is_plating())						// can't place a cable if the floor is complete
			to_chat(user, "You can't lay cable there unless the floor tiles are removed.")
			return
		else
			// cable is pointing at us, we're standing on an open tile
			// so create a stub pointing at the clicked cable on our tile

			var/fdirn = turn(dirn, 180)		// the opposite direction

			for(var/obj/machinery/dnet/datacable/LC in U)		// check to make sure there's not a cable there already
				if(LC.d1 == fdirn || LC.d2 == fdirn)
					to_chat(user, "There's already a cable at that position.")
					return
			put_cable(U,user,0,fdirn)
			return

	// exisiting cable doesn't point at our position, so see if it's a stub
	else if(C.d1 == 0)
							// if so, make it a full cable pointing from it's old direction to our dirn
		var/nd1 = C.d2	// these will be the new directions
		var/nd2 = dirn


		if(nd1 > nd2)		// swap directions to match icons/states
			nd1 = dirn
			nd2 = C.d2


		for(var/obj/structure/cable/LC in T)		// check to make sure there's no matching cable
			if(LC == C)			// skip the cable we're interacting with
				continue
			if((LC.d1 == nd1 && LC.d2 == nd2) || (LC.d1 == nd2 && LC.d2 == nd1) )	// make sure no cable matches either direction
				to_chat(user, "There's already a cable at that position.")
				return

		C.d1 = nd1
		C.d2 = nd2

		C.add_fingerprint()
		C.update_icon()

		use(1)
	
		return

/obj/item/stack/cable_coil/data_cable/put_cable(turf/simulated/F, mob/user, d1, d2)
	if(!istype(F))
		return

	var/obj/machinery/dnet/datacable/C = new(F)
	C.d1 = d1
	C.d2 = d2
	C.add_fingerprint(user)
	C.update_icon()

	use(1)

/obj/machinery/dnet/datacable
	icon = 'icons/obj/data_cable.dmi'
	icon_state = "0-1"
	name = "\the data cable"
	desc = "A cable that carries data from networking equipment to other computer equipment."
	color = COLOR_YELLOW
	anchored = 1
	var/datum/dnet/datanet/network
	var/d1
	var/d2
	plane = ABOVE_TURF_PLANE
	layer = EXPOSED_WIRE_LAYER

/obj/machinery/dnet/datacable/New(loc)
	// ensure d1 & d2 reflect the icon_state for entering and exiting cable

	var/dash = findtext(icon_state, "-")

	d1 = text2num( copytext( icon_state, 1, dash ) )

	d2 = text2num( copytext( icon_state, dash+1 ) )

	var/turf/T = src.loc			// hide if turf is not intact
	if(level==1) hide(!T.is_plating())

/obj/machinery/dnet/datacable/attackby(obj/item/W, mob/user)
	if(isWirecutter(W))
		cut_wire(W, user)

	else if(istype(W, /obj/item/stack/cable_coil/data_cable))
		var/obj/item/stack/cable_coil/data_cable/coil = W
		if (coil.get_amount() < 1)
			to_chat(user, "Not enough cable")
			return
		coil.cable_join(src, user)

	else if(isMultitool(W))

	else if(W.edge)
		var/delay_holder

		if(W.force < 5)
			visible_message("<span class='warning'>[user] starts sawing away roughly at the cable with \the [W].</span>")
			delay_holder = 8 SECONDS
		else
			visible_message("<span class='warning'>[user] begins to cut through the cable with \the [W].</span>")
			delay_holder = 3 SECONDS

		if(user.do_skilled(delay_holder, SKILL_ELECTRICAL, src))
			cut_wire(W, user)
		else
			visible_message("<span class='warning'>[user] stops cutting before any damage is done.</span>")

	src.add_fingerprint(user)

/obj/machinery/dnet/datacable/proc/cut_wire(obj/item/W, mob/user)
	var/turf/T = get_turf(src)
	if(!T || !T.is_plating())
		return

	if(d1 == UP || d2 == UP)
		to_chat(user, "<span class='warning'>You must cut this cable from above.</span>")
		return

	new/obj/item/stack/cable_coil/data_cable(T, (src.d1 ? 2 : 1), color)

	visible_message("<span class='warning'>[user] cuts the cable.</span>")

	if(HasBelow(z))
		for(var/turf/turf in GetBelow(src))
			for(var/obj/structure/cable/c in turf)
				if(c.d1 == UP || c.d2 == UP)
					qdel(c)

	investigate_log("was cut by [key_name(usr, usr.client)] in [user.loc.loc]","wires")

	qdel(src)

/obj/machinery/dnet/datacable/on_update_icon()
	icon_state = "[d1]-[d2]"
	alpha = invisibility ? 127 : 255