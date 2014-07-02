require 'savon'

# Custom error class used for throwing exceptions to this gem's user
class SysAidException < StandardError
end

# The main SysAid class
class SysAid
  @@logged_in = false
  @@server_settings = { account: nil, username: nil, password: nil, wsdl_uri: nil, debug: false }

  # Accessor for internal SysaidApiService object.
  # Used by SysAid::Ticket
  def self.client
    @@client
  end

  # Proxy for @@client.call but allows us to catch the various exceptions which may happen
  # due to network errors, SOAP errors, etc., which otherwise would have to be caught in
  # many different places.
  def self.call(method, message)
    begin
      return @@client.call(method, message)
    rescue SocketError => e
        raise SysAidException, "Unable to fetch user information from SysAid server: #{e.message}"
    rescue Errno::EHOSTUNREACH => e
      raise SysAidException, "Unable to save user due to server being unreachable: #{e.message}"
    rescue Savon::SOAPFault => e
      raise SysAidException, "Unable to save user due to SOAP communications error: #{e.message}"
    end
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
  def self.server_settings=(server_settings)
    @@server_settings = server_settings
    # If they don't pass in debug, set it to false to maintain default settings
    @@server_settings[:debug] = false if server_settings[:debug].nil?
  end

  # The SysAid API isn't clear on what creates an API timeout. It's possible to login
  # and make SOAP calls many minutes later but the API _seems_ to timeout at some point.
  # With the exception of the added delay, there's no harm in simply logging in over and
  # over with each call, so we do this in ensure_logged_in until we can get a better answer
  # on what we can do with the SysAid API to _actually_ ensure we're logged in.
  def self.ensure_logged_in
    self.login unless self.logged_in?
  end

  # Returns true if logged into SysAid server
  # Note: By design, logged_in? will try to log in if it isn't already
  #
  # Example:
  #   >> SysAid.logged_in?
  #   => true
  def self.logged_in?
    puts "SysAid.logged_in? called" if @@server_settings[:debug]

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
  def self.login(account = nil, username = nil, password = nil, wsdl_uri = nil, debug = nil)
    puts "SysAid.login" if @@server_settings[:debug]

    if account and username and password and wsdl_uri
      # Save server settings in case we need to log in again later
      @@server_settings = { :account => account, :username => username, :password => password, :wsdl_uri => wsdl_uri }
      # 'debug' parameter cannot default to false else it would override default, so use nil and check
      @@server_settings[:debug] = debug if debug != nil
    end

    begin
      @@client = Savon.client(wsdl: @@server_settings[:wsdl_uri], log: @@server_settings[:debug])

      # login
      unless @@server_settings[:account].nil?
        # Call login
        response = self.call(:login, message: { accountId: @@server_settings[:account], userName: @@server_settings[:username], password: @@server_settings[:password] })

        # Retrieve response
        @@session_id = response.to_hash[:login_response][:return]

        @@logged_in = true
      end
    rescue Net::ReadTimeout => e
      # This isn't the API timeout, this is a normal socket timeout error.
      raise SysAidException, "Unable to log into SysAid server: #{e.message}"
    end
  end
end

require 'sysaid/activity'
require 'sysaid/project'
require 'sysaid/task'
require 'sysaid/ticket'
require 'sysaid/user'
