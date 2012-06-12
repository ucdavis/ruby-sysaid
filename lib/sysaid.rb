class SysAid
  @@logged_in = false
  
  def initialize(account, username, password)
    @account = account
    @username = username
    @password = password
    
    login
  end
  
  # Implements find_by_* methods, e.g. find_by_id, find_by_responsibility, etc.
  def method_missing(meth, *args, &block)
    if meth.to_s =~ /^find_by_(.+)$/
      run_find_by_method($1, *args, &block)
    else
      super
    end
  end

  def run_find_by_method(attrs, *args, &block)
    # Make an array of attribute names
    attrs = attrs.split('_and_')

    # #transpose will zip the two arrays together like so:
    #   [[:a, :b, :c], [1, 2, 3]].transpose
    #   # => [[:a, 1], [:b, 2], [:c, 3]]
    attrs_with_args = [attrs, args].transpose

    # Hash[] will take the passed associative array and turn it
    # into a hash like so:
    #   Hash[[[:a, 2], [:b, 4]]] # => { :a => 2, :b => 4 }
    conditions = Hash[attrs_with_args]

    sr = ApiServiceRequest.new
    if conditions.keys[0] == "id"
      # ID requires we use loadById, not executeSelectQuery
      result = @@service.loadByStringId({:sessionId => @@session_id, :apiSysObj => sr, :id => conditions.values[0]})
    else
      result = @@service.executeSelectQuery({:sessionId => @@session_id, :apiSysObj => sr, :condition => "#{conditions.keys[0]} = '#{conditions.values[0]}'"})
    end
    
    SysAid::Ticket.new(result.v_return)
  end
  
  def respond_to?(meth)
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
  
  def self.logged_in?
    if @@logged_in
      return true
    else
      return false
    end
  end
  
  private
  def login
    @@service = SysaidApiService.new

    # see SOAP wiredumps (for debugging)
    @@service.wiredump_dev = STDERR

    # login
    result = @@service.login({:accountId => @account, :userName => @username, :password => @password})
    @@session_id = result.v_return
    
    @@logged_in = true
  end
end

require 'sysaid/driver/SysaidApiServiceServiceDriver'
require 'sysaid/ticket'
