class SysAid::User
  attr_accessor :username, :display_name, :email, :phone, :first_name, :last_name, :admin, :agreement, :building,
                :car_number, :cellphone, :company, :cubic, :custInt1, :custInt2, :custList1, :custList2, :custNotes,
                :custText1, :custText2, :department, :disable, :emailNotifications, :enableLoginToEup, :floor, :location,
                :manager, :notes, :sms, :userManagerName, :loginDomain, :loginUser, :secondaryEmail
  
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
    
    return nil unless user.refresh
    
    return user
  end
  
  # Loads the latest user information from the SysAid server
  def refresh
    response = SysAid.client.call(:load_by_string_id, message: to_xml.to_s )
    if response.to_hash[:load_by_string_id_response][:return]
      set_self_from_response(response.to_hash[:load_by_string_id_response][:return])
      return true
    end
    
    return false
  end

  # Saves a user back to the SysAid server
  #
  # Example:
  #   >> user_object.save
  #   => true
  def save
    if SysAid.logged_in? == false
      raise "You must create a SysAid instance and log in before attempting to create or save a user."
    end
    
    # Save it via the SOAP API
    response = SysAid.client.call(:save, message: to_xml(false).to_s )
    if response.to_hash[:save_response][:return]
      return true
    else
      return false
    end
  end

  # Deletes a ticket from the SysAid server
  #
  # Example:
  #   >> ticket_object.delete
  #   => true  
  def delete
    response = SysAid.client.call(:delete, message: to_xml(false).to_s )
    
    #response.to_hash[:delete_response]
    
    # The SysAid API doesn't return anything on delete.
    # Think about that for a minute.
  end
  
  private
  
  def to_xml(include_id = true)
    builder = Builder::XmlMarkup.new

    builder.sessionId(SysAid.session_id)
    builder.apiSysObj('xsi:type' => "tns:apiSysAidUser") { |b|
      b.admin(self.admin, 'xsi:type' => 'xsd:boolean')
      b.agreement(self.agreement, 'xsi:type' => 'xsd:int')
      b.building(self.building, 'xsi:type' => 'xsd:string')
      b.carNumber(self.car_number, 'xsi:type' => 'xsd:string')
      b.cellphone(self.cellphone, 'xsi:type' => 'xsd:string')
      b.company(self.company, 'xsi:type' => 'xsd:int')
      b.cubic(self.cubic, 'xsi:type' => 'xsd:string')
      b.custInt1(self.custInt1, 'xsi:type' => 'xsd:int')
      b.custInt2(self.custInt2, 'xsi:type' => 'xsd:int')
      b.custList1(self.custList1, 'xsi:type' => 'xsd:int')
      b.custList2(self.custList2, 'xsi:type' => 'xsd:int')
      b.custNotes(self.custNotes, 'xsi:type' => 'xsd:string')
      b.custText1(self.custText1, 'xsi:type' => 'xsd:string')
      b.custText2(self.custText2, 'xsi:type' => 'xsd:string')
      b.customDateFields
      b.customFields
      b.department(self.department, 'xsi:type' => 'xsd:int')
      b.disable(self.disable, 'xsi:type' => 'xsd:boolean')
      b.displayName(self.display_name, 'xsi:type' => 'xsd:string')
      b.email(self.email, 'xsi:type' => 'xsd:string')
      b.emailNotifications(self.emailNotifications, 'xsi:type' => 'xsd:boolean')
      b.enableLoginToEup(self.enableLoginToEup, 'xsi:type' => 'xsd:boolean')
      b.firstName(self.first_name, 'xsi:type' => 'xsd:string')
      b.floor(self.floor, 'xsi:type' => 'xsd:string')
      b.lastName(self.last_name, 'xsi:type' => 'xsd:string')
      b.location(self.location, 'xsi:type' => 'xsd:int')
      b.loginDomain(self.loginDomain, 'xsi:type' => 'xsd:string')
      b.loginUser(self.loginUser, 'xsi:type' => 'xsd:string')
      b.manager(self.manager, 'xsi:type' => 'xsd:boolean')
      b.notes(self.notes, 'xsi:type' => 'xsd:string')
      b.phone(self.phone, 'xsi:type' => 'xsd:string')
      b.secondaryEmail(self.secondaryEmail, 'xsi:type' => 'xsd:string')
      b.sms(self.sms, 'xsi:type' => 'xsd:string')
      b.userManagerName(self.userManagerName, 'xsi:type' => 'xsd:string')      
      b.userName(self.username, 'xsi:type' => 'xsd:string')
    }
    builder.id(self.username) if include_id

    builder
  end
  
  # Update instance variables to match what is in response
  def set_self_from_response(response)
    self.username = response[:user_name]
    self.display_name = response[:display_name]
    self.email = response[:email]
    self.phone = response[:phone]
    self.first_name = response[:first_name]
    self.last_name = response[:last_name]
    self.admin = response[:admin]
    self.agreement = response[:agreement]
    self.building = response[:building]
    self.car_number = response[:carNumber]
    self.cellphone = response[:cellphone]
    self.company = response[:company]
    self.cubic = response[:cubic]
    self.custInt1 = response[:custInt1]
    self.custInt2 = response[:custInt2]
    self.custList1 = response[:custList1]
    self.custList2 = response[:custList2]
    self.custNotes = response[:custNotes]
    self.custText1 = response[:custText1]
    self.custText2 = response[:custText2]
    self.department = response[:department]
    self.disable = response[:disable]
    self.emailNotifications = response[:emailNotifications]
    self.enableLoginToEup = response[:enableLoginToEup]
    self.floor = response[:floor]
    self.location = response[:location]
    self.manager = response[:manager]
    self.notes = response[:notes]
    self.sms = response[:sms]
    self.userManagerName = response[:userManagerName]
    self.loginDomain = response[:loginDomain]
    self.loginUser = response[:loginUser]
    self.secondaryEmail = response[:secondaryEmail]
  end
end
