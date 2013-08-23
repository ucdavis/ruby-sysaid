class SysAid::Ticket
  attr_accessor :agreement, :assignCounter, :assignedTo, :CIId, :category, :currentSupportLevel, :custInt1, :custInt2, :custList1, :custList2, :description, :escalation, :id, :location, :maxSupportLevel, :parentLink, :priority, :projectID, :reopenCounter, :requestUser, :source, :srSubType, :srType, :status, :subCategory, :submitUser, :successRating, :taskID, :title, :urgency, :version
  
  def self.find_by_id(ticket_id)
    ticket = SysAid::Ticket.new
    
    ticket.id = ticket_id
    
    return nil unless ticket.refresh
    
    return ticket
  end
  
  # Loads the latest user information from the SysAid server
  def refresh
    response = SysAid.client.call(:load_by_string_id, message: to_xml )
    
    pp response.to_hash
    
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
      raise "You must create a SysAid instance and log in before attempting to create or save a ticket."
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
  # Example:
  #   >> ticket_object.delete
  #   => true  
  def delete
    response = SysAid.client.call(:delete, message: to_xml(false))
    
    #response.to_hash[:delete_response]
    # The SysAid API returns void on delete.
    # No idea why.
  end
  
  private
  
  def to_xml(include_id = true)
    builder = Builder::XmlMarkup.new

    builder.sessionId(SysAid.session_id)
    builder.apiSysObj('xsi:type' => "tns:apiServiceRequest") { |b|
      b.agreement(self.agreement)
      b.assignCounter(self.assignCounter)
      b.CIId(self.CIId)
      b.currentSupportLevel(self.currentSupportLevel)
      b.custInt1(self.custInt1)
      b.custInt2(self.custInt2)
      b.custList1(self.custList1)
      b.custList2(self.custList2)
      b.escalation(self.escalation)
      b.id(self.id)
      b.location(self.location)
      b.maxSupportLevel(self.maxSupportLevel)
      b.parentLink(self.parentLink)
      b.priority(self.priority)
      b.projectID(self.projectID)
      b.reopenCounter(self.reopenCounter)
      b.source(self.source)
      b.srSubType(self.srSubType)
      b.srType(self.srType)
      b.status(self.status)
      b.successRating(self.successRating)
      b.taskID(self.taskID)
      b.title(self.title)
      b.urgency(self.urgency)
      b.version(self.version)
    }
    builder.id(self.id) if include_id

    builder.to_s
  end
  
  # Update instance variables to match what is in response
  def set_self_from_response(response)
    self.agreement = response[:agreement]
    self.assignCounter = response[:assignCounter]
    self.CIId = response[:CIId]
    self.currentSupportLevel = response[:currentSupportLevel]
    self.custInt1 = response[:custInt1]
    self.custInt2 = response[:custInt2]
    self.custList1 = response[:custList1]
    self.custList2 = response[:custList2]
    self.escalation = response[:escalation]
    self.id = response[:id]
    self.location = response[:location]
    self.maxSupportLevel = response[:maxSupportLevel]
    self.parentLink = response[:parentLink]
    self.priority = response[:priority]
    self.projectID = response[:projectID]
    self.reopenCounter = response[:reopenCounter]
    self.source = response[:source]
    self.srSubType = response[:srSubType]
    self.srType = response[:srType]
    self.status = response[:status]
    self.successRating = response[:successRating]
    self.taskID = response[:taskID]
    self.title = response[:title]
    self.urgency = response[:urgency]
    self.version = response[:version]
  end
end
