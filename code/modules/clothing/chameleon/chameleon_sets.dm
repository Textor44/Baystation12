/datum/chameleon/set
	var/set_name
	var/obj/item/clothing/head/head_slot
	var/obj/item/clothing/under/under_slot
	var/obj/item/clothing/suit/suit_slot
	var/obj/item/clothing/shoes/shoes_slot
	var/obj/item/clothing/gloves/gloves_slot
	var/list/under_accessories
	var/list/suit_accessories

/datum/chameleon/set/New()
	. = ..()

/datum/chameleon/set/uniform/ec/utility/enlisted
	head_slot = /obj/item/clothing/head/

/datum/chameleon/set/uniform/ec/utility/enlisted/command
/datum/chameleon/set/uniform/ec/utility/enlisted/engineering
/datum/chameleon/set/uniform/ec/utility/enlisted/medical
/datum/chameleon/set/uniform/ec/utility/enlisted/research
/datum/chameleon/set/uniform/ec/utility/enlisted/security
/datum/chameleon/set/uniform/ec/utility/enlisted/service
/datum/chameleon/set/uniform/ec/utility/enlisted/supply

/datum/chameleon/set/uniform/ec/utility/officer
/datum/chameleon/set/uniform/ec/utility/officer/command
/datum/chameleon/set/uniform/ec/utility/officer/engineering
/datum/chameleon/set/uniform/ec/utility/officer/medical
/datum/chameleon/set/uniform/ec/utility/officer/research
/datum/chameleon/set/uniform/ec/utility/officer/security
/datum/chameleon/set/uniform/ec/utility/officer/service
/datum/chameleon/set/uniform/ec/utility/officer/supply
/datum/chameleon/set/uniform/ec/utility/officer/flag

/datum/chameleon/set/uniform/ec/service/enlisted
/datum/chameleon/set/uniform/ec/service/enlisted/command
/datum/chameleon/set/uniform/ec/service/enlisted/engineering
/datum/chameleon/set/uniform/ec/service/enlisted/medical
/datum/chameleon/set/uniform/ec/service/enlisted/research
/datum/chameleon/set/uniform/ec/service/enlisted/security
/datum/chameleon/set/uniform/ec/service/enlisted/service
/datum/chameleon/set/uniform/ec/service/enlisted/supply

/datum/chameleon/set/uniform/ec/service/officer
/datum/chameleon/set/uniform/ec/service/officer/command
/datum/chameleon/set/uniform/ec/service/officer/engineering
/datum/chameleon/set/uniform/ec/service/officer/medical
/datum/chameleon/set/uniform/ec/service/officer/research
/datum/chameleon/set/uniform/ec/service/officer/security
/datum/chameleon/set/uniform/ec/service/officer/service
/datum/chameleon/set/uniform/ec/service/officer/supply
/datum/chameleon/set/uniform/ec/service/officer/flag

/datum/chameleon/set/uniform/ec/dress/enlisted
/datum/chameleon/set/uniform/ec/dress/enlisted/command
/datum/chameleon/set/uniform/ec/dress/enlisted/engineering
/datum/chameleon/set/uniform/ec/dress/enlisted/medical
/datum/chameleon/set/uniform/ec/dress/enlisted/research
/datum/chameleon/set/uniform/ec/dress/enlisted/security
/datum/chameleon/set/uniform/ec/dress/enlisted/service
/datum/chameleon/set/uniform/ec/dress/enlisted/supply

/datum/chameleon/set/uniform/ec/dress/officer
/datum/chameleon/set/uniform/ec/dress/officer/command
/datum/chameleon/set/uniform/ec/dress/officer/engineering
/datum/chameleon/set/uniform/ec/dress/officer/medical
/datum/chameleon/set/uniform/ec/dress/officer/research
/datum/chameleon/set/uniform/ec/dress/officer/security
/datum/chameleon/set/uniform/ec/dress/officer/service
/datum/chameleon/set/uniform/ec/dress/officer/supply
/datum/chameleon/set/uniform/ec/dress/officer/flag

/datum/chameleon/set/uniform/fleet/utility/enlisted
/datum/chameleon/set/uniform/fleet/utility/enlisted/command
/datum/chameleon/set/uniform/fleet/utility/enlisted/engineering
/datum/chameleon/set/uniform/fleet/utility/enlisted/medical
/datum/chameleon/set/uniform/fleet/utility/enlisted/research
/datum/chameleon/set/uniform/fleet/utility/enlisted/security
/datum/chameleon/set/uniform/fleet/utility/enlisted/service
/datum/chameleon/set/uniform/fleet/utility/enlisted/supply

/datum/chameleon/set/uniform/fleet/utility/officer
/datum/chameleon/set/uniform/fleet/utility/officer/command
/datum/chameleon/set/uniform/fleet/utility/officer/engineering
/datum/chameleon/set/uniform/fleet/utility/officer/medical
/datum/chameleon/set/uniform/fleet/utility/officer/research
/datum/chameleon/set/uniform/fleet/utility/officer/security
/datum/chameleon/set/uniform/fleet/utility/officer/service
/datum/chameleon/set/uniform/fleet/utility/officer/supply
/datum/chameleon/set/uniform/fleet/utility/officer/flag

/datum/chameleon/set/uniform/fleet/service/enlisted
/datum/chameleon/set/uniform/fleet/service/enlisted/command
/datum/chameleon/set/uniform/fleet/service/enlisted/engineering
/datum/chameleon/set/uniform/fleet/service/enlisted/medical
/datum/chameleon/set/uniform/fleet/service/enlisted/research
/datum/chameleon/set/uniform/fleet/service/enlisted/security
/datum/chameleon/set/uniform/fleet/service/enlisted/service
/datum/chameleon/set/uniform/fleet/service/enlisted/supply

/datum/chameleon/set/uniform/fleet/service/officer
/datum/chameleon/set/uniform/fleet/service/officer/command
/datum/chameleon/set/uniform/fleet/service/officer/engineering
/datum/chameleon/set/uniform/fleet/service/officer/medical
/datum/chameleon/set/uniform/fleet/service/officer/research
/datum/chameleon/set/uniform/fleet/service/officer/security
/datum/chameleon/set/uniform/fleet/service/officer/service
/datum/chameleon/set/uniform/fleet/service/officer/supply
/datum/chameleon/set/uniform/fleet/service/officer/flag

/datum/chameleon/set/uniform/fleet/dress/enlisted
/datum/chameleon/set/uniform/fleet/dress/enlisted/command
/datum/chameleon/set/uniform/fleet/dress/enlisted/engineering
/datum/chameleon/set/uniform/fleet/dress/enlisted/medical
/datum/chameleon/set/uniform/fleet/dress/enlisted/research
/datum/chameleon/set/uniform/fleet/dress/enlisted/security
/datum/chameleon/set/uniform/fleet/dress/enlisted/service
/datum/chameleon/set/uniform/fleet/dress/enlisted/supply

/datum/chameleon/set/uniform/fleet/dress/officer
/datum/chameleon/set/uniform/fleet/dress/officer/command
/datum/chameleon/set/uniform/fleet/dress/officer/engineering
/datum/chameleon/set/uniform/fleet/dress/officer/medical
/datum/chameleon/set/uniform/fleet/dress/officer/research
/datum/chameleon/set/uniform/fleet/dress/officer/security
/datum/chameleon/set/uniform/fleet/dress/officer/service
/datum/chameleon/set/uniform/fleet/dress/officer/supply
/datum/chameleon/set/uniform/fleet/dress/officer/flag