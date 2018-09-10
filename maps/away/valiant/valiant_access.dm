/var/const/access_valiant				= 700
/var/const/access_valiant_command		= 701
/var/const/access_valiant_engineering	= 702
/var/const/access_valiant_medical		= 703
/var/const/access_valiant_science		= 704
/var/const/access_valiant_security		= 705

/datum/access/valiant
	id = access_valiant
	desc = "SEV Valiant Crew"
	region = ACCESS_REGION_NONE

/datum/access/valiant_command
	id = access_valiant_command
	desc = "SEV Valiant Command"
	region = ACCESS_REGION_NONE

/datum/access/valiant_engineering
	id = access_valiant_engineering
	desc = "SEV Valiant Engineering"
	region = ACCESS_REGION_NONE

/datum/access/valiant_medical
	id = access_valiant_medical
	desc = "SEV Valiant Medical"
	region = ACCESS_REGION_NONE

/datum/access/valiant_science
	id = access_valiant_science
	desc = "SEV Valiant Science"
	region = ACCESS_REGION_NONE

/datum/access/valiant_security
	id = access_valiant_security
	desc = "SEV Valiant Science"
	region = ACCESS_REGION_NONE

/obj/item/weapon/card/id/valiant
	military_branch = "Expeditionary Corps"


/obj/item/weapon/card/id/valiant/crew
	access = list(access_valiant)
	icon_state = "solgov"

/obj/item/weapon/card/id/valiant/pilot
	access = list(access_valiant, access_valiant_command)
	icon_state = "solgov"

/obj/item/weapon/card/id/valiant/engineer
	access = list(access_valiant, access_valiant_engineering)
	icon_state = "eng"

/obj/item/weapon/card/id/valiant/medical
	access = list(access_valiant, access_valiant_medical)
	icon_state = "med"

/obj/item/weapon/card/id/valiant/science
	access = list(access_valiant, access_valiant_science)
	icon_state = "sci"

/obj/item/weapon/card/id/valiant/security
	access = list(access_valiant, access_valiant_security)
	icon_state = "sec"

/obj/item/weapon/card/id/valiant/chief_engineer
	access = list(access_valiant, access_valiant_engineering, access_valiant_command)
	icon_state = "engGold"
/obj/item/weapon/card/id/valiant/chief_medical
	access = list(access_valiant, access_valiant_medical, access_valiant_command)
	icon_state = "medGold"

/obj/item/weapon/card/id/valiant/chief_security
	access = list(access_valiant, access_valiant_security, access_valiant_command)
	icon_state = "secGold"

/obj/item/weapon/card/id/valiant/science_officer
	access = list(access_valiant, access_valiant_science, access_valiant_command)
	icon_state = "sciGold"

/obj/item/weapon/card/id/valiant/executive_officer
	access = list(access_valiant, access_valiant_command, access_valiant_engineering, access_valiant_science, access_valiant_medical, access_valiant_security)
	icon_state = "silver"
	item_state = "silver_id"
/obj/item/weapon/card/id/valiant/captain
	access = list(access_valiant, access_valiant_command, access_valiant_engineering, access_valiant_science, access_valiant_medical, access_valiant_security)
	icon_state = "gold"
	item_state = "gold_id"

/obj/machinery/door/airlock/autoname/valiant
	req_one_access = null
	req_access = list(access_valiant)