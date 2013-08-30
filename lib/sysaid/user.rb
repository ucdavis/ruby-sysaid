class SysAid::User
  attr_accessor :username, :display_name, :email, :phone, :first_name, :last_name, :admin, :agreement, :building,
                :car_number, :cellphone, :company, :cubic, :cust_int1, :cust_int2, :cust_list1, :cust_list2, :cust_notes,
                :cust_text1, :cust_text2, :department, :disable, :email_notifications, :enable_login_to_eup, :floor, :location,
                :manager, :notes, :sms, :user_manager_name, :login_domain, :login_user, :secondary_email
  
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
      raise "You must log in before creating or saving a user."
    end
    
    # Save it via the SOAP API
    response = SysAid.client.call(:save, message: to_xml(false).to_s )
    if response.to_hash[:save_response][:return]
      return true
    else
      return false
    end
  end

  # Deletes a user from the SysAid server
  #
  # Example:
  #   >> user_object.delete
  #   => nil  
  def delete
    SysAid.client.call(:delete, message: to_xml(false).to_s )
  end
  
  private
  
  def to_xml(include_id = true)
    builder = Builder::XmlMarkup.new

    builder.sessionId(SysAid.session_id)
    xml = builder.apiSysObj('xsi:type' => "tns:apiSysAidUser") { |b|
      b.admin(self.admin, 'xsi:type' => 'xsd:boolean')
      b.agreement(self.agreement, 'xsi:type' => 'xsd:int')
      b.building(self.building, 'xsi:type' => 'xsd:string')
      b.carNumber(self.car_number, 'xsi:type' => 'xsd:string')
      b.cellphone(self.cellphone, 'xsi:type' => 'xsd:string')
      b.company(self.company, 'xsi:type' => 'xsd:int')
      b.cubic(self.cubic, 'xsi:type' => 'xsd:string')
      b.custInt1(self.cust_int1, 'xsi:type' => 'xsd:int')
      b.custInt2(self.cust_int2, 'xsi:type' => 'xsd:int')
      b.custList1(self.cust_list1, 'xsi:type' => 'xsd:int')
      b.custList2(self.cust_list2, 'xsi:type' => 'xsd:int')
      b.custNotes(self.cust_notes, 'xsi:type' => 'xsd:string')
      b.custText1(self.cust_text1, 'xsi:type' => 'xsd:string')
      b.custText2(self.cust_text2, 'xsi:type' => 'xsd:string')
      b.customDateFields
      b.customFields
      b.department(self.department, 'xsi:type' => 'xsd:int')
      b.disable(self.disable, 'xsi:type' => 'xsd:boolean')
      b.displayName(self.display_name, 'xsi:type' => 'xsd:string')
      b.email(self.email, 'xsi:type' => 'xsd:string')
      b.emailNotifications(self.email_notifications, 'xsi:type' => 'xsd:boolean')
      b.enableLoginToEup(self.enable_login_to_eup, 'xsi:type' => 'xsd:boolean')
      b.firstName(self.first_name, 'xsi:type' => 'xsd:string')
      b.floor(self.floor, 'xsi:type' => 'xsd:string')
      b.lastName(self.last_name, 'xsi:type' => 'xsd:string')
      b.location(self.location, 'xsi:type' => 'xsd:int')
      b.loginDomain(self.login_domain, 'xsi:type' => 'xsd:string')
      b.loginUser(self.login_user, 'xsi:type' => 'xsd:string')
      b.manager(self.manager, 'xsi:type' => 'xsd:boolean')
      b.notes(self.notes, 'xsi:type' => 'xsd:string')
      b.phone(self.phone, 'xsi:type' => 'xsd:string')
      b.secondaryEmail(self.secondary_email, 'xsi:type' => 'xsd:string')
      b.sms(self.sms, 'xsi:type' => 'xsd:string')
      b.userManagerName(self.user_manager_name, 'xsi:type' => 'xsd:string')      
      b.userName(self.username, 'xsi:type' => 'xsd:string')
    }
    xml = builder.id(self.username) if include_id

    xml
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
    self.car_number = response[:car_number]
    self.cellphone = response[:cellphone]
    self.company = response[:company]
    self.cubic = response[:cubic]
    self.cust_int1 = response[:cust_int1]
    self.cust_int2 = response[:cust_int2]
    self.cust_list1 = response[:cust_list1]
    self.cust_list2 = response[:cust_list2]
    self.cust_notes = response[:cust_notes]
    self.cust_text1 = response[:cust_text1]
    self.cust_text2 = response[:cust_text2]
    self.department = response[:department]
    self.disable = response[:disable]
    self.email_notifications = response[:email_notifications]
    self.enable_login_to_eup = response[:enableLoginToEup]
    self.floor = response[:floor]
    self.location = response[:location]
    self.manager = response[:manager]
    self.notes = response[:notes]
    self.sms = response[:sms]
    self.user_manager_name = response[:userManagerName]
    self.login_domain = response[:login_domain]
    self.login_user = response[:login_user]
    self.secondary_email = response[:secondaryEmail]
  end
end
