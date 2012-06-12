class SysAid::Ticket
  # Optionally takes an existing service_request from the SOAP driver
  def initialize(service_handle, session_id, service_request = nil)
    @service_handle = service_handle
    @session_id = session_id
    @sr = service_request
    
    if service_request.nil?
      @sr = ApiServiceRequest.new
    end
    
    # Create public variables for each field in the ticket (and track them for later re-sync)
    @sr_symbols = []
    @sr.instance_variables.each do |field|
      @sr_symbols << field
      self.create_attr(field.to_s[1..-1])
      self.instance_variable_set(field, @sr.instance_variable_get(field.to_sym))
    end
  end
  
  def save
    # Save public variables back to the ApiServiceRequest (@sr) variable
    @sr_symbols.each do |symbol|
      puts symbol
      @sr.instance_variable_set(symbol, self.instance_variable_get(symbol))
    end
    
    # Save it via the SOAP API
    result = @service_handle.save({:sessionId => @session_id, :apiSysObj => @sr})
    if result.v_return == self.instance_variable_get(:@id).to_s
      return true
    else
      return false
    end
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
end
