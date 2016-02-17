== Wednesday, February 17, 2016
* Added catch for network timeout errors in SysAid.call()

== Monday, January 11, 2016
* Added SysAid::Ticket.find_by_query() for querying ApiServiceRequest items
  using the SOAP executeSelectQuery() method.

== Thursday, June 4, 2015
* New users default to YES for email_notifications

== Wednesday, July 2, 2014
* Refactored SOAP client calls to proxy through a single function in order to catch
  the various network and SOAP exceptions which may occur. They are transformed into
  a single SysAidException which any code using this gem should use.

== Monday, June 20, 2014
* Catch additional SOAP/network exceptions and re-issue as SysAidException
* Bumped version to 0.3.3

== Tuesday, February 11, 2014
* Added ability to set SysAid.server_settings instead of calling login (useful for Rails initializers)
* Any function which uses Savon/SOAP will call SysAid.ensure_logged_in, which currently asserts a re-login
* Bumped version to 0.3.2

== Monday, February 10, 2014
* Added SysAidException exception.
* Use the above SysAidException for two network errors which have occurred in production.
* Bumped version to 0.3.1

== Thursday, January 23, 2014
* Added SysAid::Activity
* Clear Ticket objects when .delete() is called
* Update Ticket ID when a new Ticket is created
* Updated LICENSE with updated dates, acknowledge copyright of others (see AUTHORS)
* Bumped version to 0.3.0

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
