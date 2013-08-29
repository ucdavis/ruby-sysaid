require 'date'

class SysAid::Ticket
  attr_accessor :agreement, :assignCounter, :assignedTo, :ciid, :category, :currentSupportLevel, :custInt1,
                :custInt2, :custList1, :custList2, :description, :escalation, :id, :location, :maxSupportLevel,
                :parentLink, :priority, :projectID, :reopenCounter, :requestUser, :source, :srSubType, :srType,
                :status, :subCategory, :submitUser, :successRating, :taskID, :title, :urgency, :version, :archive,
                :assignedGroup, :assignedTo, :cc, :changeCategory, :closeTime, :closureInformation, :computerID,
                :custNotes, :custText1, :custText2, :impact, :notes, :resolution, :solution, :thirdLevelCategory,
                :updateTime, :updateUser, :userManager, :workaround
  
  def initialize
    self.closeTime = Date.new
    self.updateTime = Date.new
  end
  
  def self.find_by_id(ticket_id)
    ticket = SysAid::Ticket.new
    
    ticket.id = ticket_id
    
    return nil unless ticket.refresh
    
    return ticket
  end
  
  # Loads the latest user information from the SysAid server
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
      b.assignCounter(self.assignCounter, 'xsi:type' => 'xsd:int')
      b.assignedGroup(self.assignedGroup, 'xsi:type' => 'xsd:string')
      b.assignedTo(self.assignedTo, 'xsi:type' => 'xsd:string')
      b.CIId(self.ciid, 'xsi:type' => 'xsd:int')
      b.category(self.category, 'xsi:type' => 'xsd:string')
      b.cc(self.cc, 'xsi:type' => 'xsd:string')
      b.changeCategory(self.changeCategory, 'xsi:type' => 'xsd:int')
      b.closeTime(self.closeTime.rfc3339, 'xsi:type' => 'xsd:dateTime')
      b.closureInformation(self.closureInformation, 'xsi:type' => 'xsd:int')
      b.computerID(self.computerID, 'xsi:type' => 'xsd:string')
      b.currentSupportLevel(self.currentSupportLevel, 'xsi:type' => 'xsd:int')
      b.custInt1(self.custInt1, 'xsi:type' => 'xsd:int')
      b.custInt2(self.custInt2, 'xsi:type' => 'xsd:int')
      b.custList1(self.custList1, 'xsi:type' => 'xsd:int')
      b.custList2(self.custList2, 'xsi:type' => 'xsd:int')
      b.custNotes(self.custNotes, 'xsi:type' => 'xsd:string')
      b.custText1(self.custText1, 'xsi:type' => 'xsd:string')
      b.custText2(self.custText2, 'xsi:type' => 'xsd:string')
      b.customDateFields
      #b.customFields
      b.description(self.description, 'xsi:type' => 'xsd:string')
      # <emailAccount xsi:type="xsd:string"></emailAccount>
      b.escalation(self.escalation, 'xsi:type' => 'xsd:int')
      # <followupText xsi:type="xsd:string"></followupText>
      b.id(self.id, 'xsi:type' => 'xsd:int')
      b.impact(self.impact, 'xsi:type' => 'xsd:int')
      # <insertTime xsi:type="xsd:dateTime">
      # 2012-06-13T17:42:03.053Z</insertTime>
      b.location(self.location, 'xsi:type' => 'xsd:int')
      b.maxSupportLevel(self.maxSupportLevel, 'xsi:type' => 'xsd:int')
      b.notes(self.notes, 'xsi:type' => 'xsd:string')
      b.parentLink(self.parentLink, 'xsi:type' => 'xsd:int')
      b.priority(self.priority, 'xsi:type' => 'xsd:int')
      b.projectID(self.projectID, 'xsi:type' => 'xsd:int')
      b.reopenCounter(self.reopenCounter, 'xsi:type' => 'xsd:int')
      b.requestUser(self.requestUser, 'xsi:type' => 'xsd:string')
      b.resolution(self.resolution, 'xsi:type' => 'xsd:string')
      b.solution(self.solution, 'xsi:type' => 'xsd:string')
      b.source(self.source, 'xsi:type' => 'xsd:int')
      b.srSubType(self.srSubType, 'xsi:type' => 'xsd:int')
      b.srType(self.srType, 'xsi:type' => 'xsd:int')
      b.status(self.status, 'xsi:type' => 'xsd:int')
      b.subCategory(self.subCategory, 'xsi:type' => 'xsd:string')
      b.successRating(self.successRating, 'xsi:type' => 'xsd:int')
      b.taskID(self.taskID, 'xsi:type' => 'xsd:int')
      b.thirdLevelCategory(self.thirdLevelCategory, 'xsi:type' => 'xsd:string')
      b.title(self.title, 'xsi:type' => 'xsd:string')
      b.updateTime(self.updateTime.rfc3339, 'xsi:type' => 'xsd:dateTime')
      b.updateUser(self.updateUser, 'xsi:type' => 'xsd:string')
      b.urgency(self.urgency, 'xsi:type' => 'xsd:int')
      b.userManager(self.userManager, 'xsi:type' => 'xsd:string')
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
    self.assignCounter = response[:assignCounter]
    self.assignedGroup = response[:assignGroup]
    self.assignedTo = response[:assignTo]
    self.ciid = response[:CIId]
    self.category = response[:category]
    self.cc = response[:cc]
    self.changeCategory = response[:changeCategory]
    self.closeTime = Date.parse(response[:closeTime]) if response[:closeTime]
    self.closureInformation = response[:closureInformation]
    self.computerID = response[:computerID]
    self.currentSupportLevel = response[:currentSupportLevel]
    self.custInt1 = response[:custInt1]
    self.custInt2 = response[:custInt2]
    self.custList1 = response[:custList1]
    self.custList2 = response[:custList2]
    self.custNotes = response[:custNotes]
    self.custText1 = response[:custText1]
    self.custText2 = response[:custText2]
    self.description = response[:description]
    self.escalation = response[:escalation]
    self.id = response[:id]
    self.impact = response[:impact]
    self.location = response[:location]
    self.maxSupportLevel = response[:maxSupportLevel]
    self.notes = response[:notes]
    self.parentLink = response[:parentLink]
    self.priority = response[:priority]
    self.projectID = response[:projectID]
    self.reopenCounter = response[:reopenCounter]
    self.requestUser = response[:requestUser]
    self.resolution = response[:resolution]
    self.solution = response[:solution]
    self.source = response[:source]
    self.srSubType = response[:srSubType]
    self.srType = response[:srType]
    self.status = response[:status]
    self.subCategory = response[:subCategory]
    self.successRating = response[:successRating]
    self.taskID = response[:taskID]
    self.thirdLevelCategory = response[:thirdLevelCategory]
    self.title = response[:title]
    self.updateTime = Date.parse(response[:updateTime]) if response[:updateTime]
    self.updateUser = response[:updateUser]
    self.urgency = response[:urgency]
    self.userManager = response[:userManager]
    self.version = response[:version]
    self.workaround = response[:workaround]
  end
end
