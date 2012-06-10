#!/usr/bin/env ruby
#load 'SysaidApiServiceServiceDriver.rb'

require 'rubygems'
require 'nokogiri'
#gem 'soap4r'
load 'SysaidApiServiceServiceDriver.rb'
require 'xsd/xmlparser/nokogiri'

# create a sysaid service instance
service = SysaidApiService.new

# see SOAP wiredumps (for debugging)
service.wiredump_dev = STDERR

# login (works)
result = service.login({:accountId => "", :userName => "", :password => ""})
session_id = result.v_return

if(false)
  # find all of lloyd's tickets (works)
  sr = ApiServiceRequest.new
  result = service.executeSelectQuery({:sessionId => session_id, :apiSysObj => sr, :condition => "responsibility = 'loginid' and status = 2"})

  # make a new ticket (works)
  sr = ApiServiceRequest.new
  # set the necessary details
  sr.submitUser = "cthielen"
  sr.title = "This is a test ticket11111122"
  sr.assignedTo = "cthielen"
  sr.description = "This is the description of the ticket."
  sr.urgency = 5
  sr.status = 1
  sr.category = "Other"
  sr.subCategory = "Other"
  sr.requestUser = "DSSIT"
  # save it
  new_ticket_id = service.save({:sessionId => session_id, :apiSysObj => sr})
end

# load a ticket by ID (works)
sr = ApiServiceRequest.new
result = service.loadByStringId({:sessionId => session_id, :apiSysObj => sr, :id => '11550'})

# modify the ticket's details (works)
sr = result.v_return
sr.title = "No it is not222222"
#sr.customFields = nil
# ... and save it back
result = service.save({:sessionId => session_id, :apiSysObj => sr})

# and delete that ticket (works)
#result = service.delete({:sessionId => session_id, :apiSysObj => sr})
