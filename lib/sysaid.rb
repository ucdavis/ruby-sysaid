require 'savon'

# The main SysAid class
class SysAid
  @@logged_in = false
  @@server_settings = {}
  
  # Accessor for internal SysaidApiService object.
  # Used by SysAid::Ticket
  def self.client
    @@client
  end

  # Accessor for session ID returned by SysAid server.
  # Used by SysAid::Ticket
  def self.session_id
    @@session_id
  end
  
  # Accessor for server settings.
  # Used by SysAid::Ticket
  def self.server_settings
    @@server_settings
  end
  
  # Returns true if logged into SysAid server
  # Note: By design, logged_in? will try to log in if it isn't already
  #
  # Example:
  #   >> SysAid.logged_in?
  #   => true
  def self.logged_in?
    # Until official word comes from the company, we're going to login every time
    # to avoid a problem with undetected timeouts.
    #if @@logged_in == false
      login
    #end
    
    if @@logged_in
      return true
    else
      return false
    end
  end
  
  # self.login does not require credentials be passed every time.
  # SysAid sometimes times out the session and we can simply call 'login' again with the
  # saved credentials to get around the timeout.
  def self.login(account = nil, username = nil, password = nil, wsdl_uri = nil, debug = false)
    if account and username and password and wsdl_uri
      # Save server settings in case we need to log in again later
      @@server_settings = { :account => account, :username => username, :password => password, :wsdl_uri => wsdl_uri, :debug => debug }
    end
    
    @@client = Savon.client(wsdl: @@server_settings[:wsdl_uri], log: @@server_settings[:debug])
    
    # login
    unless @@server_settings[:account].nil?
      # Call login
      response = @@client.call(:login, message: { accountId: @@server_settings[:account], userName: @@server_settings[:username], password: @@server_settings[:password] })
      
      # Retrieve response
      @@session_id = response.to_hash[:login_response][:return]
      
      @@logged_in = true
    end
  end
end

require 'sysaid/project'
require 'sysaid/task'
require 'sysaid/ticket'
require 'sysaid/user'
