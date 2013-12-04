require 'date'

class SysAid::Project
  attr_accessor :assigned_group, :category, :company, :cust_date1, :cust_date2, :cust_int1, :cust_int2, :cust_list1,
                :cust_list2, :cust_notes, :custom_date_fields, :custom_fields, :cust_text1, :cust_text2, :description,
                :end_time, :id, :incident_title, :manager, :notes, :progress, :raw_estimation, :request_group, 
                :start_time, :status, :title, :version
  
  def initialize
    self.start_time = Date.new
    self.end_time = Date.new
  end
  
  def self.find_by_id(project_id)
    project = SysAid::Project.new
    
    project.id = project_id
    
    return nil unless project.refresh
    
    return project
  end

  def self.find_by_query(query)
    response = SysAid.client.call(:execute_select_query, message: sql_query(query))
    
    if response.to_hash[:execute_select_query_response][:return]
      return response.to_hash[:execute_select_query_response][:return]
    end
    
    return false
  end
  
  # Loads the latest project information from the SysAid server
  def refresh
    response = SysAid.client.call(:load_by_string_id, message: to_xml)
    
    if response.to_hash[:load_by_string_id_response][:return]
      set_self_from_response(response.to_hash[:load_by_string_id_response][:return])
      return true
    end
    
    return false
  end

  # Saves a project back to the SysAid server
  #
  # Example:
  #   >> project_object.save
  #   => true
  def save
    if SysAid.logged_in? == false
      raise "You must log in before creating or saving a project."
    end
    
    # Save it via the SOAP API
    response = SysAid.client.call(:save, message: to_xml(false))
    if response.to_hash[:save_response][:return]
      return true
    else
      return false
    end
  end

  # Deletes a project from the SysAid server
  #
  # No return value as SysAid's 'delete' call returns void. No idea why.
  #
  # Example:
  #   >> project_object.delete
  #   => true  
  def delete
    SysAid.client.call(:delete, message: to_xml(false))
  end
  
  private
  
  def self.sql_query(query)
    builder = Builder::XmlMarkup.new

    builder.sessionId(SysAid.session_id)
    xml = builder.apiSysObj('xsi:type' => "tns:apiProject")
    xml = builder.condition(query)
    xml
  end

  def to_xml(include_id = true)
    builder = Builder::XmlMarkup.new

    builder.sessionId(SysAid.session_id)
    xml = builder.apiSysObj('xsi:type' => "tns:apiProject") { |b|
      b.assignedGroup(self.assigned_group, 'xsi:type' => 'xsd:string')
      b.category(self.category, 'xsi:type' => 'xsd:int')
      b.company(self.company, 'xsi:type' => 'xsd:int')
      #b.custDate1(self.cust_date1.rfc3339, 'xsi:type' => 'xsd:dateTime')
      #b.custDate2(self.cust_date2.rfc3339, 'xsi:type' => 'xsd:dateTime')
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
      b.endTime(self.end_time.rfc3339, 'xsi:type' => 'xsd:dateTime')
      b.id(self.id, 'xsi:type' => 'xsd:int')
      b.incidentTitle(self.incident_title, 'xsi:type' => 'xsd:string')
      b.manager(self.manager, 'xsi:type' => 'xsd:string')
      b.notes(self.notes, 'xsi:type' => 'xsd:string')
      b.progress(self.progress, 'xsi:type' => 'xsd:int')
      b.rawEstimation(self.raw_estimation, 'xsi:type' => 'xsd:int')
      b.requestGroup(self.request_group, 'xsi:type' => 'xsd:string')
      b.startTime(self.start_time.rfc3339, 'xsi:type' => 'xsd:dateTime')
      b.status(self.status, 'xsi:type' => 'xsd:int')
      b.title(self.title, 'xsi:type' => 'xsd:string')
      b.version(self.version, 'xsi:type' => 'xsd:int')
    }
    xml = builder.id(self.id) if include_id

    xml
  end
  
  # Update instance variables to match what is in response
  def set_self_from_response(response)
    self.assigned_group = response[:assign_group]
    self.category = response[:category]
    self.company = response[:company]
    #self.cust_date1 = response[:cust_date1]
    #self.cust_date2 = response[:cust_date2]
    self.cust_int1 = response[:cust_int1]
    self.cust_int2 = response[:cust_int2]
    self.cust_list1 = response[:cust_list1]
    self.cust_list2 = response[:cust_list2]
    self.cust_notes = response[:cust_notes]
    self.cust_text1 = response[:cust_text1]
    self.cust_text2 = response[:cust_text2]
    self.description = response[:description]
    self.end_time = response[:end_time]
    self.id = response[:id]
    self.incident_title = response[:incident_title]
    self.manager = response[:manager]
    self.notes = response[:notes]
    self.progress = response[:progress]
    self.raw_estimation = response[:raw_estimation]
    self.request_group = response[:request_group]
    self.start_time = response[:start_time]
    self.status = response[:status]
    self.title = response[:title]
    self.version = response[:version]
  end
end
