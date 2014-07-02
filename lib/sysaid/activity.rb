require 'date'

class SysAid::Activity
  attr_accessor :ciid, :cust_int1, :cust_int2, :cust_int3, :cust_int4, :cust_list1, :cust_list2, :description, :from_time, :id, :sr_id, :to_time, :user

  def initialize
    reset_all_attributes
  end

  # Needed by both initialize and delete (to empty out the object when deleted)
  def reset_all_attributes
    self.ciid = nil
    self.cust_int1 = nil
    self.cust_int2 = nil
    self.cust_int3 = nil
    self.cust_int4 = nil
    self.cust_list1 = nil
    self.cust_list2 = nil
    self.description = nil
    self.from_time = Date.new
    self.id = nil
    self.sr_id = nil
    self.to_time = Date.new
    self.user = nil
  end

  # Returns an array of Activity IDs based on ticket_id.
  # Returns false on error.
  def self.find_by_ticket_id(ticket_id)
    SysAid.ensure_logged_in

    response = SysAid.call(:execute_select_query, message: sql_query(" service_req_id = #{ticket_id}"))

    if response.to_hash[:execute_select_query_response][:return]
      return response.to_hash[:execute_select_query_response][:return]
    end

    return false
  end

  # Returns a specific Activity based on an Activity ID
  def self.find_by_id(activity_id)
    activity = SysAid::Activity.new

    activity.id = activity_id

    return nil unless activity.refresh

    return activity
  end

  # Loads the latest ticket information from the SysAid server
  def refresh
    SysAid.ensure_logged_in

    response = SysAid.call(:load_by_string_id, message: to_xml)

    if response.to_hash[:load_by_string_id_response][:return]
      set_self_from_response(response.to_hash[:load_by_string_id_response][:return])
      return true
    end

    return false
  end

  # Saves an activity back to the SysAid server
  #
  # Example:
  #   >> activity_object.save
  #   => true
  def save
    SysAid.ensure_logged_in

    # Save it via the SOAP API
    response = SysAid.call(:save, message: to_xml(false))
    if response.to_hash[:save_response][:return]
      # In the case of new activities, the SysAid response will be the assigned ID
      self.id = response.to_hash[:save_response][:return] unless self.id
      return true
    else
      return false
    end
  end

  # Deletes an activity from the SysAid server
  #
  # No return value as SysAid's 'delete' call returns void. No idea why.
  #
  # Example:
  #   >> activity_object.delete
  #   => true
  def delete
    SysAid.ensure_logged_in
    
    SysAid.call(:delete, message: to_xml(false))

    reset_all_attributes
  end

  private

  def self.sql_query(query)
    builder = Builder::XmlMarkup.new

    builder.sessionId(SysAid.session_id)
    xml = builder.apiSysObj('xsi:type' => "tns:apiServiceRequestActivity")
    xml = builder.condition(query)
    xml
  end

  def to_xml(include_id = true)
    builder = Builder::XmlMarkup.new

    builder.sessionId(SysAid.session_id)
    xml = builder.apiSysObj('xsi:type' => "tns:apiServiceRequestActivity") { |b|
      b.CIId(self.ciid, 'xsi:type' => 'xsd:int')
      b.custInt1(self.cust_int1, 'xsi:type' => 'xsd:int')
      b.custInt2(self.cust_int2, 'xsi:type' => 'xsd:int')
      b.custInt3(self.cust_int3, 'xsi:type' => 'xsd:int')
      b.custInt4(self.cust_int4, 'xsi:type' => 'xsd:int')
      b.custList1(self.cust_list1, 'xsi:type' => 'xsd:int')
      b.custList2(self.cust_list2, 'xsi:type' => 'xsd:int')
      b.description(self.description, 'xsi:type' => 'xsd:string')
      b.fromTime(self.from_time.rfc3339, 'xsi:type' => 'xsd:dateTime')
      b.id(self.id, 'xsi:type' => 'xsd:int')
      b.srID(self.sr_id, 'xsi:type' => 'xsd:int')
      b.toTime(self.to_time.rfc3339, 'xsi:type' => 'xsd:dateTime')
      b.user(self.user, 'xsi:type' => 'xsd:string')
    }
    xml = builder.id(self.id) if include_id

    xml
  end

  # Update instance variables to match what is in response
  def set_self_from_response(response)
    self.ciid = response[:ci_id]
    self.cust_int1 = response[:cust_int1]
    self.cust_int2 = response[:cust_int2]
    self.cust_int3 = response[:cust_int3]
    self.cust_int4 = response[:cust_int4]
    self.cust_list1 = response[:cust_list1]
    self.cust_list2 = response[:cust_list2]
    self.description = response[:description]
    self.from_time = response[:from_time]
    self.id = response[:id]
    self.sr_id = response[:sr_id]
    self.to_time = response[:to_time]
    self.user = response[:user]
  end
end
