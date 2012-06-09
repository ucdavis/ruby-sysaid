#!/usr/bin/env ruby
require 'SysaidApiServiceServiceDriver.rb'

endpoint_url = ARGV.shift
obj = SysaidApiService.new(endpoint_url)

# run ruby with -d to see SOAP wiredumps.
obj.wiredump_dev = STDERR if $DEBUG

# SYNOPSIS
#   save(parameters)
#
# ARGS
#   parameters      Save - {http://api.ilient.com/}save
#
# RETURNS
#   parameters      SaveResponse - {http://api.ilient.com/}saveResponse
#
parameters = nil
puts obj.save(parameters)

# SYNOPSIS
#   delete(parameters)
#
# ARGS
#   parameters      Delete - {http://api.ilient.com/}delete
#
# RETURNS
#   parameters      DeleteResponse - {http://api.ilient.com/}deleteResponse
#
parameters = nil
puts obj.delete(parameters)

# SYNOPSIS
#   login(parameters)
#
# ARGS
#   parameters      Login - {http://api.ilient.com/}login
#
# RETURNS
#   parameters      LoginResponse - {http://api.ilient.com/}loginResponse
#
parameters = nil
puts obj.login(parameters)

# SYNOPSIS
#   logout(parameters)
#
# ARGS
#   parameters      Logout - {http://api.ilient.com/}logout
#
# RETURNS
#   parameters      LogoutResponse - {http://api.ilient.com/}logoutResponse
#
parameters = nil
puts obj.logout(parameters)

# SYNOPSIS
#   loadById(parameters)
#
# ARGS
#   parameters      LoadById - {http://api.ilient.com/}loadById
#
# RETURNS
#   parameters      LoadByIdResponse - {http://api.ilient.com/}loadByIdResponse
#
parameters = nil
puts obj.loadById(parameters)

# SYNOPSIS
#   executeApiSysAidObjectAction(parameters)
#
# ARGS
#   parameters      ExecuteApiSysAidObjectAction - {http://api.ilient.com/}executeApiSysAidObjectAction
#
# RETURNS
#   parameters      ExecuteApiSysAidObjectActionResponse - {http://api.ilient.com/}executeApiSysAidObjectActionResponse
#
parameters = nil
puts obj.executeApiSysAidObjectAction(parameters)

# SYNOPSIS
#   executeSelectQuery(parameters)
#
# ARGS
#   parameters      ExecuteSelectQuery - {http://api.ilient.com/}executeSelectQuery
#
# RETURNS
#   parameters      ExecuteSelectQueryResponse - {http://api.ilient.com/}executeSelectQueryResponse
#
parameters = nil
puts obj.executeSelectQuery(parameters)

# SYNOPSIS
#   getApiSysAidObjectActions(parameters)
#
# ARGS
#   parameters      GetApiSysAidObjectActions - {http://api.ilient.com/}getApiSysAidObjectActions
#
# RETURNS
#   parameters      GetApiSysAidObjectActionsResponse - {http://api.ilient.com/}getApiSysAidObjectActionsResponse
#
parameters = nil
puts obj.getApiSysAidObjectActions(parameters)

# SYNOPSIS
#   loadByStringId(parameters)
#
# ARGS
#   parameters      LoadByStringId - {http://api.ilient.com/}loadByStringId
#
# RETURNS
#   parameters      LoadByStringIdResponse - {http://api.ilient.com/}loadByStringIdResponse
#
parameters = nil
puts obj.loadByStringId(parameters)


