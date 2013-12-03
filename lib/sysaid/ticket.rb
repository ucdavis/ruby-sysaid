require 'date'

class SysAid::Ticket
  attr_accessor :agreement, :assign_counter, :assigned_to, :ciid, :category, :current_support_level, :cust_int1,
                :cust_int2, :cust_list1, :cust_list2, :description, :escalation, :id, :location, :max_support_level,
                :parent_link, :priority, :project_id, :reopen_counter, :request_user, :source, :sr_sub_type, :sr_type,
                :status, :sub_category, :submit_user, :success_rating, :task_id, :title, :urgency, :version, :archive,
                :assigned_group, :cc, :change_category, :close_time, :closure_information, :computer_id,
                :cust_notes, :cust_text1, :cust_text2, :impact, :notes, :resolution, :solution, :third_level_category,
                :update_time, :update_user, :user_manager, :workaround, :insert_time, :followup_text, :email_account
  
  def initialize
    self.close_time = Date.new
    self.insert_time = Date.new
    self.update_time = Date.new
  end
  
  def self.find_by_id(ticket_id)
    ticket = SysAid::Ticket.new
    
    ticket.id = ticket_id
    
    return nil unless ticket.refresh
    
    return ticket
  end
  
  # Loads the latest ticket information from the SysAid server
  def refresh
    response = SysAid.client.call(:load_by_string_id, message: to_xml)
    
    if response.to_hash[:load_by_string_id_response][:return]
      set_self_from_response(response.to_hash[:load_by_string_id_response][:return])
      return true
    end
    
    return false
  end

  # Saves a ticket back to the SysAid server
  #
  # Example:
  #   >> ticket_object.save
  #   => true
  def save
    if SysAid.logged_in? == false
      raise "You must log in before creating or saving a ticket."
    end
    
    # Save it via the SOAP API
    response = SysAid.client.call(:save, message: to_xml(false))
    if response.to_hash[:save_response][:return]
      return true
    else
      return false
    end
  end

  # Deletes a ticket from the SysAid server
  #
  # No return value as SysAid's 'delete' call returns void. No idea why.
  #
  # Example:
  #   >> ticket_object.delete
  #   => true  
  def delete
    SysAid.client.call(:delete, message: to_xml(false))
  end
  
  private
  
  def to_xml(include_id = true)
    builder = Builder::XmlMarkup.new

    builder.sessionId(SysAid.session_id)
    xml = builder.apiSysObj('xsi:type' => "tns:apiServiceRequest") { |b|
      b.agreement(self.agreement, 'xsi:type' => 'xsd:int')
      b.archive(self.archive, 'xsi:type' => 'xsd:boolean')
      b.assignCounter(self.assign_counter, 'xsi:type' => 'xsd:int')
      b.assignedGroup(self.assigned_group, 'xsi:type' => 'xsd:string')
      b.assignedTo(self.assigned_to, 'xsi:type' => 'xsd:string')
      b.CIId(self.ciid, 'xsi:type' => 'xsd:int')
      b.category(self.category, 'xsi:type' => 'xsd:string')
      b.cc(self.cc, 'xsi:type' => 'xsd:string')
      b.changeCategory(self.change_category, 'xsi:type' => 'xsd:int')
      b.closeTime(self.close_time.rfc3339, 'xsi:type' => 'xsd:dateTime')
      b.closureInformation(self.closure_information, 'xsi:type' => 'xsd:int')
      b.computerID(self.computer_id, 'xsi:type' => 'xsd:string')
      b.currentSupportLevel(self.current_support_level, 'xsi:type' => 'xsd:int')
      b.custInt1(self.cust_int1, 'xsi:type' => 'xsd:int')
      b.custInt2(self.cust_int2, 'xsi:type' => 'xsd:int')
      b.custList1(self.cust_list1, 'xsi:type' => 'xsd:int')
      b.custList2(self.cust_list2, 'xsi:type' => 'xsd:int')
      b.custNotes(self.cust_notes, 'xsi:type' => 'xsd:string')
      b.custText1(self.cust_text1, 'xsi:type' => 'xsd:string')
      b.custText2(self.cust_text2, 'xsi:type' => 'xsd:string')
      b.customDateFields
      #b.customFields
      b.description(self.description, 'xsi:type' => 'xsd:string')
      b.emailAccount(self.email_account, 'xsi:type' => 'xsd:string')
      b.escalation(self.escalation, 'xsi:type' => 'xsd:int')
      b.followupText(self.followup_text, 'xsi:type' => 'xsd:string')
      b.id(self.id, 'xsi:type' => 'xsd:int')
      b.impact(self.impact, 'xsi:type' => 'xsd:int')
      b.insertTime(self.insert_time.rfc3339, 'xsi:type' => 'xsd:dateTime')
      b.location(self.location, 'xsi:type' => 'xsd:int')
      b.maxSupportLevel(self.max_support_level, 'xsi:type' => 'xsd:int')
      b.notes(self.notes, 'xsi:type' => 'xsd:string')
      b.parentLink(self.parent_link, 'xsi:type' => 'xsd:int')
      b.priority(self.priority, 'xsi:type' => 'xsd:int')
      b.projectID(self.project_id, 'xsi:type' => 'xsd:int')
      b.reopenCounter(self.reopen_counter, 'xsi:type' => 'xsd:int')
      b.requestUser(self.request_user, 'xsi:type' => 'xsd:string')
      b.resolution(self.resolution, 'xsi:type' => 'xsd:string')
      b.solution(self.solution, 'xsi:type' => 'xsd:string')
      b.source(self.source, 'xsi:type' => 'xsd:int')
      b.srSubType(self.sr_sub_type, 'xsi:type' => 'xsd:int')
      b.srType(self.sr_type, 'xsi:type' => 'xsd:int')
      b.status(self.status, 'xsi:type' => 'xsd:int')
      b.subCategory(self.sub_category, 'xsi:type' => 'xsd:string')
      b.successRating(self.success_rating, 'xsi:type' => 'xsd:int')
      b.taskID(self.task_id, 'xsi:type' => 'xsd:int')
      b.thirdLevelCategory(self.third_level_category, 'xsi:type' => 'xsd:string')
      b.title(self.title, 'xsi:type' => 'xsd:string')
      b.updateTime(self.update_time.rfc3339, 'xsi:type' => 'xsd:dateTime')
      b.updateUser(self.update_user, 'xsi:type' => 'xsd:string')
      b.urgency(self.urgency, 'xsi:type' => 'xsd:int')
      b.userManager(self.user_manager, 'xsi:type' => 'xsd:string')
      b.version(self.version, 'xsi:type' => 'xsd:int')
      b.workaround(self.workaround, 'xsi:type' => 'xsd:string')
    }
    xml = builder.id(self.id) if include_id

    xml
  end
  
  # Update instance variables to match what is in response
  def set_self_from_response(response)
    self.agreement = response[:agreement]
    self.archive = response[:archive]
    self.assign_counter = response[:assign_counter]
    self.assigned_group = response[:assign_group]
    self.assigned_to = response[:assign_to]
    self.ciid = response[:ci_id]
    self.category = response[:category]
    self.cc = response[:cc]
    self.change_category = response[:change_category]
    self.close_time = response[:close_time]
    self.closure_information = response[:closure_information]
    self.computer_id = response[:computer_id]
    self.current_support_level = response[:current_support_level]
    self.cust_int1 = response[:cust_int1]
    self.cust_int2 = response[:cust_int2]
    self.cust_list1 = response[:cust_list1]
    self.cust_list2 = response[:cust_list2]
    self.cust_notes = response[:cust_notes]
    self.cust_text1 = response[:cust_text1]
    self.cust_text2 = response[:cust_text2]
    self.description = response[:description]
    self.email_account = response[:email_account]
    self.escalation = response[:escalation]
    self.followup_text = response[:followup_text]
    self.id = response[:id]
    self.impact = response[:impact]
    self.insert_time = response[:insert_time]
    self.location = response[:location]
    self.max_support_level = response[:max_support_level]
    self.notes = response[:notes]
    self.parent_link = response[:parent_link]
    self.priority = response[:priority]
    self.project_id = response[:project_id]
    self.reopen_counter = response[:reopen_counter]
    self.request_user = response[:request_user]
    self.resolution = response[:resolution]
    self.solution = response[:solution]
    self.source = response[:source]
    self.sr_sub_type = response[:sr_sub_type]
    self.sr_type = response[:sr_type]
    self.status = response[:status]
    self.sub_category = response[:sub_category]
    self.success_rating = response[:success_rating]
    self.task_id = response[:task_id]
    self.third_level_category = response[:third_level_category]
    self.title = response[:title]
    self.update_time = response[:update_time]
    self.update_user = response[:update_user]
    self.urgency = response[:urgency]
    self.user_manager = response[:user_manager]
    self.version = response[:version]
    self.workaround = response[:workaround]
  end
end
