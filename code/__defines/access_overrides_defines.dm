//NOTICE: If you change ANY of the definitions in this file, you need to update access_override.tmpl
//or everything will die horribly.

//Deparment Codes
#define OVERRIDE_NONE "None"
#define OVERRIDE_GENERAL "All"
#define OVERRIDE_COMMAND "Command"
#define OVERRIDE_ENGINEERING "Engineering"
#define OVERRIDE_MEDICAL "Medical"
#define OVERRIDE_RESEARCH "Research"
#define OVERRIDE_SECURITY "Security"
#define OVERRIDE_SERVICE "Service"
#define OVERRIDE_SUPPLY "Supply"

//Override Grant Definition flags
#define OVERRIDE_GRANTED_NONE 0
#define OVERRIDE_GRANTED_ENGINEERING 1
#define OVERRIDE_GRANTED_MEDICAL 2
#define OVERRIDE_GRANTED_SECURITY 4
#define OVERRIDE_GRANTED_ALL 8

//Log Types
#define OVERRIDE_LOG_REVOKE 0
#define OVERRIDE_LOG_GRANT 1
#define OVERRIDE_LOG_ACCESS 2
#define OVERRIDE_LOG_ATTEMPT 3