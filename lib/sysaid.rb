class SysAid
  def initialize(account, username, password)
    @account = account
    @username = username
    @password = password
    
    login
  end
  
  private
  def login
    @service = SysaidApiService.new

    # see SOAP wiredumps (for debugging)
    @service.wiredump_dev = STDERR

    # login
    result = @service.login({:accountId => @account, :userName => @username, :password => @password})
    @session_id = result.v_return
  end
end

require 'sysaid/driver/SysaidApiServiceServiceDriver'
require 'sysaid/ticket'
