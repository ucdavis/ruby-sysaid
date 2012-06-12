#!/usr/bin/env ruby

#require 'sysaid'

# Fill this in with your SysAid instance's settings
#SysAid::Settings = {:endpoint => "", :accountId => "", :userName => "", :password => ""}

# Login can be explicit but if you forget, the gem will login for you
#SysAid::Login

# Fetch an arbitrary ticket, modify its title, and save it
#ticket = SysAid::Ticket.fetch_by_id(11550)
#ticket.title = "This is the new title"
#ticket.save

# Make a new ticket
#ticket = SysAid::Ticket.new
#ticket.title = "This is a new ticket"
#ticket.save

# Delete the ticket we just made
#ticket.delete

# Run a query to fetch a group of tickets
#tickets = SysAid::Ticket.fetch_by_responsibility("someone")

# Optional, but the SysAid API provides it
#SysAid::Logout

# see SOAP wiredumps (for debugging)
#service.wiredump_dev = STDERR

#if(false)
  # find all of lloyd's tickets (works)
  #sr = ApiServiceRequest.new
  #result = service.executeSelectQuery({:sessionId => session_id, :apiSysObj => sr, :condition => "responsibility = 'loginid' and status = 2"})

  # make a new ticket (works)
  #sr = ApiServiceRequest.new
  # set the necessary details
  #sr.submitUser = "cthielen"
  #sr.title = "This is a test ticket11111122"
  #sr.assignedTo = "cthielen"
  #sr.description = "This is the description of the ticket."
  #sr.urgency = 5
  #sr.status = 1
  #sr.category = "Other"
  #sr.subCategory = "Other"
  #sr.requestUser = "DSSIT"
  # save it
  #new_ticket_id = service.save({:sessionId => session_id, :apiSysObj => sr})
  #end

# and delete that ticket (works)
#result = service.delete({:sessionId => session_id, :apiSysObj => sr})
