class SysAid::Ticket
  # Optionally takes an existing service_request from the SOAP driver
  def initialize(service_request = nil)
    @sr = service_request
    
    if service_request.nil?
      @sr = ApiServiceRequest.new
    end
    
    # Create public variables for each field in the ticket (and track them for later re-sync)
    self.sr_variables = []
    @sr.instance_variables.each do |field|
      self.sr_variables << field.to_s[1..-1]
      self.create_attr(field.to_s[1..-1])
      self.instance_variable_set(field, @sr.instance_variable_get(field.to_sym))
    end
  end
  
  def save
    # Save public variables back to the ApiServiceRequest (@sr) variable
    
    
    # Save it via the SOAP API
    
    
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
