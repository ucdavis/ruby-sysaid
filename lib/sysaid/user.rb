class SysAid::User
  attr_accessor :username, :display_name, :email, :phone, :first_name, :last_name
  
  # Creates a SysAid::User object
  #
  # Example:
  #   >> SysAid::User.new
  #   => SysAid::User
  #
  # Arguments:
  #   username: (SysAid username, optional)
  def initialize(username = nil)
    self.username = username
  end
  
  def self.find_by_username(username)
    user = SysAid::User.new(username)
    
    user.refresh
    
    return user
  end
  
  # Loads the latest user information from the SysAid server
  def refresh
    response = SysAid.client.call(:load_by_string_id, message: to_xml )
    set_self_from_response(response.to_hash[:load_by_string_id_response][:return])
  end

  # Saves a ticket back to the SysAid server
  #
  # Example:
  #   >> ticket_object.save
  #   => true
  def save
    if SysAid.logged_in? == false
      raise "You must create a SysAid instance and log in before attempting to create a ticket."
    end
    
    # Save it via the SOAP API
    response = SysAid.client.call(:save, message: to_xml)
    pp response
    # if result.v_return.to_i > 0
    #   return true
    # else
    #   return false
    # end
  end

  # Deletes a ticket from the SysAid server
  #
  # Example:
  #   >> ticket_object.delete
  #   => true  
  # def delete
  #   unless @sr.instance_variable_get(:@id).nil?
  #     SysAid.service.delete({:sessionId => SysAid.session_id, :apiSysObj => @sr})
  #     
  #     return true
  #   end
  #   
  #   false
  # end
  
  private
  
  def to_xml
    builder = Builder::XmlMarkup.new

    builder.sessionId(SysAid.session_id)
    builder.apiSysObj('xsi:type' => "tns:apiSysAidUser") { |b|
      b.displayName(self.display_name)
      b.userName(self.username)
      b.email(self.email)
      b.phone(self.phone)
      b.firstName(self.first_name)
      b.lastName(self.last_name)
    }
    builder.id(self.username)

    builder.to_s
  end
  
  # Note: We sync between @sr and our instance variables for API convenience, i.e.
  #       so one can say, ticket.title = "something" instead of
  #       ticket.instance_variable_get(:@sr).instance_variable_set(:@title, "something").
  
  # Update instance variables to match what is in response
  def set_self_from_response(response)
    self.username = response[:user_name]
    self.display_name = response[:display_name]
    self.email = response[:email]
    self.phone = response[:phone]
    self.first_name = response[:first_name]
    self.last_name = response[:last_name]
  end
end
