Description
===========
ruby-sysaid is a Ruby-based wrapper for the SysAid SOAP API. It helps abstract
the nonsense that is dealing with SOAP on Ruby and provides a clean interface
for dealing with SysAid objects.

Usage
=====
service = SysAid.new("account", "username", "password")
ticket = service.find_by_id(45)
ticket = service.find_by_responsibility("somebody")
ticket.title = "Updated"
ticket.save
ticket.delete

Additional
==========
Please file any bugs at https://github.com/cthielen/ruby-sysaid/issues.

Written by Christopher Thielen for the University of California Davis.

Available under the MIT license.

Version 0.1
Last updated: Monday, June 11, 2012
