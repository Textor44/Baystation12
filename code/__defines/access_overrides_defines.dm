//NOTICE: If you change ANY of the definitions in this file, you need to update access_override.tmpl
//or everything will die horribly.

//Deparment Codes
#define OVERRIDE_NONE 0
#define OVERRIDE_GENERAL 1
#define OVERRIDE_COMMAND 2
#define OVERRIDE_ENGINEERING 3
#define OVERRIDE_MEDICAL 4
#define OVERRIDE_RESEARCH 5
#define OVERRIDE_SECURITY 6
#define OVERRIDE_SERVICE 7
#define OVERRIDE_SUPPLY 8

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