GLOBAL_VAR_INIT(dnos_next_id_number, 1)

/datum/dnos/account
	var/id
	var/first_name
	var/last_name
	var/account_number
	var/password
	var/enabled
	var/list/access = list()

/datum/dnos/account/New(var/_first_name, var/_last_name, var/_account_number, var/_password = null, var/_enabled = 1, var/list/_access)
	id = GLOB.dnos_next_id_number++
	first_name = _first_name
	last_name = _last_name
	account_number = _account_number
	password = _password
	enabled = _enabled
	access = _access