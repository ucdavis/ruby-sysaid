require 'savon'

# The main SysAid class
class SysAid
  @@logged_in = false
  @@server_settings = {}
  
  # # Implements find_by_* methods, e.g. find_by_id, find_by_responsibility, etc.
  # def self.method_missing(method, *args, &block)
  #   if method.to_s =~ /^find_by_(.+)$/
  #     run_find_by_method($1, *args, &block)
  #   else
  #     super
  #   end
  # end

  # # Find tickets by ID, responsibility, status, etc.
  # # Note: run_find_by_method is called from self.method_missing
  # #
  # # Example:
  # #   >> SysAid.find_by_id(34)
  # #   => hola mundo
  # #
  # # Arguments:
  # #   argument: (String or Integer)
  # def self.run_find_by_method(attrs, *args, &block)
  #   # Make a key/value hash of attributes
  #   attrs = attrs.split('_and_')
  #   attrs_with_args = [attrs, args].transpose
  #   conditions = Hash[attrs_with_args]
  #   
  #   if self.logged_in? == false
  #     self.login
  #   end
  # 
  #   sr = ApiServiceRequest.new
  #   if conditions.keys[0] == "id"
  #     # ID requires we use loadById, not executeSelectQuery
  #     result = @@service.loadByStringId({:sessionId => @@session_id, :apiSysObj => sr, :id => conditions.values[0]})
  #   else
  #     result = @@service.executeSelectQuery({:sessionId => @@session_id, :apiSysObj => sr, :condition => "#{conditions.keys[0]} = '#{conditions.values[0]}'"})
  #   end
  #   
  #   if result.instance_variables.include?(:@v_return)
  #     return SysAid::Ticket.new(result.v_return)
  #   else
  #     return nil # ticket not found
  #   end
  # end
  # 
  # def self.respond_to?(method)
  #   if method.to_s =~ /^find_by_.*$/
  #     true
  #   else
  #     super
  #   end
  # end
  
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
  
  # Returns true if logged into SysAid server
  # Note: By design, logged_in? will try to log in if it isn't already
  #
  # Example:
  #   >> SysAid.logged_in?
  #   => true
  def self.logged_in?
    # Until official word comes from the company, we're going to login every time
    # to avoid a problem with undetected timeouts
    
    #if @@logged_in == false
      login
    #end
    
    if @@logged_in
      return true
    else
      return false
    end
  end
  
  def self.server_settings
    @@server_settings
  end
  
  def self.server_settings=(server_settings)
    @@server_settings = server_settings
  end
  
  private

  def self.login
    @@client = Savon.client(wsdl: @@server_settings[:wsdl])

    # see SOAP wiredumps (for debugging)
    unless @@server_settings[:debug].nil?
      #@@service.wiredump_dev = @@server_settings[:debug]
    end

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

require 'sysaid/ticket'
require 'sysaid/user'
