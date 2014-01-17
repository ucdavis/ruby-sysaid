== Friday, January 17, 2014
* Added SysAid::Ticket.add_note() mimicking the SysAid web client behavior
* Added SysAid.server_settings accessor

== Tuesday, December 3, 2013
* Created two sample methods for using executeSelectQuery SOAP action to return arrays of object IDs.
** SysAid::Task.find_by_project_id
** SysAid::Project.find_by_query
 
== Monday, December 2, 2013
* Adding ability to manage projects

== Thursday, August 29, 2013
* Fixed bug which would cause loaded attributes of users and tickets to be passed back to server incorrectly due to xmlNamingScheme -> xml_naming_scheme translations in SavonRB
