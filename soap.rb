#!/usr/bin/env ruby
load 'SysaidApiServiceServiceDriver.rb'
require 'pp'

endpoint_url = ARGV.shift
obj = SysaidApiService.new(endpoint_url)

# run ruby with -d to see SOAP wiredumps.
obj.wiredump_dev = STDERR if $DEBUG

# login
result = service.login({:accountId => "", :userName => "", :password => ""})
session_id = result.v_return

# load a ticket by ID
result = service.loadById({})

