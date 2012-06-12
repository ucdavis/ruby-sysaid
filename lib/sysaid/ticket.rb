class SysAid::Ticket
  # Optionally takes an existing service_request from the SOAP driver
  def initialize(service_request = nil)
    @sr = service_request
    
    if service_request.nil?
      @sr = ApiServiceRequest.new
    end
    
    set_self_from_sr
  end
  
  def save
    if SysAid.logged_in? == false
      raise "You must create a SysAid instance and log in before attempting to create a ticket."
    end
    
    # Save public variables back to the ApiServiceRequest (@sr) variable
    set_sr_from_self
    
    # Save it via the SOAP API
    result = SysAid.service.save({:sessionId => SysAid.session_id, :apiSysObj => @sr})
    if result.v_return.to_i > 0
      self.instance_variable_set(:@id, result.v_return.to_i)
      @sr.instance_variable_set(:@id, result.v_return.to_i)
      return true
    else
      return false
    end
  end
  
  def delete
    unless @sr.instance_variable_get(:@id).nil?
      SysAid.service.delete({:sessionId => SysAid.session_id, :apiSysObj => @sr})
      
      return true
    end
    
    false
  end
  
  # For dynamically creating attr_accessors
  # (from http://stackoverflow.com/questions/4082665/dynamically-create-class-attributes-with-attr-accessor)
  def create_method( name, &block )
      self.class.send( :define_method, name, &block )
  end

  def create_attr( name )
      create_method( "#{name}=".to_sym ) { |val| 
          instance_variable_set( "@" + name, val)
      }

      create_method( name.to_sym ) { 
          instance_variable_get( "@" + name ) 
      }
  end
  
  private
  # Note: We sync between @sr and our instance variables for API convenience, i.e.
  #       so one can say, ticket.title = "something" instead of
  #       ticket.instance_variable_get(:@sr).instance_variable_set(:@title, "something").
  
  # Updates instance variables to match what is in @sr
  def set_self_from_sr
    @sr_symbols = []
    @sr.instance_variables.each do |field|
      @sr_symbols << field
      self.create_attr(field.to_s[1..-1])
      self.instance_variable_set(field, @sr.instance_variable_get(field.to_sym))
    end
  end
  
  # Updates @sr to match what is in our instance variables
  def set_sr_from_self
    @sr_symbols.each do |symbol|
      @sr.instance_variable_set(symbol, self.instance_variable_get(symbol))
    end
  end
end
