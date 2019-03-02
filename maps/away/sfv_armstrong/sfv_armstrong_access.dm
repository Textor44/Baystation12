/var/const/access_armstrong_general = 1000
/var/const/access_armstrong_bridge = 1001
/var/const/access_armstrong_intelligence = 1002
/var/const/access_armstrong_engineering = 1003
/var/const/access_armstrong_medical = 1004
/var/const/access_armstrong_ert = 1005

/datum/access/sfv_armstrong
	region = ACCESS_REGION_NONE

/datum/access/sfv_armstrong/general
	id = access_armstrong_general
	desc = "SFV Armstrong General Access"

/datum/access/sfv_armstrong/bridge
	id = access_armstrong_general
	desc = "SFV Armstrong Bridge Access"

/datum/access/sfv_armstrong/intelligence
	id = access_armstrong_general
	desc = "SFV Armstrong Intelligence Access"

/datum/access/sfv_armstrong/engineering
	id = access_armstrong_general
	desc = "SFV Armstrong Engineering Access"

/datum/access/sfv_armstrong/medical
	id = access_armstrong_general
	desc = "SFV Armstrong Medical Access"

/datum/access/sfv_armstrong/ert
	id = access_armstrong_general
	desc = "SFV Armstrong Response Team Access"

/obj/item/weapon/card/id/sfv_armstrong
	name = "identification card"
	desc = "An identification card issued to personnel aboard the SFV Armstrong."

/obj/item/weapon/card/id/sfv_armstrong/officer/
	item_state = "silver_id"
	color = "#ccecff"
	extra_details = list("goldstripe")

/obj/item/weapon/card/id/sfv_armstrong/officer/captain
	item_state = "gold_id"
	color = "#d4c780"
	extra_details = list("goldstripe")
	access = list(access_armstrong_bridge,
				  access_armstrong_engineering,
				  access_armstrong_ert,
				  access_armstrong_general,
				  access_armstrong_intelligence,
				  access_armstrong_medical
				  )

/obj/item/weapon/card/id/sfv_armstrong/officer/xo
	access = list(access_armstrong_bridge,
				  access_armstrong_engineering,
				  access_armstrong_ert,
				  access_armstrong_general,
				  access_armstrong_intelligence,
				  access_armstrong_medical
				  )

/obj/item/weapon/card/id/sfv_armstrong/officer/ce
	detail_color = COLOR_SUN
	access = list(access_armstrong_bridge,
				  access_armstrong_engineering,
				  access_armstrong_general
				  )

/obj/item/weapon/card/id/sfv_armstrong/officer/cmo
	detail_color = COLOR_PALE_BLUE_GRAY
	access = list(access_armstrong_bridge,
				  access_armstrong_medical,
				  access_armstrong_general
				  )

/obj/item/weapon/card/id/sfv_armstrong/officer/int
	detail_color = COLOR_BLACK
	access = list(access_armstrong_bridge,
				  access_armstrong_intelligence,
				  access_armstrong_general
				  )

/obj/item/weapon/card/id/sfv_armstrong/officer/ert
	detail_color = "#e00000"
	access = list(access_armstrong_bridge,
				  access_armstrong_ert,
				  access_armstrong_general
				  )

/obj/item/weapon/card/id/sfv_armstrong/enlisted
	color = "#ccecff"

/obj/item/weapon/card/id/sfv_armstrong/enlisted/engineering
	detail_color = COLOR_SUN
	access = list(access_armstrong_engineering,
				  access_armstrong_general
				  )

/obj/item/weapon/card/id/sfv_armstrong/enlisted/medical
	detail_color = COLOR_PALE_BLUE_GRAY
	access = list(access_armstrong_medical,
				  access_armstrong_general
				  )
/obj/item/weapon/card/id/sfv_armstrong/enlisted/engineering
	detail_color = COLOR_SUN
	access = list(access_armstrong_bridge,
				  access_armstrong_ert,
				  access_armstrong_general
				  )

/obj/item/weapon/card/id/sfv_armstrong/enlisted/int
	detail_color = COLOR_BLACK
	access = list(access_armstrong_intelligence,
				  access_armstrong_general
				  )

/obj/item/weapon/card/id/sfv_armstrong/enlisted/ert
	detail_color = "#e00000"
	access = list(access_armstrong_ert,
				  access_armstrong_general
				  )