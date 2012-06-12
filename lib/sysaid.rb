class SysAid
  @@logged_in = false
  @@server_settings = {}
  
  # Implements find_by_* methods, e.g. find_by_id, find_by_responsibility, etc.
  def self.method_missing(meth, *args, &block)
    if meth.to_s =~ /^find_by_(.+)$/
      run_find_by_method($1, *args, &block)
    else
      super
    end
  end

  def self.run_find_by_method(attrs, *args, &block)
    # Make a key/value hash of attributes
    attrs = attrs.split('_and_')
    attrs_with_args = [attrs, args].transpose
    conditions = Hash[attrs_with_args]
    
    if self.logged_in? == false
      self.login
    end

    sr = ApiServiceRequest.new
    if conditions.keys[0] == "id"
      # ID requires we use loadById, not executeSelectQuery
      result = @@service.loadByStringId({:sessionId => @@session_id, :apiSysObj => sr, :id => conditions.values[0]})
    else
      result = @@service.executeSelectQuery({:sessionId => @@session_id, :apiSysObj => sr, :condition => "#{conditions.keys[0]} = '#{conditions.values[0]}'"})
    end
    
    SysAid::Ticket.new(result.v_return)
  end
  
  def self.respond_to?(meth)
    if meth.to_s =~ /^find_by_.*$/
      true
    else
      super
    end
  end
  
  def self.service
    @@service
  end
  
  def self.session_id
    @@session_id
  end
  
  # Note: By design, logged_in? will try to log in if it isn't already
  def self.logged_in?
    if @@logged_in == false
      login
    end
    
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
    @@service = SysaidApiService.new(@@server_settings[:endpoint])

    # see SOAP wiredumps (for debugging)
    unless @@server_settings[:debug].nil?
      @@service.wiredump_dev = @@server_settings[:debug]
    end

    # login
    unless @@server_settings[:account].nil?
      result = @@service.login({:accountId => @@server_settings[:account], :userName => @@server_settings[:username], :password => @@server_settings[:password]})
      @@session_id = result.v_return
    
      @@logged_in = true
    end
  end
end

require 'sysaid/driver/SysaidApiServiceServiceDriver'
require 'sysaid/ticket'
