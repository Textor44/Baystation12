/datum/chameleon/clothing_set
	var/set_name = "Default Set"
	var/set_description = "You should never see this."
	var/category = "Default Category"
	var/obj/item/clothing/head/head_slot = null
	var/obj/item/clothing/under/under_slot = null
	var/obj/item/clothing/suit/suit_slot = null
	var/obj/item/clothing/shoes/shoes_slot = null
	var/obj/item/clothing/gloves/gloves_slot = null
	var/list/under_accessories = list()
	var/list/suit_accessories = list()

/datum/chameleon/clothing_set/New()
	. = ..()

/datum/chameleon/clothing_set/uniform/ec/utility
	category = "EC Utility Uniforms"

/datum/chameleon/clothing_set/uniform/ec/utility/enlisted
	set_name = "EC Enlisted Utility Uniform"
	set_description = "A uniform for an enlisted member of the EC. This one lacks department colors."
	head_slot = /obj/item/clothing/head/soft/solgov/expedition
	under_slot = /obj/item/clothing/under/solgov/utility/expeditionary
	shoes_slot = /obj/item/clothing/shoes/dutyboots

/datum/chameleon/clothing_set/uniform/ec/utility/enlisted/command
	set_name = "EC Enlisted Command Utility Uniform"
	set_description = "A uniform for an enlisted member of the EC. This one has command colors."
	under_slot = /obj/item/clothing/under/solgov/utility/expeditionary/command

/datum/chameleon/clothing_set/uniform/ec/utility/enlisted/engineering
	set_name = "EC Enlisted Engineering Utility Uniform"
	set_description = "A uniform for an enlisted member of the EC. This one has engineering colors."
	under_slot = /obj/item/clothing/under/solgov/utility/expeditionary/engineering

/datum/chameleon/clothing_set/uniform/ec/utility/enlisted/exploration
	set_name = "EC Enlisted Exploration Utility Uniform"
	set_description = "A uniform for an enlisted member of the EC. This one has exploration colors."
	under_slot = /obj/item/clothing/under/solgov/utility/expeditionary/exploration

/datum/chameleon/clothing_set/uniform/ec/utility/enlisted/medical
	set_name = "EC Enlisted Medical Utility Uniform"
	set_description = "A uniform for an enlisted member of the EC. This one has medical colors."
	under_slot = /obj/item/clothing/under/solgov/utility/expeditionary/medical

/datum/chameleon/clothing_set/uniform/ec/utility/enlisted/research
	set_name = "EC Enlisted Research Utility Uniform"
	set_description = "A uniform for an enlisted member of the EC. This one has research colors."
	under_slot = /obj/item/clothing/under/solgov/utility/expeditionary/research

/datum/chameleon/clothing_set/uniform/ec/utility/enlisted/security
	set_name = "EC Enlisted Security Utility Uniform"
	set_description = "A uniform for an enlisted member of the EC. This one has security colors."
	under_slot = /obj/item/clothing/under/solgov/utility/expeditionary/security

/datum/chameleon/clothing_set/uniform/ec/utility/enlisted/service
	set_name = "EC Enlisted Service Utility Uniform"
	set_description = "A uniform for an enlisted member of the EC. This one has service colors."
	under_slot = /obj/item/clothing/under/solgov/utility/expeditionary/service

/datum/chameleon/clothing_set/uniform/ec/utility/enlisted/supply
	set_name = "EC Enlisted Supply Utility Uniform"
	set_description = "A uniform for an enlisted member of the EC. This one has supply colors."
	under_slot = /obj/item/clothing/under/solgov/utility/expeditionary/supply

/datum/chameleon/clothing_set/uniform/ec/utility/officer
	set_name = "EC Officer Utility Uniform"
	set_description = "A uniform for an officer of the EC. This one lacks department colors."
	head_slot = /obj/item/clothing/head/soft/solgov/expedition
	under_slot = /obj/item/clothing/under/solgov/utility/expeditionary/officer
	shoes_slot = /obj/item/clothing/shoes/dutyboots
	
/datum/chameleon/clothing_set/uniform/ec/utility/officer/command
	set_name = "EC Command Officer Utility Uniform"
	set_description = "A uniform for an officer of the EC. This one has command colors."
	under_slot = /obj/item/clothing/under/solgov/utility/expeditionary/officer

/datum/chameleon/clothing_set/uniform/ec/utility/officer/engineering
	set_name = "EC Engineering Officer Utility Uniform"
	set_description = "A uniform for an officer of the EC. This one has engineering colors."
	under_slot = /obj/item/clothing/under/solgov/utility/expeditionary/officer/engineering

/datum/chameleon/clothing_set/uniform/ec/utility/officer/medical
	set_name = "EC Medical Officer Utility Uniform"
	set_description = "A uniform for an officer of the EC. This one has medical colors."
	under_slot = /obj/item/clothing/under/solgov/utility/expeditionary/officer/medical

/datum/chameleon/clothing_set/uniform/ec/utility/officer/exploration
	set_name = "EC Exploration Officer Utility Uniform"
	set_description = "A uniform for an officer of the EC. This one has exploration colors."
	under_slot = /obj/item/clothing/under/solgov/utility/expeditionary/officer

/datum/chameleon/clothing_set/uniform/ec/utility/officer/research
	set_name = "EC Research Officer Utility Uniform"
	set_description = "A uniform for an officer of the EC. This one has research colors."
	under_slot = /obj/item/clothing/under/solgov/utility/expeditionary/officer/research

/datum/chameleon/clothing_set/uniform/ec/utility/officer/security
	set_name = "EC Security Officer Utility Uniform"
	set_description = "A uniform for an officer of the EC. This one has security colors."	
	under_slot = /obj/item/clothing/under/solgov/utility/expeditionary/officer/security

/datum/chameleon/clothing_set/uniform/ec/utility/officer/service
	set_name = "EC Service Officer Utility Uniform"
	set_description = "A uniform for an officer of the EC. This one has service colors."	
	under_slot = /obj/item/clothing/under/solgov/utility/expeditionary/officer/service

/datum/chameleon/clothing_set/uniform/ec/utility/officer/supply
	set_name = "EC Supply Officer Utility Uniform"
	set_description = "A uniform for an officer of the EC. This one has supply colors."	
	under_slot = /obj/item/clothing/under/solgov/utility/expeditionary/officer/supply

/datum/chameleon/clothing_set/uniform/ec/service/enlisted
	set_name = "EC Enlisted Service Uniform"
	set_description = "A service uniform for an enlisted member of the EC. The jacket lacks department colors"	
	under_slot = /obj/item/clothing/under/solgov/service/expeditionary
	shoes_slot = /obj/item/clothing/shoes/laceup
	head_slot = /obj/item/clothing/head/solgov/service/expedition
	suit_slot = /obj/item/clothing/suit/storage/solgov/service/expeditionary

/datum/chameleon/clothing_set/uniform/ec/service/enlisted/skirt
	set_name = "EC Enlisted Service Uniform (With Skirt)"
	set_description "A service uniform for an enlisted member of the EC, with a skirt. The jacket lacks department colors."
	under_slot = /obj/item/clothing/under/solgov/service/expeditionary/skirt

/datum/chameleon/clothing_set/uniform/ec/service/enlisted/command
	set_name = "EC Enlisted Command Service Uniform"
	set_description = "A service uniform for an enlisted member of the EC. The jacket has command colors"	
	suit_slot = /obj/item/clothing/suit/storage/solgov/service/expeditionary/command

/datum/chameleon/clothing_set/uniform/ec/service/enlisted/command/skirt
	set_name = "EC Enlisted Command Service Uniform (With Skirt)"
	set_description "A service uniform for an enlisted member of the EC, with a skirt. The jacket has command colors."
	under_slot = /obj/item/clothing/under/solgov/service/expeditionary/skirt/command

/datum/chameleon/clothing_set/uniform/ec/service/enlisted/engineering
	set_name = "EC Enlisted Engineering Service Uniform"
	set_description = "A service uniform for an enlisted member of the EC. The jacket has engineering colors"
	suit_slot = /obj/item/clothing/suit/storage/solgov/service/expeditionary/engineering

/datum/chameleon/clothing_set/uniform/ec/service/enlisted/engineering/skirt
	set_name = "EC Enlisted Engineering Service Uniform (With Skirt)"
	set_description "A service uniform for an enlisted member of the EC, with a skirt. The jacket has engineering colors."
	under_slot = /obj/item/clothing/under/solgov/service/expeditionary/skirt/engineering

/datum/chameleon/clothing_set/uniform/ec/service/enlisted/medical
	set_name = "EC Enlisted Medical Service Uniform"
	set_description = "A service uniform for an enlisted member of the EC. The jacket has medical colors"
	suit_slot = /obj/item/clothing/suit/storage/solgov/service/expeditionary/medical

/datum/chameleon/clothing_set/uniform/ec/service/enlisted/medical/skirt
	set_name = "EC Enlisted Medical Service Uniform (With Skirt)"
	set_description "A service uniform for an enlisted member of the EC, with a skirt. The jacket has medical colors."
	under_slot = /obj/item/clothing/under/solgov/service/expeditionary/skirt/medical

/datum/chameleon/clothing_set/uniform/ec/service/enlisted/research
	set_name = "EC Enlisted Research Service Uniform"
	set_description = "A service uniform for an enlisted member of the EC. The jacket has research colors"
	suit_slot = /obj/item/clothing/suit/storage/solgov/service/expeditionary/research

/datum/chameleon/clothing_set/uniform/ec/service/enlisted/research/skirt
	set_name = "EC Enlisted Research Service Uniform (With Skirt)"
	set_description "A service uniform for an enlisted member of the EC, with a skirt. The jacket has research colors."
	under_slot = /obj/item/clothing/under/solgov/service/expeditionary/skirt/research

/datum/chameleon/clothing_set/uniform/ec/service/enlisted/security
	set_name = "EC Enlisted Security Service Uniform"
	set_description = "A service uniform for an enlisted member of the EC. The jacket has security colors"	
	suit_slot = /obj/item/clothing/suit/storage/solgov/service/expeditionary/security

/datum/chameleon/clothing_set/uniform/ec/service/enlisted/security/skirt
	set_name = "EC Enlisted Security Service Uniform (With Skirt)"
	set_description "A service uniform for an enlisted member of the EC, with a skirt. The jacket has security colors."
	under_slot = /obj/item/clothing/under/solgov/service/expeditionary/skirt/security

/datum/chameleon/clothing_set/uniform/ec/service/enlisted/service
	set_name = "EC Enlisted Service Department Service Uniform"
	set_description = "A service uniform for an enlisted member of the EC. The jacket has service colors"	
	suit_slot = /obj/item/clothing/suit/storage/solgov/service/expeditionary/service

/datum/chameleon/clothing_set/uniform/ec/service/enlisted/service/skirt
	set_name = "EC Enlisted Service Department Service Uniform (With Skirt)"
	set_description "A service uniform for an enlisted member of the EC, with a skirt. The jacket has service colors."
	under_slot = /obj/item/clothing/under/solgov/service/expeditionary/skirt/service

/datum/chameleon/clothing_set/uniform/ec/service/enlisted/supply
	set_name = "EC Enlisted Supply Service Uniform"
	set_description = "A service uniform for an enlisted member of the EC. The jacket has supply colors"	
	suit_slot = /obj/item/clothing/suit/storage/solgov/service/expeditionary/supply

/datum/chameleon/clothing_set/uniform/ec/service/enlisted/supply/skirt
	set_name = "EC Enlisted Supply Service Uniform (With Skirt)"
	set_description "A service uniform for an enlisted member of the EC, with a skirt. The jacket has supply colors."
	under_slot = /obj/item/clothing/under/solgov/service/expeditionary/skirt/supply

/datum/chameleon/clothing_set/uniform/ec/service/officer

/datum/chameleon/clothing_set/uniform/ec/service/officer/skirt

/datum/chameleon/clothing_set/uniform/ec/service/officer/command

/datum/chameleon/clothing_set/uniform/ec/service/officer/command/skirt

/datum/chameleon/clothing_set/uniform/ec/service/officer/engineering
/datum/chameleon/clothing_set/uniform/ec/service/officer/medical
/datum/chameleon/clothing_set/uniform/ec/service/officer/research
/datum/chameleon/clothing_set/uniform/ec/service/officer/security
/datum/chameleon/clothing_set/uniform/ec/service/officer/service
/datum/chameleon/clothing_set/uniform/ec/service/officer/supply
/datum/chameleon/clothing_set/uniform/ec/service/officer/flag

/datum/chameleon/clothing_set/uniform/ec/dress/enlisted
/datum/chameleon/clothing_set/uniform/ec/dress/enlisted/command
/datum/chameleon/clothing_set/uniform/ec/dress/enlisted/engineering
/datum/chameleon/clothing_set/uniform/ec/dress/enlisted/medical
/datum/chameleon/clothing_set/uniform/ec/dress/enlisted/research
/datum/chameleon/clothing_set/uniform/ec/dress/enlisted/security
/datum/chameleon/clothing_set/uniform/ec/dress/enlisted/service
/datum/chameleon/clothing_set/uniform/ec/dress/enlisted/supply

/datum/chameleon/clothing_set/uniform/ec/dress/officer
/datum/chameleon/clothing_set/uniform/ec/dress/officer/command
/datum/chameleon/clothing_set/uniform/ec/dress/officer/engineering
/datum/chameleon/clothing_set/uniform/ec/dress/officer/medical
/datum/chameleon/clothing_set/uniform/ec/dress/officer/research
/datum/chameleon/clothing_set/uniform/ec/dress/officer/security
/datum/chameleon/clothing_set/uniform/ec/dress/officer/service
/datum/chameleon/clothing_set/uniform/ec/dress/officer/supply
/datum/chameleon/clothing_set/uniform/ec/dress/officer/flag

/datum/chameleon/clothing_set/uniform/fleet/utility/enlisted
/datum/chameleon/clothing_set/uniform/fleet/utility/enlisted/command
/datum/chameleon/clothing_set/uniform/fleet/utility/enlisted/engineering
/datum/chameleon/clothing_set/uniform/fleet/utility/enlisted/medical
/datum/chameleon/clothing_set/uniform/fleet/utility/enlisted/research
/datum/chameleon/clothing_set/uniform/fleet/utility/enlisted/security
/datum/chameleon/clothing_set/uniform/fleet/utility/enlisted/service
/datum/chameleon/clothing_set/uniform/fleet/utility/enlisted/supply

/datum/chameleon/clothing_set/uniform/fleet/utility/officer
/datum/chameleon/clothing_set/uniform/fleet/utility/officer/command
/datum/chameleon/clothing_set/uniform/fleet/utility/officer/engineering
/datum/chameleon/clothing_set/uniform/fleet/utility/officer/medical
/datum/chameleon/clothing_set/uniform/fleet/utility/officer/research
/datum/chameleon/clothing_set/uniform/fleet/utility/officer/security
/datum/chameleon/clothing_set/uniform/fleet/utility/officer/service
/datum/chameleon/clothing_set/uniform/fleet/utility/officer/supply
/datum/chameleon/clothing_set/uniform/fleet/utility/officer/flag

/datum/chameleon/clothing_set/uniform/fleet/service/enlisted
/datum/chameleon/clothing_set/uniform/fleet/service/enlisted/command
/datum/chameleon/clothing_set/uniform/fleet/service/enlisted/engineering
/datum/chameleon/clothing_set/uniform/fleet/service/enlisted/medical
/datum/chameleon/clothing_set/uniform/fleet/service/enlisted/research
/datum/chameleon/clothing_set/uniform/fleet/service/enlisted/security
/datum/chameleon/clothing_set/uniform/fleet/service/enlisted/service
/datum/chameleon/clothing_set/uniform/fleet/service/enlisted/supply

/datum/chameleon/clothing_set/uniform/fleet/service/officer
/datum/chameleon/clothing_set/uniform/fleet/service/officer/command
/datum/chameleon/clothing_set/uniform/fleet/service/officer/engineering
/datum/chameleon/clothing_set/uniform/fleet/service/officer/medical
/datum/chameleon/clothing_set/uniform/fleet/service/officer/research
/datum/chameleon/clothing_set/uniform/fleet/service/officer/security
/datum/chameleon/clothing_set/uniform/fleet/service/officer/service
/datum/chameleon/clothing_set/uniform/fleet/service/officer/supply
/datum/chameleon/clothing_set/uniform/fleet/service/officer/flag

/datum/chameleon/clothing_set/uniform/fleet/dress/enlisted
/datum/chameleon/clothing_set/uniform/fleet/dress/enlisted/command
/datum/chameleon/clothing_set/uniform/fleet/dress/enlisted/engineering
/datum/chameleon/clothing_set/uniform/fleet/dress/enlisted/medical
/datum/chameleon/clothing_set/uniform/fleet/dress/enlisted/research
/datum/chameleon/clothing_set/uniform/fleet/dress/enlisted/security
/datum/chameleon/clothing_set/uniform/fleet/dress/enlisted/service
/datum/chameleon/clothing_set/uniform/fleet/dress/enlisted/supply

/datum/chameleon/clothing_set/uniform/fleet/dress/officer
/datum/chameleon/clothing_set/uniform/fleet/dress/officer/command
/datum/chameleon/clothing_set/uniform/fleet/dress/officer/engineering
/datum/chameleon/clothing_set/uniform/fleet/dress/officer/medical
/datum/chameleon/clothing_set/uniform/fleet/dress/officer/research
/datum/chameleon/clothing_set/uniform/fleet/dress/officer/security
/datum/chameleon/clothing_set/uniform/fleet/dress/officer/service
/datum/chameleon/clothing_set/uniform/fleet/dress/officer/supply
/datum/chameleon/clothing_set/uniform/fleet/dress/officer/flag