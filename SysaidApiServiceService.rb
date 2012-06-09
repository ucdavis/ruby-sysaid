require 'xsd/qname'

# {http://api.ilient.com/}apiSysaidObject
# abstract
class ApiSysaidObject
  def initialize
  end
end

# {http://api.ilient.com/}apiCatalogItem
#   cIId - SOAP::SOAPInt
#   catalogNumber - SOAP::SOAPString
#   custDate1 - SOAP::SOAPDateTime
#   custDate2 - SOAP::SOAPDateTime
#   manufacturer - SOAP::SOAPString
#   model - SOAP::SOAPString
#   name - SOAP::SOAPString
#   notes - SOAP::SOAPString
#   supplierID - SOAP::SOAPInt
#   version - SOAP::SOAPInt
class ApiCatalogItem < ApiSysaidObject
  attr_accessor :cIId
  attr_accessor :catalogNumber
  attr_accessor :custDate1
  attr_accessor :custDate2
  attr_accessor :manufacturer
  attr_accessor :model
  attr_accessor :name
  attr_accessor :notes
  attr_accessor :supplierID
  attr_accessor :version

  def initialize(cIId = nil, catalogNumber = nil, custDate1 = nil, custDate2 = nil, manufacturer = nil, model = nil, name = nil, notes = nil, supplierID = nil, version = nil)
    @cIId = cIId
    @catalogNumber = catalogNumber
    @custDate1 = custDate1
    @custDate2 = custDate2
    @manufacturer = manufacturer
    @model = model
    @name = name
    @notes = notes
    @supplierID = supplierID
    @version = version
  end
end

# {http://api.ilient.com/}apiCI
#   acceptDate - SOAP::SOAPDateTime
#   category - SOAP::SOAPString
#   ciName - SOAP::SOAPString
#   ciSubType - SOAP::SOAPInt
#   ciType - SOAP::SOAPInt
#   company - SOAP::SOAPInt
#   custDateField1 - SOAP::SOAPDateTime
#   custDateField10 - SOAP::SOAPDateTime
#   custDateField11 - SOAP::SOAPDateTime
#   custDateField12 - SOAP::SOAPDateTime
#   custDateField13 - SOAP::SOAPDateTime
#   custDateField14 - SOAP::SOAPDateTime
#   custDateField15 - SOAP::SOAPDateTime
#   custDateField16 - SOAP::SOAPDateTime
#   custDateField17 - SOAP::SOAPDateTime
#   custDateField18 - SOAP::SOAPDateTime
#   custDateField19 - SOAP::SOAPDateTime
#   custDateField2 - SOAP::SOAPDateTime
#   custDateField20 - SOAP::SOAPDateTime
#   custDateField21 - SOAP::SOAPDateTime
#   custDateField22 - SOAP::SOAPDateTime
#   custDateField23 - SOAP::SOAPDateTime
#   custDateField24 - SOAP::SOAPDateTime
#   custDateField25 - SOAP::SOAPDateTime
#   custDateField26 - SOAP::SOAPDateTime
#   custDateField27 - SOAP::SOAPDateTime
#   custDateField28 - SOAP::SOAPDateTime
#   custDateField29 - SOAP::SOAPDateTime
#   custDateField3 - SOAP::SOAPDateTime
#   custDateField30 - SOAP::SOAPDateTime
#   custDateField31 - SOAP::SOAPDateTime
#   custDateField32 - SOAP::SOAPDateTime
#   custDateField33 - SOAP::SOAPDateTime
#   custDateField34 - SOAP::SOAPDateTime
#   custDateField35 - SOAP::SOAPDateTime
#   custDateField36 - SOAP::SOAPDateTime
#   custDateField37 - SOAP::SOAPDateTime
#   custDateField38 - SOAP::SOAPDateTime
#   custDateField39 - SOAP::SOAPDateTime
#   custDateField4 - SOAP::SOAPDateTime
#   custDateField40 - SOAP::SOAPDateTime
#   custDateField41 - SOAP::SOAPDateTime
#   custDateField42 - SOAP::SOAPDateTime
#   custDateField43 - SOAP::SOAPDateTime
#   custDateField44 - SOAP::SOAPDateTime
#   custDateField45 - SOAP::SOAPDateTime
#   custDateField46 - SOAP::SOAPDateTime
#   custDateField47 - SOAP::SOAPDateTime
#   custDateField48 - SOAP::SOAPDateTime
#   custDateField49 - SOAP::SOAPDateTime
#   custDateField5 - SOAP::SOAPDateTime
#   custDateField50 - SOAP::SOAPDateTime
#   custDateField6 - SOAP::SOAPDateTime
#   custDateField7 - SOAP::SOAPDateTime
#   custDateField8 - SOAP::SOAPDateTime
#   custDateField9 - SOAP::SOAPDateTime
#   custIntField1 - SOAP::SOAPInt
#   custIntField10 - SOAP::SOAPInt
#   custIntField11 - SOAP::SOAPInt
#   custIntField12 - SOAP::SOAPInt
#   custIntField13 - SOAP::SOAPInt
#   custIntField14 - SOAP::SOAPInt
#   custIntField15 - SOAP::SOAPInt
#   custIntField16 - SOAP::SOAPInt
#   custIntField17 - SOAP::SOAPInt
#   custIntField18 - SOAP::SOAPInt
#   custIntField19 - SOAP::SOAPInt
#   custIntField2 - SOAP::SOAPInt
#   custIntField20 - SOAP::SOAPInt
#   custIntField21 - SOAP::SOAPInt
#   custIntField22 - SOAP::SOAPInt
#   custIntField23 - SOAP::SOAPInt
#   custIntField24 - SOAP::SOAPInt
#   custIntField25 - SOAP::SOAPInt
#   custIntField26 - SOAP::SOAPInt
#   custIntField27 - SOAP::SOAPInt
#   custIntField28 - SOAP::SOAPInt
#   custIntField29 - SOAP::SOAPInt
#   custIntField3 - SOAP::SOAPInt
#   custIntField30 - SOAP::SOAPInt
#   custIntField31 - SOAP::SOAPInt
#   custIntField32 - SOAP::SOAPInt
#   custIntField33 - SOAP::SOAPInt
#   custIntField34 - SOAP::SOAPInt
#   custIntField35 - SOAP::SOAPInt
#   custIntField36 - SOAP::SOAPInt
#   custIntField37 - SOAP::SOAPInt
#   custIntField38 - SOAP::SOAPInt
#   custIntField39 - SOAP::SOAPInt
#   custIntField4 - SOAP::SOAPInt
#   custIntField40 - SOAP::SOAPInt
#   custIntField41 - SOAP::SOAPInt
#   custIntField42 - SOAP::SOAPInt
#   custIntField43 - SOAP::SOAPInt
#   custIntField44 - SOAP::SOAPInt
#   custIntField45 - SOAP::SOAPInt
#   custIntField46 - SOAP::SOAPInt
#   custIntField47 - SOAP::SOAPInt
#   custIntField48 - SOAP::SOAPInt
#   custIntField49 - SOAP::SOAPInt
#   custIntField5 - SOAP::SOAPInt
#   custIntField50 - SOAP::SOAPInt
#   custIntField6 - SOAP::SOAPInt
#   custIntField7 - SOAP::SOAPInt
#   custIntField8 - SOAP::SOAPInt
#   custIntField9 - SOAP::SOAPInt
#   custListField1 - SOAP::SOAPInt
#   custListField10 - SOAP::SOAPInt
#   custListField11 - SOAP::SOAPInt
#   custListField12 - SOAP::SOAPInt
#   custListField13 - SOAP::SOAPInt
#   custListField14 - SOAP::SOAPInt
#   custListField15 - SOAP::SOAPInt
#   custListField16 - SOAP::SOAPInt
#   custListField17 - SOAP::SOAPInt
#   custListField18 - SOAP::SOAPInt
#   custListField19 - SOAP::SOAPInt
#   custListField2 - SOAP::SOAPInt
#   custListField20 - SOAP::SOAPInt
#   custListField21 - SOAP::SOAPInt
#   custListField22 - SOAP::SOAPInt
#   custListField23 - SOAP::SOAPInt
#   custListField24 - SOAP::SOAPInt
#   custListField25 - SOAP::SOAPInt
#   custListField26 - SOAP::SOAPInt
#   custListField27 - SOAP::SOAPInt
#   custListField28 - SOAP::SOAPInt
#   custListField29 - SOAP::SOAPInt
#   custListField3 - SOAP::SOAPInt
#   custListField30 - SOAP::SOAPInt
#   custListField31 - SOAP::SOAPInt
#   custListField32 - SOAP::SOAPInt
#   custListField33 - SOAP::SOAPInt
#   custListField34 - SOAP::SOAPInt
#   custListField35 - SOAP::SOAPInt
#   custListField36 - SOAP::SOAPInt
#   custListField37 - SOAP::SOAPInt
#   custListField38 - SOAP::SOAPInt
#   custListField39 - SOAP::SOAPInt
#   custListField4 - SOAP::SOAPInt
#   custListField40 - SOAP::SOAPInt
#   custListField41 - SOAP::SOAPInt
#   custListField42 - SOAP::SOAPInt
#   custListField43 - SOAP::SOAPInt
#   custListField44 - SOAP::SOAPInt
#   custListField45 - SOAP::SOAPInt
#   custListField46 - SOAP::SOAPInt
#   custListField47 - SOAP::SOAPInt
#   custListField48 - SOAP::SOAPInt
#   custListField49 - SOAP::SOAPInt
#   custListField5 - SOAP::SOAPInt
#   custListField50 - SOAP::SOAPInt
#   custListField6 - SOAP::SOAPInt
#   custListField7 - SOAP::SOAPInt
#   custListField8 - SOAP::SOAPInt
#   custListField9 - SOAP::SOAPInt
#   custLongTextField1 - SOAP::SOAPString
#   custLongTextField10 - SOAP::SOAPString
#   custLongTextField11 - SOAP::SOAPString
#   custLongTextField12 - SOAP::SOAPString
#   custLongTextField13 - SOAP::SOAPString
#   custLongTextField14 - SOAP::SOAPString
#   custLongTextField15 - SOAP::SOAPString
#   custLongTextField16 - SOAP::SOAPString
#   custLongTextField17 - SOAP::SOAPString
#   custLongTextField18 - SOAP::SOAPString
#   custLongTextField19 - SOAP::SOAPString
#   custLongTextField2 - SOAP::SOAPString
#   custLongTextField20 - SOAP::SOAPString
#   custLongTextField21 - SOAP::SOAPString
#   custLongTextField22 - SOAP::SOAPString
#   custLongTextField23 - SOAP::SOAPString
#   custLongTextField24 - SOAP::SOAPString
#   custLongTextField25 - SOAP::SOAPString
#   custLongTextField26 - SOAP::SOAPString
#   custLongTextField27 - SOAP::SOAPString
#   custLongTextField28 - SOAP::SOAPString
#   custLongTextField29 - SOAP::SOAPString
#   custLongTextField3 - SOAP::SOAPString
#   custLongTextField30 - SOAP::SOAPString
#   custLongTextField31 - SOAP::SOAPString
#   custLongTextField32 - SOAP::SOAPString
#   custLongTextField33 - SOAP::SOAPString
#   custLongTextField34 - SOAP::SOAPString
#   custLongTextField35 - SOAP::SOAPString
#   custLongTextField36 - SOAP::SOAPString
#   custLongTextField37 - SOAP::SOAPString
#   custLongTextField38 - SOAP::SOAPString
#   custLongTextField39 - SOAP::SOAPString
#   custLongTextField4 - SOAP::SOAPString
#   custLongTextField40 - SOAP::SOAPString
#   custLongTextField41 - SOAP::SOAPString
#   custLongTextField42 - SOAP::SOAPString
#   custLongTextField43 - SOAP::SOAPString
#   custLongTextField44 - SOAP::SOAPString
#   custLongTextField45 - SOAP::SOAPString
#   custLongTextField46 - SOAP::SOAPString
#   custLongTextField47 - SOAP::SOAPString
#   custLongTextField48 - SOAP::SOAPString
#   custLongTextField49 - SOAP::SOAPString
#   custLongTextField5 - SOAP::SOAPString
#   custLongTextField50 - SOAP::SOAPString
#   custLongTextField6 - SOAP::SOAPString
#   custLongTextField7 - SOAP::SOAPString
#   custLongTextField8 - SOAP::SOAPString
#   custLongTextField9 - SOAP::SOAPString
#   custTextField1 - SOAP::SOAPString
#   custTextField10 - SOAP::SOAPString
#   custTextField11 - SOAP::SOAPString
#   custTextField12 - SOAP::SOAPString
#   custTextField13 - SOAP::SOAPString
#   custTextField14 - SOAP::SOAPString
#   custTextField15 - SOAP::SOAPString
#   custTextField16 - SOAP::SOAPString
#   custTextField17 - SOAP::SOAPString
#   custTextField18 - SOAP::SOAPString
#   custTextField19 - SOAP::SOAPString
#   custTextField2 - SOAP::SOAPString
#   custTextField20 - SOAP::SOAPString
#   custTextField21 - SOAP::SOAPString
#   custTextField22 - SOAP::SOAPString
#   custTextField23 - SOAP::SOAPString
#   custTextField24 - SOAP::SOAPString
#   custTextField25 - SOAP::SOAPString
#   custTextField26 - SOAP::SOAPString
#   custTextField27 - SOAP::SOAPString
#   custTextField28 - SOAP::SOAPString
#   custTextField29 - SOAP::SOAPString
#   custTextField3 - SOAP::SOAPString
#   custTextField30 - SOAP::SOAPString
#   custTextField31 - SOAP::SOAPString
#   custTextField32 - SOAP::SOAPString
#   custTextField33 - SOAP::SOAPString
#   custTextField34 - SOAP::SOAPString
#   custTextField35 - SOAP::SOAPString
#   custTextField36 - SOAP::SOAPString
#   custTextField37 - SOAP::SOAPString
#   custTextField38 - SOAP::SOAPString
#   custTextField39 - SOAP::SOAPString
#   custTextField4 - SOAP::SOAPString
#   custTextField40 - SOAP::SOAPString
#   custTextField41 - SOAP::SOAPString
#   custTextField42 - SOAP::SOAPString
#   custTextField43 - SOAP::SOAPString
#   custTextField44 - SOAP::SOAPString
#   custTextField45 - SOAP::SOAPString
#   custTextField46 - SOAP::SOAPString
#   custTextField47 - SOAP::SOAPString
#   custTextField48 - SOAP::SOAPString
#   custTextField49 - SOAP::SOAPString
#   custTextField5 - SOAP::SOAPString
#   custTextField50 - SOAP::SOAPString
#   custTextField6 - SOAP::SOAPString
#   custTextField7 - SOAP::SOAPString
#   custTextField8 - SOAP::SOAPString
#   custTextField9 - SOAP::SOAPString
#   customDateFields - ApiCI::CustomDateFields
#   customFields - ApiCI::CustomFields
#   historyVersion - SOAP::SOAPInt
#   id - SOAP::SOAPInt
#   location - SOAP::SOAPInt
#   notes - SOAP::SOAPString
#   owner - SOAP::SOAPString
#   ownerGroup - SOAP::SOAPString
#   priority - SOAP::SOAPInt
#   serialNumber - SOAP::SOAPString
#   status - SOAP::SOAPInt
#   subCategory - SOAP::SOAPString
#   supplier - SOAP::SOAPInt
#   supplyDate - SOAP::SOAPDateTime
#   thirdLevelCategory - SOAP::SOAPString
#   users - SOAP::SOAPString
class ApiCI < ApiSysaidObject

  # inner class for member: customDateFields
  # {}customDateFields
  class CustomDateFields < ::Array

    # {}entry
    #   key - (any)
    #   value - (any)
    class Entry
      attr_accessor :key
      attr_accessor :value

      def initialize(key = nil, value = nil)
        @key = key
        @value = value
      end
    end
  end

  # inner class for member: customFields
  # {}customFields
  class CustomFields < ::Array

    # {}entry
    #   key - (any)
    #   value - (any)
    class Entry
      attr_accessor :key
      attr_accessor :value

      def initialize(key = nil, value = nil)
        @key = key
        @value = value
      end
    end
  end

  attr_accessor :acceptDate
  attr_accessor :category
  attr_accessor :ciName
  attr_accessor :ciSubType
  attr_accessor :ciType
  attr_accessor :company
  attr_accessor :custDateField1
  attr_accessor :custDateField10
  attr_accessor :custDateField11
  attr_accessor :custDateField12
  attr_accessor :custDateField13
  attr_accessor :custDateField14
  attr_accessor :custDateField15
  attr_accessor :custDateField16
  attr_accessor :custDateField17
  attr_accessor :custDateField18
  attr_accessor :custDateField19
  attr_accessor :custDateField2
  attr_accessor :custDateField20
  attr_accessor :custDateField21
  attr_accessor :custDateField22
  attr_accessor :custDateField23
  attr_accessor :custDateField24
  attr_accessor :custDateField25
  attr_accessor :custDateField26
  attr_accessor :custDateField27
  attr_accessor :custDateField28
  attr_accessor :custDateField29
  attr_accessor :custDateField3
  attr_accessor :custDateField30
  attr_accessor :custDateField31
  attr_accessor :custDateField32
  attr_accessor :custDateField33
  attr_accessor :custDateField34
  attr_accessor :custDateField35
  attr_accessor :custDateField36
  attr_accessor :custDateField37
  attr_accessor :custDateField38
  attr_accessor :custDateField39
  attr_accessor :custDateField4
  attr_accessor :custDateField40
  attr_accessor :custDateField41
  attr_accessor :custDateField42
  attr_accessor :custDateField43
  attr_accessor :custDateField44
  attr_accessor :custDateField45
  attr_accessor :custDateField46
  attr_accessor :custDateField47
  attr_accessor :custDateField48
  attr_accessor :custDateField49
  attr_accessor :custDateField5
  attr_accessor :custDateField50
  attr_accessor :custDateField6
  attr_accessor :custDateField7
  attr_accessor :custDateField8
  attr_accessor :custDateField9
  attr_accessor :custIntField1
  attr_accessor :custIntField10
  attr_accessor :custIntField11
  attr_accessor :custIntField12
  attr_accessor :custIntField13
  attr_accessor :custIntField14
  attr_accessor :custIntField15
  attr_accessor :custIntField16
  attr_accessor :custIntField17
  attr_accessor :custIntField18
  attr_accessor :custIntField19
  attr_accessor :custIntField2
  attr_accessor :custIntField20
  attr_accessor :custIntField21
  attr_accessor :custIntField22
  attr_accessor :custIntField23
  attr_accessor :custIntField24
  attr_accessor :custIntField25
  attr_accessor :custIntField26
  attr_accessor :custIntField27
  attr_accessor :custIntField28
  attr_accessor :custIntField29
  attr_accessor :custIntField3
  attr_accessor :custIntField30
  attr_accessor :custIntField31
  attr_accessor :custIntField32
  attr_accessor :custIntField33
  attr_accessor :custIntField34
  attr_accessor :custIntField35
  attr_accessor :custIntField36
  attr_accessor :custIntField37
  attr_accessor :custIntField38
  attr_accessor :custIntField39
  attr_accessor :custIntField4
  attr_accessor :custIntField40
  attr_accessor :custIntField41
  attr_accessor :custIntField42
  attr_accessor :custIntField43
  attr_accessor :custIntField44
  attr_accessor :custIntField45
  attr_accessor :custIntField46
  attr_accessor :custIntField47
  attr_accessor :custIntField48
  attr_accessor :custIntField49
  attr_accessor :custIntField5
  attr_accessor :custIntField50
  attr_accessor :custIntField6
  attr_accessor :custIntField7
  attr_accessor :custIntField8
  attr_accessor :custIntField9
  attr_accessor :custListField1
  attr_accessor :custListField10
  attr_accessor :custListField11
  attr_accessor :custListField12
  attr_accessor :custListField13
  attr_accessor :custListField14
  attr_accessor :custListField15
  attr_accessor :custListField16
  attr_accessor :custListField17
  attr_accessor :custListField18
  attr_accessor :custListField19
  attr_accessor :custListField2
  attr_accessor :custListField20
  attr_accessor :custListField21
  attr_accessor :custListField22
  attr_accessor :custListField23
  attr_accessor :custListField24
  attr_accessor :custListField25
  attr_accessor :custListField26
  attr_accessor :custListField27
  attr_accessor :custListField28
  attr_accessor :custListField29
  attr_accessor :custListField3
  attr_accessor :custListField30
  attr_accessor :custListField31
  attr_accessor :custListField32
  attr_accessor :custListField33
  attr_accessor :custListField34
  attr_accessor :custListField35
  attr_accessor :custListField36
  attr_accessor :custListField37
  attr_accessor :custListField38
  attr_accessor :custListField39
  attr_accessor :custListField4
  attr_accessor :custListField40
  attr_accessor :custListField41
  attr_accessor :custListField42
  attr_accessor :custListField43
  attr_accessor :custListField44
  attr_accessor :custListField45
  attr_accessor :custListField46
  attr_accessor :custListField47
  attr_accessor :custListField48
  attr_accessor :custListField49
  attr_accessor :custListField5
  attr_accessor :custListField50
  attr_accessor :custListField6
  attr_accessor :custListField7
  attr_accessor :custListField8
  attr_accessor :custListField9
  attr_accessor :custLongTextField1
  attr_accessor :custLongTextField10
  attr_accessor :custLongTextField11
  attr_accessor :custLongTextField12
  attr_accessor :custLongTextField13
  attr_accessor :custLongTextField14
  attr_accessor :custLongTextField15
  attr_accessor :custLongTextField16
  attr_accessor :custLongTextField17
  attr_accessor :custLongTextField18
  attr_accessor :custLongTextField19
  attr_accessor :custLongTextField2
  attr_accessor :custLongTextField20
  attr_accessor :custLongTextField21
  attr_accessor :custLongTextField22
  attr_accessor :custLongTextField23
  attr_accessor :custLongTextField24
  attr_accessor :custLongTextField25
  attr_accessor :custLongTextField26
  attr_accessor :custLongTextField27
  attr_accessor :custLongTextField28
  attr_accessor :custLongTextField29
  attr_accessor :custLongTextField3
  attr_accessor :custLongTextField30
  attr_accessor :custLongTextField31
  attr_accessor :custLongTextField32
  attr_accessor :custLongTextField33
  attr_accessor :custLongTextField34
  attr_accessor :custLongTextField35
  attr_accessor :custLongTextField36
  attr_accessor :custLongTextField37
  attr_accessor :custLongTextField38
  attr_accessor :custLongTextField39
  attr_accessor :custLongTextField4
  attr_accessor :custLongTextField40
  attr_accessor :custLongTextField41
  attr_accessor :custLongTextField42
  attr_accessor :custLongTextField43
  attr_accessor :custLongTextField44
  attr_accessor :custLongTextField45
  attr_accessor :custLongTextField46
  attr_accessor :custLongTextField47
  attr_accessor :custLongTextField48
  attr_accessor :custLongTextField49
  attr_accessor :custLongTextField5
  attr_accessor :custLongTextField50
  attr_accessor :custLongTextField6
  attr_accessor :custLongTextField7
  attr_accessor :custLongTextField8
  attr_accessor :custLongTextField9
  attr_accessor :custTextField1
  attr_accessor :custTextField10
  attr_accessor :custTextField11
  attr_accessor :custTextField12
  attr_accessor :custTextField13
  attr_accessor :custTextField14
  attr_accessor :custTextField15
  attr_accessor :custTextField16
  attr_accessor :custTextField17
  attr_accessor :custTextField18
  attr_accessor :custTextField19
  attr_accessor :custTextField2
  attr_accessor :custTextField20
  attr_accessor :custTextField21
  attr_accessor :custTextField22
  attr_accessor :custTextField23
  attr_accessor :custTextField24
  attr_accessor :custTextField25
  attr_accessor :custTextField26
  attr_accessor :custTextField27
  attr_accessor :custTextField28
  attr_accessor :custTextField29
  attr_accessor :custTextField3
  attr_accessor :custTextField30
  attr_accessor :custTextField31
  attr_accessor :custTextField32
  attr_accessor :custTextField33
  attr_accessor :custTextField34
  attr_accessor :custTextField35
  attr_accessor :custTextField36
  attr_accessor :custTextField37
  attr_accessor :custTextField38
  attr_accessor :custTextField39
  attr_accessor :custTextField4
  attr_accessor :custTextField40
  attr_accessor :custTextField41
  attr_accessor :custTextField42
  attr_accessor :custTextField43
  attr_accessor :custTextField44
  attr_accessor :custTextField45
  attr_accessor :custTextField46
  attr_accessor :custTextField47
  attr_accessor :custTextField48
  attr_accessor :custTextField49
  attr_accessor :custTextField5
  attr_accessor :custTextField50
  attr_accessor :custTextField6
  attr_accessor :custTextField7
  attr_accessor :custTextField8
  attr_accessor :custTextField9
  attr_accessor :customDateFields
  attr_accessor :customFields
  attr_accessor :historyVersion
  attr_accessor :id
  attr_accessor :location
  attr_accessor :notes
  attr_accessor :owner
  attr_accessor :ownerGroup
  attr_accessor :priority
  attr_accessor :serialNumber
  attr_accessor :status
  attr_accessor :subCategory
  attr_accessor :supplier
  attr_accessor :supplyDate
  attr_accessor :thirdLevelCategory
  attr_accessor :users

  def initialize(acceptDate = nil, category = nil, ciName = nil, ciSubType = nil, ciType = nil, company = nil, custDateField1 = nil, custDateField10 = nil, custDateField11 = nil, custDateField12 = nil, custDateField13 = nil, custDateField14 = nil, custDateField15 = nil, custDateField16 = nil, custDateField17 = nil, custDateField18 = nil, custDateField19 = nil, custDateField2 = nil, custDateField20 = nil, custDateField21 = nil, custDateField22 = nil, custDateField23 = nil, custDateField24 = nil, custDateField25 = nil, custDateField26 = nil, custDateField27 = nil, custDateField28 = nil, custDateField29 = nil, custDateField3 = nil, custDateField30 = nil, custDateField31 = nil, custDateField32 = nil, custDateField33 = nil, custDateField34 = nil, custDateField35 = nil, custDateField36 = nil, custDateField37 = nil, custDateField38 = nil, custDateField39 = nil, custDateField4 = nil, custDateField40 = nil, custDateField41 = nil, custDateField42 = nil, custDateField43 = nil, custDateField44 = nil, custDateField45 = nil, custDateField46 = nil, custDateField47 = nil, custDateField48 = nil, custDateField49 = nil, custDateField5 = nil, custDateField50 = nil, custDateField6 = nil, custDateField7 = nil, custDateField8 = nil, custDateField9 = nil, custIntField1 = nil, custIntField10 = nil, custIntField11 = nil, custIntField12 = nil, custIntField13 = nil, custIntField14 = nil, custIntField15 = nil, custIntField16 = nil, custIntField17 = nil, custIntField18 = nil, custIntField19 = nil, custIntField2 = nil, custIntField20 = nil, custIntField21 = nil, custIntField22 = nil, custIntField23 = nil, custIntField24 = nil, custIntField25 = nil, custIntField26 = nil, custIntField27 = nil, custIntField28 = nil, custIntField29 = nil, custIntField3 = nil, custIntField30 = nil, custIntField31 = nil, custIntField32 = nil, custIntField33 = nil, custIntField34 = nil, custIntField35 = nil, custIntField36 = nil, custIntField37 = nil, custIntField38 = nil, custIntField39 = nil, custIntField4 = nil, custIntField40 = nil, custIntField41 = nil, custIntField42 = nil, custIntField43 = nil, custIntField44 = nil, custIntField45 = nil, custIntField46 = nil, custIntField47 = nil, custIntField48 = nil, custIntField49 = nil, custIntField5 = nil, custIntField50 = nil, custIntField6 = nil, custIntField7 = nil, custIntField8 = nil, custIntField9 = nil, custListField1 = nil, custListField10 = nil, custListField11 = nil, custListField12 = nil, custListField13 = nil, custListField14 = nil, custListField15 = nil, custListField16 = nil, custListField17 = nil, custListField18 = nil, custListField19 = nil, custListField2 = nil, custListField20 = nil, custListField21 = nil, custListField22 = nil, custListField23 = nil, custListField24 = nil, custListField25 = nil, custListField26 = nil, custListField27 = nil, custListField28 = nil, custListField29 = nil, custListField3 = nil, custListField30 = nil, custListField31 = nil, custListField32 = nil, custListField33 = nil, custListField34 = nil, custListField35 = nil, custListField36 = nil, custListField37 = nil, custListField38 = nil, custListField39 = nil, custListField4 = nil, custListField40 = nil, custListField41 = nil, custListField42 = nil, custListField43 = nil, custListField44 = nil, custListField45 = nil, custListField46 = nil, custListField47 = nil, custListField48 = nil, custListField49 = nil, custListField5 = nil, custListField50 = nil, custListField6 = nil, custListField7 = nil, custListField8 = nil, custListField9 = nil, custLongTextField1 = nil, custLongTextField10 = nil, custLongTextField11 = nil, custLongTextField12 = nil, custLongTextField13 = nil, custLongTextField14 = nil, custLongTextField15 = nil, custLongTextField16 = nil, custLongTextField17 = nil, custLongTextField18 = nil, custLongTextField19 = nil, custLongTextField2 = nil, custLongTextField20 = nil, custLongTextField21 = nil, custLongTextField22 = nil, custLongTextField23 = nil, custLongTextField24 = nil, custLongTextField25 = nil, custLongTextField26 = nil, custLongTextField27 = nil, custLongTextField28 = nil, custLongTextField29 = nil, custLongTextField3 = nil, custLongTextField30 = nil, custLongTextField31 = nil, custLongTextField32 = nil, custLongTextField33 = nil, custLongTextField34 = nil, custLongTextField35 = nil, custLongTextField36 = nil, custLongTextField37 = nil, custLongTextField38 = nil, custLongTextField39 = nil, custLongTextField4 = nil, custLongTextField40 = nil, custLongTextField41 = nil, custLongTextField42 = nil, custLongTextField43 = nil, custLongTextField44 = nil, custLongTextField45 = nil, custLongTextField46 = nil, custLongTextField47 = nil, custLongTextField48 = nil, custLongTextField49 = nil, custLongTextField5 = nil, custLongTextField50 = nil, custLongTextField6 = nil, custLongTextField7 = nil, custLongTextField8 = nil, custLongTextField9 = nil, custTextField1 = nil, custTextField10 = nil, custTextField11 = nil, custTextField12 = nil, custTextField13 = nil, custTextField14 = nil, custTextField15 = nil, custTextField16 = nil, custTextField17 = nil, custTextField18 = nil, custTextField19 = nil, custTextField2 = nil, custTextField20 = nil, custTextField21 = nil, custTextField22 = nil, custTextField23 = nil, custTextField24 = nil, custTextField25 = nil, custTextField26 = nil, custTextField27 = nil, custTextField28 = nil, custTextField29 = nil, custTextField3 = nil, custTextField30 = nil, custTextField31 = nil, custTextField32 = nil, custTextField33 = nil, custTextField34 = nil, custTextField35 = nil, custTextField36 = nil, custTextField37 = nil, custTextField38 = nil, custTextField39 = nil, custTextField4 = nil, custTextField40 = nil, custTextField41 = nil, custTextField42 = nil, custTextField43 = nil, custTextField44 = nil, custTextField45 = nil, custTextField46 = nil, custTextField47 = nil, custTextField48 = nil, custTextField49 = nil, custTextField5 = nil, custTextField50 = nil, custTextField6 = nil, custTextField7 = nil, custTextField8 = nil, custTextField9 = nil, customDateFields = nil, customFields = nil, historyVersion = nil, id = nil, location = nil, notes = nil, owner = nil, ownerGroup = nil, priority = nil, serialNumber = nil, status = nil, subCategory = nil, supplier = nil, supplyDate = nil, thirdLevelCategory = nil, users = nil)
    @acceptDate = acceptDate
    @category = category
    @ciName = ciName
    @ciSubType = ciSubType
    @ciType = ciType
    @company = company
    @custDateField1 = custDateField1
    @custDateField10 = custDateField10
    @custDateField11 = custDateField11
    @custDateField12 = custDateField12
    @custDateField13 = custDateField13
    @custDateField14 = custDateField14
    @custDateField15 = custDateField15
    @custDateField16 = custDateField16
    @custDateField17 = custDateField17
    @custDateField18 = custDateField18
    @custDateField19 = custDateField19
    @custDateField2 = custDateField2
    @custDateField20 = custDateField20
    @custDateField21 = custDateField21
    @custDateField22 = custDateField22
    @custDateField23 = custDateField23
    @custDateField24 = custDateField24
    @custDateField25 = custDateField25
    @custDateField26 = custDateField26
    @custDateField27 = custDateField27
    @custDateField28 = custDateField28
    @custDateField29 = custDateField29
    @custDateField3 = custDateField3
    @custDateField30 = custDateField30
    @custDateField31 = custDateField31
    @custDateField32 = custDateField32
    @custDateField33 = custDateField33
    @custDateField34 = custDateField34
    @custDateField35 = custDateField35
    @custDateField36 = custDateField36
    @custDateField37 = custDateField37
    @custDateField38 = custDateField38
    @custDateField39 = custDateField39
    @custDateField4 = custDateField4
    @custDateField40 = custDateField40
    @custDateField41 = custDateField41
    @custDateField42 = custDateField42
    @custDateField43 = custDateField43
    @custDateField44 = custDateField44
    @custDateField45 = custDateField45
    @custDateField46 = custDateField46
    @custDateField47 = custDateField47
    @custDateField48 = custDateField48
    @custDateField49 = custDateField49
    @custDateField5 = custDateField5
    @custDateField50 = custDateField50
    @custDateField6 = custDateField6
    @custDateField7 = custDateField7
    @custDateField8 = custDateField8
    @custDateField9 = custDateField9
    @custIntField1 = custIntField1
    @custIntField10 = custIntField10
    @custIntField11 = custIntField11
    @custIntField12 = custIntField12
    @custIntField13 = custIntField13
    @custIntField14 = custIntField14
    @custIntField15 = custIntField15
    @custIntField16 = custIntField16
    @custIntField17 = custIntField17
    @custIntField18 = custIntField18
    @custIntField19 = custIntField19
    @custIntField2 = custIntField2
    @custIntField20 = custIntField20
    @custIntField21 = custIntField21
    @custIntField22 = custIntField22
    @custIntField23 = custIntField23
    @custIntField24 = custIntField24
    @custIntField25 = custIntField25
    @custIntField26 = custIntField26
    @custIntField27 = custIntField27
    @custIntField28 = custIntField28
    @custIntField29 = custIntField29
    @custIntField3 = custIntField3
    @custIntField30 = custIntField30
    @custIntField31 = custIntField31
    @custIntField32 = custIntField32
    @custIntField33 = custIntField33
    @custIntField34 = custIntField34
    @custIntField35 = custIntField35
    @custIntField36 = custIntField36
    @custIntField37 = custIntField37
    @custIntField38 = custIntField38
    @custIntField39 = custIntField39
    @custIntField4 = custIntField4
    @custIntField40 = custIntField40
    @custIntField41 = custIntField41
    @custIntField42 = custIntField42
    @custIntField43 = custIntField43
    @custIntField44 = custIntField44
    @custIntField45 = custIntField45
    @custIntField46 = custIntField46
    @custIntField47 = custIntField47
    @custIntField48 = custIntField48
    @custIntField49 = custIntField49
    @custIntField5 = custIntField5
    @custIntField50 = custIntField50
    @custIntField6 = custIntField6
    @custIntField7 = custIntField7
    @custIntField8 = custIntField8
    @custIntField9 = custIntField9
    @custListField1 = custListField1
    @custListField10 = custListField10
    @custListField11 = custListField11
    @custListField12 = custListField12
    @custListField13 = custListField13
    @custListField14 = custListField14
    @custListField15 = custListField15
    @custListField16 = custListField16
    @custListField17 = custListField17
    @custListField18 = custListField18
    @custListField19 = custListField19
    @custListField2 = custListField2
    @custListField20 = custListField20
    @custListField21 = custListField21
    @custListField22 = custListField22
    @custListField23 = custListField23
    @custListField24 = custListField24
    @custListField25 = custListField25
    @custListField26 = custListField26
    @custListField27 = custListField27
    @custListField28 = custListField28
    @custListField29 = custListField29
    @custListField3 = custListField3
    @custListField30 = custListField30
    @custListField31 = custListField31
    @custListField32 = custListField32
    @custListField33 = custListField33
    @custListField34 = custListField34
    @custListField35 = custListField35
    @custListField36 = custListField36
    @custListField37 = custListField37
    @custListField38 = custListField38
    @custListField39 = custListField39
    @custListField4 = custListField4
    @custListField40 = custListField40
    @custListField41 = custListField41
    @custListField42 = custListField42
    @custListField43 = custListField43
    @custListField44 = custListField44
    @custListField45 = custListField45
    @custListField46 = custListField46
    @custListField47 = custListField47
    @custListField48 = custListField48
    @custListField49 = custListField49
    @custListField5 = custListField5
    @custListField50 = custListField50
    @custListField6 = custListField6
    @custListField7 = custListField7
    @custListField8 = custListField8
    @custListField9 = custListField9
    @custLongTextField1 = custLongTextField1
    @custLongTextField10 = custLongTextField10
    @custLongTextField11 = custLongTextField11
    @custLongTextField12 = custLongTextField12
    @custLongTextField13 = custLongTextField13
    @custLongTextField14 = custLongTextField14
    @custLongTextField15 = custLongTextField15
    @custLongTextField16 = custLongTextField16
    @custLongTextField17 = custLongTextField17
    @custLongTextField18 = custLongTextField18
    @custLongTextField19 = custLongTextField19
    @custLongTextField2 = custLongTextField2
    @custLongTextField20 = custLongTextField20
    @custLongTextField21 = custLongTextField21
    @custLongTextField22 = custLongTextField22
    @custLongTextField23 = custLongTextField23
    @custLongTextField24 = custLongTextField24
    @custLongTextField25 = custLongTextField25
    @custLongTextField26 = custLongTextField26
    @custLongTextField27 = custLongTextField27
    @custLongTextField28 = custLongTextField28
    @custLongTextField29 = custLongTextField29
    @custLongTextField3 = custLongTextField3
    @custLongTextField30 = custLongTextField30
    @custLongTextField31 = custLongTextField31
    @custLongTextField32 = custLongTextField32
    @custLongTextField33 = custLongTextField33
    @custLongTextField34 = custLongTextField34
    @custLongTextField35 = custLongTextField35
    @custLongTextField36 = custLongTextField36
    @custLongTextField37 = custLongTextField37
    @custLongTextField38 = custLongTextField38
    @custLongTextField39 = custLongTextField39
    @custLongTextField4 = custLongTextField4
    @custLongTextField40 = custLongTextField40
    @custLongTextField41 = custLongTextField41
    @custLongTextField42 = custLongTextField42
    @custLongTextField43 = custLongTextField43
    @custLongTextField44 = custLongTextField44
    @custLongTextField45 = custLongTextField45
    @custLongTextField46 = custLongTextField46
    @custLongTextField47 = custLongTextField47
    @custLongTextField48 = custLongTextField48
    @custLongTextField49 = custLongTextField49
    @custLongTextField5 = custLongTextField5
    @custLongTextField50 = custLongTextField50
    @custLongTextField6 = custLongTextField6
    @custLongTextField7 = custLongTextField7
    @custLongTextField8 = custLongTextField8
    @custLongTextField9 = custLongTextField9
    @custTextField1 = custTextField1
    @custTextField10 = custTextField10
    @custTextField11 = custTextField11
    @custTextField12 = custTextField12
    @custTextField13 = custTextField13
    @custTextField14 = custTextField14
    @custTextField15 = custTextField15
    @custTextField16 = custTextField16
    @custTextField17 = custTextField17
    @custTextField18 = custTextField18
    @custTextField19 = custTextField19
    @custTextField2 = custTextField2
    @custTextField20 = custTextField20
    @custTextField21 = custTextField21
    @custTextField22 = custTextField22
    @custTextField23 = custTextField23
    @custTextField24 = custTextField24
    @custTextField25 = custTextField25
    @custTextField26 = custTextField26
    @custTextField27 = custTextField27
    @custTextField28 = custTextField28
    @custTextField29 = custTextField29
    @custTextField3 = custTextField3
    @custTextField30 = custTextField30
    @custTextField31 = custTextField31
    @custTextField32 = custTextField32
    @custTextField33 = custTextField33
    @custTextField34 = custTextField34
    @custTextField35 = custTextField35
    @custTextField36 = custTextField36
    @custTextField37 = custTextField37
    @custTextField38 = custTextField38
    @custTextField39 = custTextField39
    @custTextField4 = custTextField4
    @custTextField40 = custTextField40
    @custTextField41 = custTextField41
    @custTextField42 = custTextField42
    @custTextField43 = custTextField43
    @custTextField44 = custTextField44
    @custTextField45 = custTextField45
    @custTextField46 = custTextField46
    @custTextField47 = custTextField47
    @custTextField48 = custTextField48
    @custTextField49 = custTextField49
    @custTextField5 = custTextField5
    @custTextField50 = custTextField50
    @custTextField6 = custTextField6
    @custTextField7 = custTextField7
    @custTextField8 = custTextField8
    @custTextField9 = custTextField9
    @customDateFields = customDateFields
    @customFields = customFields
    @historyVersion = historyVersion
    @id = id
    @location = location
    @notes = notes
    @owner = owner
    @ownerGroup = ownerGroup
    @priority = priority
    @serialNumber = serialNumber
    @status = status
    @subCategory = subCategory
    @supplier = supplier
    @supplyDate = supplyDate
    @thirdLevelCategory = thirdLevelCategory
    @users = users
  end
end

# {http://api.ilient.com/}apiServiceRequest
#   agreement - SOAP::SOAPInt
#   assignCounter - SOAP::SOAPInt
#   assignedGroup - SOAP::SOAPString
#   assignedTo - SOAP::SOAPString
#   cIId - SOAP::SOAPInt
#   category - SOAP::SOAPString
#   cc - SOAP::SOAPString
#   closeTime - SOAP::SOAPDateTime
#   computerID - SOAP::SOAPString
#   currentSupportLevel - SOAP::SOAPInt
#   custDate1 - SOAP::SOAPDateTime
#   custDate2 - SOAP::SOAPDateTime
#   custInt1 - SOAP::SOAPInt
#   custInt2 - SOAP::SOAPInt
#   custList1 - SOAP::SOAPInt
#   custList2 - SOAP::SOAPInt
#   custNotes - SOAP::SOAPString
#   custText1 - SOAP::SOAPString
#   custText2 - SOAP::SOAPString
#   customDateFields - ApiServiceRequest::CustomDateFields
#   customFields - ApiServiceRequest::CustomFields
#   description - SOAP::SOAPString
#   dueDate - SOAP::SOAPDateTime
#   emailAccount - SOAP::SOAPString
#   escalation - SOAP::SOAPInt
#   followupActualDate - SOAP::SOAPDateTime
#   followupPlannedDate - SOAP::SOAPDateTime
#   followupText - SOAP::SOAPString
#   followupUser - SOAP::SOAPString
#   id - SOAP::SOAPInt
#   insertTime - SOAP::SOAPDateTime
#   location - SOAP::SOAPInt
#   maxSupportLevel - SOAP::SOAPInt
#   notes - SOAP::SOAPString
#   parentLink - SOAP::SOAPInt
#   priority - SOAP::SOAPInt
#   projectID - SOAP::SOAPInt
#   reopenCounter - SOAP::SOAPInt
#   requestUser - SOAP::SOAPString
#   resolution - SOAP::SOAPString
#   responsibleManager - SOAP::SOAPString
#   solution - SOAP::SOAPString
#   source - SOAP::SOAPInt
#   srSubType - SOAP::SOAPInt
#   srType - SOAP::SOAPInt
#   status - SOAP::SOAPInt
#   subCategory - SOAP::SOAPString
#   submitUser - SOAP::SOAPString
#   successRating - SOAP::SOAPInt
#   taskID - SOAP::SOAPInt
#   thirdLevelCategory - SOAP::SOAPString
#   title - SOAP::SOAPString
#   updateTime - SOAP::SOAPDateTime
#   updateUser - SOAP::SOAPString
#   urgency - SOAP::SOAPInt
#   userManager - SOAP::SOAPString
#   version - SOAP::SOAPInt
class ApiServiceRequest < ApiSysaidObject

  # inner class for member: customDateFields
  # {}customDateFields
  class CustomDateFields < ::Array

    # {}entry
    #   key - (any)
    #   value - (any)
    class Entry
      attr_accessor :key
      attr_accessor :value

      def initialize(key = nil, value = nil)
        @key = key
        @value = value
      end
    end
  end

  # inner class for member: customFields
  # {}customFields
  class CustomFields < ::Array

    # {}entry
    #   key - (any)
    #   value - (any)
    class Entry
      attr_accessor :key
      attr_accessor :value

      def initialize(key = nil, value = nil)
        @key = key
        @value = value
      end
    end
  end

  attr_accessor :agreement
  attr_accessor :assignCounter
  attr_accessor :assignedGroup
  attr_accessor :assignedTo
  attr_accessor :cIId
  attr_accessor :category
  attr_accessor :cc
  attr_accessor :closeTime
  attr_accessor :computerID
  attr_accessor :currentSupportLevel
  attr_accessor :custDate1
  attr_accessor :custDate2
  attr_accessor :custInt1
  attr_accessor :custInt2
  attr_accessor :custList1
  attr_accessor :custList2
  attr_accessor :custNotes
  attr_accessor :custText1
  attr_accessor :custText2
  attr_accessor :customDateFields
  attr_accessor :customFields
  attr_accessor :description
  attr_accessor :dueDate
  attr_accessor :emailAccount
  attr_accessor :escalation
  attr_accessor :followupActualDate
  attr_accessor :followupPlannedDate
  attr_accessor :followupText
  attr_accessor :followupUser
  attr_accessor :id
  attr_accessor :insertTime
  attr_accessor :location
  attr_accessor :maxSupportLevel
  attr_accessor :notes
  attr_accessor :parentLink
  attr_accessor :priority
  attr_accessor :projectID
  attr_accessor :reopenCounter
  attr_accessor :requestUser
  attr_accessor :resolution
  attr_accessor :responsibleManager
  attr_accessor :solution
  attr_accessor :source
  attr_accessor :srSubType
  attr_accessor :srType
  attr_accessor :status
  attr_accessor :subCategory
  attr_accessor :submitUser
  attr_accessor :successRating
  attr_accessor :taskID
  attr_accessor :thirdLevelCategory
  attr_accessor :title
  attr_accessor :updateTime
  attr_accessor :updateUser
  attr_accessor :urgency
  attr_accessor :userManager
  attr_accessor :version

  def initialize(agreement = nil, assignCounter = nil, assignedGroup = nil, assignedTo = nil, cIId = nil, category = nil, cc = nil, closeTime = nil, computerID = nil, currentSupportLevel = nil, custDate1 = nil, custDate2 = nil, custInt1 = nil, custInt2 = nil, custList1 = nil, custList2 = nil, custNotes = nil, custText1 = nil, custText2 = nil, customDateFields = nil, customFields = nil, description = nil, dueDate = nil, emailAccount = nil, escalation = nil, followupActualDate = nil, followupPlannedDate = nil, followupText = nil, followupUser = nil, id = nil, insertTime = nil, location = nil, maxSupportLevel = nil, notes = nil, parentLink = nil, priority = nil, projectID = nil, reopenCounter = nil, requestUser = nil, resolution = nil, responsibleManager = nil, solution = nil, source = nil, srSubType = nil, srType = nil, status = nil, subCategory = nil, submitUser = nil, successRating = nil, taskID = nil, thirdLevelCategory = nil, title = nil, updateTime = nil, updateUser = nil, urgency = nil, userManager = nil, version = nil)
    @agreement = agreement
    @assignCounter = assignCounter
    @assignedGroup = assignedGroup
    @assignedTo = assignedTo
    @cIId = cIId
    @category = category
    @cc = cc
    @closeTime = closeTime
    @computerID = computerID
    @currentSupportLevel = currentSupportLevel
    @custDate1 = custDate1
    @custDate2 = custDate2
    @custInt1 = custInt1
    @custInt2 = custInt2
    @custList1 = custList1
    @custList2 = custList2
    @custNotes = custNotes
    @custText1 = custText1
    @custText2 = custText2
    @customDateFields = customDateFields
    @customFields = customFields
    @description = description
    @dueDate = dueDate
    @emailAccount = emailAccount
    @escalation = escalation
    @followupActualDate = followupActualDate
    @followupPlannedDate = followupPlannedDate
    @followupText = followupText
    @followupUser = followupUser
    @id = id
    @insertTime = insertTime
    @location = location
    @maxSupportLevel = maxSupportLevel
    @notes = notes
    @parentLink = parentLink
    @priority = priority
    @projectID = projectID
    @reopenCounter = reopenCounter
    @requestUser = requestUser
    @resolution = resolution
    @responsibleManager = responsibleManager
    @solution = solution
    @source = source
    @srSubType = srSubType
    @srType = srType
    @status = status
    @subCategory = subCategory
    @submitUser = submitUser
    @successRating = successRating
    @taskID = taskID
    @thirdLevelCategory = thirdLevelCategory
    @title = title
    @updateTime = updateTime
    @updateUser = updateUser
    @urgency = urgency
    @userManager = userManager
    @version = version
  end
end

# {http://api.ilient.com/}apiComputer
#   agentVersion - SOAP::SOAPString
#   biosType - SOAP::SOAPString
#   building - SOAP::SOAPString
#   cIId - SOAP::SOAPInt
#   catalogNumber - SOAP::SOAPString
#   collectionParams - SOAP::SOAPString
#   collectionType - SOAP::SOAPInt
#   company - SOAP::SOAPInt
#   companySerial - SOAP::SOAPString
#   computerID - SOAP::SOAPString
#   computerName - SOAP::SOAPString
#   cpuCount - SOAP::SOAPInt
#   cpuModel - SOAP::SOAPString
#   cpuSpeed - SOAP::SOAPInt
#   cpuVendor - SOAP::SOAPString
#   cubic - SOAP::SOAPString
#   custDate1 - SOAP::SOAPDateTime
#   custDate2 - SOAP::SOAPDateTime
#   custInt1 - SOAP::SOAPInt
#   custInt2 - SOAP::SOAPInt
#   custList1 - SOAP::SOAPInt
#   custList2 - SOAP::SOAPInt
#   custNotes - SOAP::SOAPString
#   custText1 - SOAP::SOAPString
#   custText2 - SOAP::SOAPString
#   customDateFields - ApiComputer::CustomDateFields
#   customFields - ApiComputer::CustomFields
#   department - SOAP::SOAPInt
#   description - SOAP::SOAPString
#   disable - SOAP::SOAPBoolean
#   disksCount - SOAP::SOAPInt
#   disksSize - SOAP::SOAPInt
#   displayAdapter - SOAP::SOAPString
#   displayMemory - SOAP::SOAPInt
#   displayResolution - SOAP::SOAPString
#   externalSerial - SOAP::SOAPString
#   floor - SOAP::SOAPString
#   freeMemBanks - SOAP::SOAPInt
#   groupName - SOAP::SOAPString
#   ipAddress - SOAP::SOAPString
#   lastMaintenanceDate - SOAP::SOAPDateTime
#   locationIdx - SOAP::SOAPInt
#   macAddress - SOAP::SOAPString
#   maintenanceSupplierID - SOAP::SOAPInt
#   memBanks - SOAP::SOAPInt
#   memoryPhysical - SOAP::SOAPLong
#   monitor - SOAP::SOAPString
#   monitorSerial - SOAP::SOAPString
#   oSName - SOAP::SOAPString
#   oSPlatform - SOAP::SOAPString
#   oSServicePack - SOAP::SOAPString
#   oSVersion - SOAP::SOAPString
#   occupiedMemBanks - SOAP::SOAPInt
#   packetsIn - SOAP::SOAPFloat
#   packetsOut - SOAP::SOAPFloat
#   parentAsset - SOAP::SOAPString
#   purchaseDate - SOAP::SOAPDateTime
#   purchasePrice - SOAP::SOAPFloat
#   serial - SOAP::SOAPString
#   snmpCustText1 - SOAP::SOAPString
#   snmpCustText10 - SOAP::SOAPString
#   snmpCustText11 - SOAP::SOAPString
#   snmpCustText12 - SOAP::SOAPString
#   snmpCustText13 - SOAP::SOAPString
#   snmpCustText14 - SOAP::SOAPString
#   snmpCustText15 - SOAP::SOAPString
#   snmpCustText16 - SOAP::SOAPString
#   snmpCustText17 - SOAP::SOAPString
#   snmpCustText18 - SOAP::SOAPString
#   snmpCustText19 - SOAP::SOAPString
#   snmpCustText2 - SOAP::SOAPString
#   snmpCustText20 - SOAP::SOAPString
#   snmpCustText3 - SOAP::SOAPString
#   snmpCustText4 - SOAP::SOAPString
#   snmpCustText5 - SOAP::SOAPString
#   snmpCustText6 - SOAP::SOAPString
#   snmpCustText7 - SOAP::SOAPString
#   snmpCustText8 - SOAP::SOAPString
#   snmpCustText9 - SOAP::SOAPString
#   supplierID - SOAP::SOAPInt
#   systemManufacturer - SOAP::SOAPString
#   systemModel - SOAP::SOAPString
#   updateTime - SOAP::SOAPDateTime
#   userName - SOAP::SOAPString
#   version - SOAP::SOAPInt
#   warrantyExpirationDate - SOAP::SOAPDateTime
class ApiComputer < ApiSysaidObject

  # inner class for member: customDateFields
  # {}customDateFields
  class CustomDateFields < ::Array

    # {}entry
    #   key - (any)
    #   value - (any)
    class Entry
      attr_accessor :key
      attr_accessor :value

      def initialize(key = nil, value = nil)
        @key = key
        @value = value
      end
    end
  end

  # inner class for member: customFields
  # {}customFields
  class CustomFields < ::Array

    # {}entry
    #   key - (any)
    #   value - (any)
    class Entry
      attr_accessor :key
      attr_accessor :value

      def initialize(key = nil, value = nil)
        @key = key
        @value = value
      end
    end
  end

  attr_accessor :agentVersion
  attr_accessor :biosType
  attr_accessor :building
  attr_accessor :cIId
  attr_accessor :catalogNumber
  attr_accessor :collectionParams
  attr_accessor :collectionType
  attr_accessor :company
  attr_accessor :companySerial
  attr_accessor :computerID
  attr_accessor :computerName
  attr_accessor :cpuCount
  attr_accessor :cpuModel
  attr_accessor :cpuSpeed
  attr_accessor :cpuVendor
  attr_accessor :cubic
  attr_accessor :custDate1
  attr_accessor :custDate2
  attr_accessor :custInt1
  attr_accessor :custInt2
  attr_accessor :custList1
  attr_accessor :custList2
  attr_accessor :custNotes
  attr_accessor :custText1
  attr_accessor :custText2
  attr_accessor :customDateFields
  attr_accessor :customFields
  attr_accessor :department
  attr_accessor :description
  attr_accessor :disable
  attr_accessor :disksCount
  attr_accessor :disksSize
  attr_accessor :displayAdapter
  attr_accessor :displayMemory
  attr_accessor :displayResolution
  attr_accessor :externalSerial
  attr_accessor :floor
  attr_accessor :freeMemBanks
  attr_accessor :groupName
  attr_accessor :ipAddress
  attr_accessor :lastMaintenanceDate
  attr_accessor :locationIdx
  attr_accessor :macAddress
  attr_accessor :maintenanceSupplierID
  attr_accessor :memBanks
  attr_accessor :memoryPhysical
  attr_accessor :monitor
  attr_accessor :monitorSerial
  attr_accessor :oSName
  attr_accessor :oSPlatform
  attr_accessor :oSServicePack
  attr_accessor :oSVersion
  attr_accessor :occupiedMemBanks
  attr_accessor :packetsIn
  attr_accessor :packetsOut
  attr_accessor :parentAsset
  attr_accessor :purchaseDate
  attr_accessor :purchasePrice
  attr_accessor :serial
  attr_accessor :snmpCustText1
  attr_accessor :snmpCustText10
  attr_accessor :snmpCustText11
  attr_accessor :snmpCustText12
  attr_accessor :snmpCustText13
  attr_accessor :snmpCustText14
  attr_accessor :snmpCustText15
  attr_accessor :snmpCustText16
  attr_accessor :snmpCustText17
  attr_accessor :snmpCustText18
  attr_accessor :snmpCustText19
  attr_accessor :snmpCustText2
  attr_accessor :snmpCustText20
  attr_accessor :snmpCustText3
  attr_accessor :snmpCustText4
  attr_accessor :snmpCustText5
  attr_accessor :snmpCustText6
  attr_accessor :snmpCustText7
  attr_accessor :snmpCustText8
  attr_accessor :snmpCustText9
  attr_accessor :supplierID
  attr_accessor :systemManufacturer
  attr_accessor :systemModel
  attr_accessor :updateTime
  attr_accessor :userName
  attr_accessor :version
  attr_accessor :warrantyExpirationDate

  def initialize(agentVersion = nil, biosType = nil, building = nil, cIId = nil, catalogNumber = nil, collectionParams = nil, collectionType = nil, company = nil, companySerial = nil, computerID = nil, computerName = nil, cpuCount = nil, cpuModel = nil, cpuSpeed = nil, cpuVendor = nil, cubic = nil, custDate1 = nil, custDate2 = nil, custInt1 = nil, custInt2 = nil, custList1 = nil, custList2 = nil, custNotes = nil, custText1 = nil, custText2 = nil, customDateFields = nil, customFields = nil, department = nil, description = nil, disable = nil, disksCount = nil, disksSize = nil, displayAdapter = nil, displayMemory = nil, displayResolution = nil, externalSerial = nil, floor = nil, freeMemBanks = nil, groupName = nil, ipAddress = nil, lastMaintenanceDate = nil, locationIdx = nil, macAddress = nil, maintenanceSupplierID = nil, memBanks = nil, memoryPhysical = nil, monitor = nil, monitorSerial = nil, oSName = nil, oSPlatform = nil, oSServicePack = nil, oSVersion = nil, occupiedMemBanks = nil, packetsIn = nil, packetsOut = nil, parentAsset = nil, purchaseDate = nil, purchasePrice = nil, serial = nil, snmpCustText1 = nil, snmpCustText10 = nil, snmpCustText11 = nil, snmpCustText12 = nil, snmpCustText13 = nil, snmpCustText14 = nil, snmpCustText15 = nil, snmpCustText16 = nil, snmpCustText17 = nil, snmpCustText18 = nil, snmpCustText19 = nil, snmpCustText2 = nil, snmpCustText20 = nil, snmpCustText3 = nil, snmpCustText4 = nil, snmpCustText5 = nil, snmpCustText6 = nil, snmpCustText7 = nil, snmpCustText8 = nil, snmpCustText9 = nil, supplierID = nil, systemManufacturer = nil, systemModel = nil, updateTime = nil, userName = nil, version = nil, warrantyExpirationDate = nil)
    @agentVersion = agentVersion
    @biosType = biosType
    @building = building
    @cIId = cIId
    @catalogNumber = catalogNumber
    @collectionParams = collectionParams
    @collectionType = collectionType
    @company = company
    @companySerial = companySerial
    @computerID = computerID
    @computerName = computerName
    @cpuCount = cpuCount
    @cpuModel = cpuModel
    @cpuSpeed = cpuSpeed
    @cpuVendor = cpuVendor
    @cubic = cubic
    @custDate1 = custDate1
    @custDate2 = custDate2
    @custInt1 = custInt1
    @custInt2 = custInt2
    @custList1 = custList1
    @custList2 = custList2
    @custNotes = custNotes
    @custText1 = custText1
    @custText2 = custText2
    @customDateFields = customDateFields
    @customFields = customFields
    @department = department
    @description = description
    @disable = disable
    @disksCount = disksCount
    @disksSize = disksSize
    @displayAdapter = displayAdapter
    @displayMemory = displayMemory
    @displayResolution = displayResolution
    @externalSerial = externalSerial
    @floor = floor
    @freeMemBanks = freeMemBanks
    @groupName = groupName
    @ipAddress = ipAddress
    @lastMaintenanceDate = lastMaintenanceDate
    @locationIdx = locationIdx
    @macAddress = macAddress
    @maintenanceSupplierID = maintenanceSupplierID
    @memBanks = memBanks
    @memoryPhysical = memoryPhysical
    @monitor = monitor
    @monitorSerial = monitorSerial
    @oSName = oSName
    @oSPlatform = oSPlatform
    @oSServicePack = oSServicePack
    @oSVersion = oSVersion
    @occupiedMemBanks = occupiedMemBanks
    @packetsIn = packetsIn
    @packetsOut = packetsOut
    @parentAsset = parentAsset
    @purchaseDate = purchaseDate
    @purchasePrice = purchasePrice
    @serial = serial
    @snmpCustText1 = snmpCustText1
    @snmpCustText10 = snmpCustText10
    @snmpCustText11 = snmpCustText11
    @snmpCustText12 = snmpCustText12
    @snmpCustText13 = snmpCustText13
    @snmpCustText14 = snmpCustText14
    @snmpCustText15 = snmpCustText15
    @snmpCustText16 = snmpCustText16
    @snmpCustText17 = snmpCustText17
    @snmpCustText18 = snmpCustText18
    @snmpCustText19 = snmpCustText19
    @snmpCustText2 = snmpCustText2
    @snmpCustText20 = snmpCustText20
    @snmpCustText3 = snmpCustText3
    @snmpCustText4 = snmpCustText4
    @snmpCustText5 = snmpCustText5
    @snmpCustText6 = snmpCustText6
    @snmpCustText7 = snmpCustText7
    @snmpCustText8 = snmpCustText8
    @snmpCustText9 = snmpCustText9
    @supplierID = supplierID
    @systemManufacturer = systemManufacturer
    @systemModel = systemModel
    @updateTime = updateTime
    @userName = userName
    @version = version
    @warrantyExpirationDate = warrantyExpirationDate
  end
end

# {http://api.ilient.com/}apiSoftware
#   cIId - SOAP::SOAPInt
#   company - SOAP::SOAPInt
#   custDate1 - SOAP::SOAPDateTime
#   custDate2 - SOAP::SOAPDateTime
#   custInt1 - SOAP::SOAPInt
#   custInt2 - SOAP::SOAPInt
#   custList1 - SOAP::SOAPInt
#   custList2 - SOAP::SOAPInt
#   custNotes - SOAP::SOAPString
#   custText1 - SOAP::SOAPString
#   custText2 - SOAP::SOAPString
#   freeware - SOAP::SOAPBoolean
#   historyVersion - SOAP::SOAPInt
#   inst_names - (any)
#   licenses - SOAP::SOAPInt
#   notes - SOAP::SOAPString
#   productName - SOAP::SOAPString
#   purchaseDate - SOAP::SOAPDateTime
#   softwareID - SOAP::SOAPInt
#   supplierID - SOAP::SOAPInt
#   supportExpiration - SOAP::SOAPDateTime
#   vendor - SOAP::SOAPString
#   version - SOAP::SOAPString
class ApiSoftware < ApiSysaidObject
  attr_accessor :cIId
  attr_accessor :company
  attr_accessor :custDate1
  attr_accessor :custDate2
  attr_accessor :custInt1
  attr_accessor :custInt2
  attr_accessor :custList1
  attr_accessor :custList2
  attr_accessor :custNotes
  attr_accessor :custText1
  attr_accessor :custText2
  attr_accessor :freeware
  attr_accessor :historyVersion
  attr_accessor :inst_names
  attr_accessor :licenses
  attr_accessor :notes
  attr_accessor :productName
  attr_accessor :purchaseDate
  attr_accessor :softwareID
  attr_accessor :supplierID
  attr_accessor :supportExpiration
  attr_accessor :vendor
  attr_accessor :version

  def initialize(cIId = nil, company = nil, custDate1 = nil, custDate2 = nil, custInt1 = nil, custInt2 = nil, custList1 = nil, custList2 = nil, custNotes = nil, custText1 = nil, custText2 = nil, freeware = nil, historyVersion = nil, inst_names = [], licenses = nil, notes = nil, productName = nil, purchaseDate = nil, softwareID = nil, supplierID = nil, supportExpiration = nil, vendor = nil, version = nil)
    @cIId = cIId
    @company = company
    @custDate1 = custDate1
    @custDate2 = custDate2
    @custInt1 = custInt1
    @custInt2 = custInt2
    @custList1 = custList1
    @custList2 = custList2
    @custNotes = custNotes
    @custText1 = custText1
    @custText2 = custText2
    @freeware = freeware
    @historyVersion = historyVersion
    @inst_names = inst_names
    @licenses = licenses
    @notes = notes
    @productName = productName
    @purchaseDate = purchaseDate
    @softwareID = softwareID
    @supplierID = supplierID
    @supportExpiration = supportExpiration
    @vendor = vendor
    @version = version
  end
end

# {http://api.ilient.com/}apiCompany
#   address - SOAP::SOAPString
#   address2 - SOAP::SOAPString
#   agreement - SOAP::SOAPInt
#   agreementEnd - SOAP::SOAPDateTime
#   agreementStart - SOAP::SOAPDateTime
#   city - SOAP::SOAPString
#   country - SOAP::SOAPString
#   custDate1 - SOAP::SOAPDateTime
#   custDate2 - SOAP::SOAPDateTime
#   custInt1 - SOAP::SOAPInt
#   custInt2 - SOAP::SOAPInt
#   custList1 - SOAP::SOAPInt
#   custList2 - SOAP::SOAPInt
#   custNotes - SOAP::SOAPString
#   custText1 - SOAP::SOAPString
#   custText2 - SOAP::SOAPString
#   expirationTime - SOAP::SOAPDateTime
#   fax - SOAP::SOAPString
#   id - SOAP::SOAPInt
#   name - SOAP::SOAPString
#   notes - SOAP::SOAPString
#   phone - SOAP::SOAPString
#   state - SOAP::SOAPString
#   version - SOAP::SOAPInt
#   zip - SOAP::SOAPString
class ApiCompany < ApiSysaidObject
  attr_accessor :address
  attr_accessor :address2
  attr_accessor :agreement
  attr_accessor :agreementEnd
  attr_accessor :agreementStart
  attr_accessor :city
  attr_accessor :country
  attr_accessor :custDate1
  attr_accessor :custDate2
  attr_accessor :custInt1
  attr_accessor :custInt2
  attr_accessor :custList1
  attr_accessor :custList2
  attr_accessor :custNotes
  attr_accessor :custText1
  attr_accessor :custText2
  attr_accessor :expirationTime
  attr_accessor :fax
  attr_accessor :id
  attr_accessor :name
  attr_accessor :notes
  attr_accessor :phone
  attr_accessor :state
  attr_accessor :version
  attr_accessor :zip

  def initialize(address = nil, address2 = nil, agreement = nil, agreementEnd = nil, agreementStart = nil, city = nil, country = nil, custDate1 = nil, custDate2 = nil, custInt1 = nil, custInt2 = nil, custList1 = nil, custList2 = nil, custNotes = nil, custText1 = nil, custText2 = nil, expirationTime = nil, fax = nil, id = nil, name = nil, notes = nil, phone = nil, state = nil, version = nil, zip = nil)
    @address = address
    @address2 = address2
    @agreement = agreement
    @agreementEnd = agreementEnd
    @agreementStart = agreementStart
    @city = city
    @country = country
    @custDate1 = custDate1
    @custDate2 = custDate2
    @custInt1 = custInt1
    @custInt2 = custInt2
    @custList1 = custList1
    @custList2 = custList2
    @custNotes = custNotes
    @custText1 = custText1
    @custText2 = custText2
    @expirationTime = expirationTime
    @fax = fax
    @id = id
    @name = name
    @notes = notes
    @phone = phone
    @state = state
    @version = version
    @zip = zip
  end
end

# {http://api.ilient.com/}apiSupplier
#   account - SOAP::SOAPString
#   address - SOAP::SOAPString
#   contact - SOAP::SOAPString
#   custDate1 - SOAP::SOAPDateTime
#   custDate2 - SOAP::SOAPDateTime
#   custInt1 - SOAP::SOAPInt
#   custInt2 - SOAP::SOAPInt
#   custList1 - SOAP::SOAPInt
#   custList2 - SOAP::SOAPInt
#   custNotes - SOAP::SOAPString
#   custText1 - SOAP::SOAPString
#   custText2 - SOAP::SOAPString
#   email - SOAP::SOAPString
#   fax - SOAP::SOAPString
#   mobile - SOAP::SOAPString
#   name - SOAP::SOAPString
#   notes - SOAP::SOAPString
#   phone - SOAP::SOAPString
#   phone2 - SOAP::SOAPString
#   supplierID - SOAP::SOAPInt
#   version - SOAP::SOAPInt
class ApiSupplier < ApiSysaidObject
  attr_accessor :account
  attr_accessor :address
  attr_accessor :contact
  attr_accessor :custDate1
  attr_accessor :custDate2
  attr_accessor :custInt1
  attr_accessor :custInt2
  attr_accessor :custList1
  attr_accessor :custList2
  attr_accessor :custNotes
  attr_accessor :custText1
  attr_accessor :custText2
  attr_accessor :email
  attr_accessor :fax
  attr_accessor :mobile
  attr_accessor :name
  attr_accessor :notes
  attr_accessor :phone
  attr_accessor :phone2
  attr_accessor :supplierID
  attr_accessor :version

  def initialize(account = nil, address = nil, contact = nil, custDate1 = nil, custDate2 = nil, custInt1 = nil, custInt2 = nil, custList1 = nil, custList2 = nil, custNotes = nil, custText1 = nil, custText2 = nil, email = nil, fax = nil, mobile = nil, name = nil, notes = nil, phone = nil, phone2 = nil, supplierID = nil, version = nil)
    @account = account
    @address = address
    @contact = contact
    @custDate1 = custDate1
    @custDate2 = custDate2
    @custInt1 = custInt1
    @custInt2 = custInt2
    @custList1 = custList1
    @custList2 = custList2
    @custNotes = custNotes
    @custText1 = custText1
    @custText2 = custText2
    @email = email
    @fax = fax
    @mobile = mobile
    @name = name
    @notes = notes
    @phone = phone
    @phone2 = phone2
    @supplierID = supplierID
    @version = version
  end
end

# {http://api.ilient.com/}apiSysAidUser
#   admin - SOAP::SOAPBoolean
#   agreement - SOAP::SOAPInt
#   building - SOAP::SOAPString
#   carNumber - SOAP::SOAPString
#   cellphone - SOAP::SOAPString
#   company - SOAP::SOAPInt
#   cubic - SOAP::SOAPString
#   custDate1 - SOAP::SOAPDateTime
#   custDate2 - SOAP::SOAPDateTime
#   custInt1 - SOAP::SOAPInt
#   custInt2 - SOAP::SOAPInt
#   custList1 - SOAP::SOAPInt
#   custList2 - SOAP::SOAPInt
#   custNotes - SOAP::SOAPString
#   custText1 - SOAP::SOAPString
#   custText2 - SOAP::SOAPString
#   department - SOAP::SOAPInt
#   disable - SOAP::SOAPBoolean
#   displayName - SOAP::SOAPString
#   email - SOAP::SOAPString
#   emailNotifications - SOAP::SOAPBoolean
#   enableLoginToEup - SOAP::SOAPBoolean
#   expirationTime - SOAP::SOAPDateTime
#   firstName - SOAP::SOAPString
#   floor - SOAP::SOAPString
#   lastName - SOAP::SOAPString
#   location - SOAP::SOAPInt
#   manager - SOAP::SOAPBoolean
#   notes - SOAP::SOAPString
#   password - SOAP::SOAPString
#   phone - SOAP::SOAPString
#   secondaryEmail - SOAP::SOAPString
#   sms - SOAP::SOAPString
#   userManagerName - SOAP::SOAPString
#   userName - SOAP::SOAPString
class ApiSysAidUser < ApiSysaidObject
  attr_accessor :admin
  attr_accessor :agreement
  attr_accessor :building
  attr_accessor :carNumber
  attr_accessor :cellphone
  attr_accessor :company
  attr_accessor :cubic
  attr_accessor :custDate1
  attr_accessor :custDate2
  attr_accessor :custInt1
  attr_accessor :custInt2
  attr_accessor :custList1
  attr_accessor :custList2
  attr_accessor :custNotes
  attr_accessor :custText1
  attr_accessor :custText2
  attr_accessor :department
  attr_accessor :disable
  attr_accessor :displayName
  attr_accessor :email
  attr_accessor :emailNotifications
  attr_accessor :enableLoginToEup
  attr_accessor :expirationTime
  attr_accessor :firstName
  attr_accessor :floor
  attr_accessor :lastName
  attr_accessor :location
  attr_accessor :manager
  attr_accessor :notes
  attr_accessor :password
  attr_accessor :phone
  attr_accessor :secondaryEmail
  attr_accessor :sms
  attr_accessor :userManagerName
  attr_accessor :userName

  def initialize(admin = nil, agreement = nil, building = nil, carNumber = nil, cellphone = nil, company = nil, cubic = nil, custDate1 = nil, custDate2 = nil, custInt1 = nil, custInt2 = nil, custList1 = nil, custList2 = nil, custNotes = nil, custText1 = nil, custText2 = nil, department = nil, disable = nil, displayName = nil, email = nil, emailNotifications = nil, enableLoginToEup = nil, expirationTime = nil, firstName = nil, floor = nil, lastName = nil, location = nil, manager = nil, notes = nil, password = nil, phone = nil, secondaryEmail = nil, sms = nil, userManagerName = nil, userName = nil)
    @admin = admin
    @agreement = agreement
    @building = building
    @carNumber = carNumber
    @cellphone = cellphone
    @company = company
    @cubic = cubic
    @custDate1 = custDate1
    @custDate2 = custDate2
    @custInt1 = custInt1
    @custInt2 = custInt2
    @custList1 = custList1
    @custList2 = custList2
    @custNotes = custNotes
    @custText1 = custText1
    @custText2 = custText2
    @department = department
    @disable = disable
    @displayName = displayName
    @email = email
    @emailNotifications = emailNotifications
    @enableLoginToEup = enableLoginToEup
    @expirationTime = expirationTime
    @firstName = firstName
    @floor = floor
    @lastName = lastName
    @location = location
    @manager = manager
    @notes = notes
    @password = password
    @phone = phone
    @secondaryEmail = secondaryEmail
    @sms = sms
    @userManagerName = userManagerName
    @userName = userName
  end
end

# {http://api.ilient.com/}apiProject
#   assignedGroup - SOAP::SOAPString
#   category - SOAP::SOAPInt
#   company - SOAP::SOAPInt
#   custDate1 - SOAP::SOAPDateTime
#   custDate2 - SOAP::SOAPDateTime
#   custInt1 - SOAP::SOAPInt
#   custInt2 - SOAP::SOAPInt
#   custList1 - SOAP::SOAPInt
#   custList2 - SOAP::SOAPInt
#   custNotes - SOAP::SOAPString
#   custText1 - SOAP::SOAPString
#   custText2 - SOAP::SOAPString
#   customDateFields - ApiProject::CustomDateFields
#   customFields - ApiProject::CustomFields
#   description - SOAP::SOAPString
#   endTime - SOAP::SOAPDateTime
#   id - SOAP::SOAPInt
#   incidentTitle - SOAP::SOAPString
#   manager - SOAP::SOAPString
#   notes - SOAP::SOAPString
#   progress - SOAP::SOAPInt
#   rawEstimation - SOAP::SOAPInt
#   requestGroup - SOAP::SOAPString
#   startTime - SOAP::SOAPDateTime
#   status - SOAP::SOAPInt
#   title - SOAP::SOAPString
#   version - SOAP::SOAPInt
class ApiProject < ApiSysaidObject

  # inner class for member: customDateFields
  # {}customDateFields
  class CustomDateFields < ::Array

    # {}entry
    #   key - (any)
    #   value - (any)
    class Entry
      attr_accessor :key
      attr_accessor :value

      def initialize(key = nil, value = nil)
        @key = key
        @value = value
      end
    end
  end

  # inner class for member: customFields
  # {}customFields
  class CustomFields < ::Array

    # {}entry
    #   key - (any)
    #   value - (any)
    class Entry
      attr_accessor :key
      attr_accessor :value

      def initialize(key = nil, value = nil)
        @key = key
        @value = value
      end
    end
  end

  attr_accessor :assignedGroup
  attr_accessor :category
  attr_accessor :company
  attr_accessor :custDate1
  attr_accessor :custDate2
  attr_accessor :custInt1
  attr_accessor :custInt2
  attr_accessor :custList1
  attr_accessor :custList2
  attr_accessor :custNotes
  attr_accessor :custText1
  attr_accessor :custText2
  attr_accessor :customDateFields
  attr_accessor :customFields
  attr_accessor :description
  attr_accessor :endTime
  attr_accessor :id
  attr_accessor :incidentTitle
  attr_accessor :manager
  attr_accessor :notes
  attr_accessor :progress
  attr_accessor :rawEstimation
  attr_accessor :requestGroup
  attr_accessor :startTime
  attr_accessor :status
  attr_accessor :title
  attr_accessor :version

  def initialize(assignedGroup = nil, category = nil, company = nil, custDate1 = nil, custDate2 = nil, custInt1 = nil, custInt2 = nil, custList1 = nil, custList2 = nil, custNotes = nil, custText1 = nil, custText2 = nil, customDateFields = nil, customFields = nil, description = nil, endTime = nil, id = nil, incidentTitle = nil, manager = nil, notes = nil, progress = nil, rawEstimation = nil, requestGroup = nil, startTime = nil, status = nil, title = nil, version = nil)
    @assignedGroup = assignedGroup
    @category = category
    @company = company
    @custDate1 = custDate1
    @custDate2 = custDate2
    @custInt1 = custInt1
    @custInt2 = custInt2
    @custList1 = custList1
    @custList2 = custList2
    @custNotes = custNotes
    @custText1 = custText1
    @custText2 = custText2
    @customDateFields = customDateFields
    @customFields = customFields
    @description = description
    @endTime = endTime
    @id = id
    @incidentTitle = incidentTitle
    @manager = manager
    @notes = notes
    @progress = progress
    @rawEstimation = rawEstimation
    @requestGroup = requestGroup
    @startTime = startTime
    @status = status
    @title = title
    @version = version
  end
end

# {http://api.ilient.com/}apiTask
#   category - SOAP::SOAPInt
#   ciId - SOAP::SOAPInt
#   custDate1 - SOAP::SOAPDateTime
#   custDate2 - SOAP::SOAPDateTime
#   custInt1 - SOAP::SOAPInt
#   custInt2 - SOAP::SOAPInt
#   custList1 - SOAP::SOAPInt
#   custList2 - SOAP::SOAPInt
#   custNotes - SOAP::SOAPString
#   custText1 - SOAP::SOAPString
#   custText2 - SOAP::SOAPString
#   customDateFields - ApiTask::CustomDateFields
#   customFields - ApiTask::CustomFields
#   description - SOAP::SOAPString
#   endTime - SOAP::SOAPDateTime
#   estimation - SOAP::SOAPInt
#   id - SOAP::SOAPInt
#   notes - SOAP::SOAPString
#   progress - SOAP::SOAPInt
#   startTime - SOAP::SOAPDateTime
#   status - SOAP::SOAPInt
#   taskDependency - SOAP::SOAPInt
#   taskDependencyType - SOAP::SOAPInt
#   title - SOAP::SOAPString
#   version - SOAP::SOAPInt
class ApiTask < ApiSysaidObject

  # inner class for member: customDateFields
  # {}customDateFields
  class CustomDateFields < ::Array

    # {}entry
    #   key - (any)
    #   value - (any)
    class Entry
      attr_accessor :key
      attr_accessor :value

      def initialize(key = nil, value = nil)
        @key = key
        @value = value
      end
    end
  end

  # inner class for member: customFields
  # {}customFields
  class CustomFields < ::Array

    # {}entry
    #   key - (any)
    #   value - (any)
    class Entry
      attr_accessor :key
      attr_accessor :value

      def initialize(key = nil, value = nil)
        @key = key
        @value = value
      end
    end
  end

  attr_accessor :category
  attr_accessor :ciId
  attr_accessor :custDate1
  attr_accessor :custDate2
  attr_accessor :custInt1
  attr_accessor :custInt2
  attr_accessor :custList1
  attr_accessor :custList2
  attr_accessor :custNotes
  attr_accessor :custText1
  attr_accessor :custText2
  attr_accessor :customDateFields
  attr_accessor :customFields
  attr_accessor :description
  attr_accessor :endTime
  attr_accessor :estimation
  attr_accessor :id
  attr_accessor :notes
  attr_accessor :progress
  attr_accessor :startTime
  attr_accessor :status
  attr_accessor :taskDependency
  attr_accessor :taskDependencyType
  attr_accessor :title
  attr_accessor :version

  def initialize(category = nil, ciId = nil, custDate1 = nil, custDate2 = nil, custInt1 = nil, custInt2 = nil, custList1 = nil, custList2 = nil, custNotes = nil, custText1 = nil, custText2 = nil, customDateFields = nil, customFields = nil, description = nil, endTime = nil, estimation = nil, id = nil, notes = nil, progress = nil, startTime = nil, status = nil, taskDependency = nil, taskDependencyType = nil, title = nil, version = nil)
    @category = category
    @ciId = ciId
    @custDate1 = custDate1
    @custDate2 = custDate2
    @custInt1 = custInt1
    @custInt2 = custInt2
    @custList1 = custList1
    @custList2 = custList2
    @custNotes = custNotes
    @custText1 = custText1
    @custText2 = custText2
    @customDateFields = customDateFields
    @customFields = customFields
    @description = description
    @endTime = endTime
    @estimation = estimation
    @id = id
    @notes = notes
    @progress = progress
    @startTime = startTime
    @status = status
    @taskDependency = taskDependency
    @taskDependencyType = taskDependencyType
    @title = title
    @version = version
  end
end

# {http://api.ilient.com/}apiComputerItemList
#   accountId - SOAP::SOAPString
#   computerId - SOAP::SOAPString
#   computerItems - (any)
class ApiComputerItemList < ApiSysaidObject
  attr_accessor :accountId
  attr_accessor :computerId
  attr_accessor :computerItems

  def initialize(accountId = nil, computerId = nil, computerItems = [])
    @accountId = accountId
    @computerId = computerId
    @computerItems = computerItems
  end
end

# {http://api.ilient.com/}apiComputerItem
#   accountId - SOAP::SOAPString
#   computerId - SOAP::SOAPString
#   itemDisplay - SOAP::SOAPString
#   itemType - SOAP::SOAPString
#   license - SOAP::SOAPString
#   value - SOAP::SOAPString
#   version - SOAP::SOAPString
class ApiComputerItem
  attr_accessor :accountId
  attr_accessor :computerId
  attr_accessor :itemDisplay
  attr_accessor :itemType
  attr_accessor :license
  attr_accessor :value
  attr_accessor :version

  def initialize(accountId = nil, computerId = nil, itemDisplay = nil, itemType = nil, license = nil, value = nil, version = nil)
    @accountId = accountId
    @computerId = computerId
    @itemDisplay = itemDisplay
    @itemType = itemType
    @license = license
    @value = value
    @version = version
  end
end

# {http://api.ilient.com/}login
#   accountId - SOAP::SOAPString
#   userName - SOAP::SOAPString
#   password - SOAP::SOAPString
class Login
  attr_accessor :accountId
  attr_accessor :userName
  attr_accessor :password

  def initialize(accountId = nil, userName = nil, password = nil)
    @accountId = accountId
    @userName = userName
    @password = password
  end
end

# {http://api.ilient.com/}loginResponse
#   m_return - SOAP::SOAPLong
class LoginResponse
  def m_return
    @v_return
  end

  def m_return=(value)
    @v_return = value
  end

  def initialize(v_return = nil)
    @v_return = v_return
  end
end

# {http://api.ilient.com/}delete
#   sessionId - SOAP::SOAPLong
#   apiSysObj - ApiSysaidObject
class Delete
  attr_accessor :sessionId
  attr_accessor :apiSysObj

  def initialize(sessionId = nil, apiSysObj = nil)
    @sessionId = sessionId
    @apiSysObj = apiSysObj
  end
end

# {http://api.ilient.com/}deleteResponse
class DeleteResponse
  def initialize
  end
end

# {http://api.ilient.com/}executeSelectQuery
#   sessionId - SOAP::SOAPLong
#   apiSysObj - ApiSysaidObject
#   condition - SOAP::SOAPString
class ExecuteSelectQuery
  attr_accessor :sessionId
  attr_accessor :apiSysObj
  attr_accessor :condition

  def initialize(sessionId = nil, apiSysObj = nil, condition = nil)
    @sessionId = sessionId
    @apiSysObj = apiSysObj
    @condition = condition
  end
end

# {http://api.ilient.com/}executeSelectQueryResponse
class ExecuteSelectQueryResponse < ::Array
end

# {http://api.ilient.com/}loadByStringId
#   sessionId - SOAP::SOAPLong
#   apiSysObj - ApiSysaidObject
#   id - SOAP::SOAPString
class LoadByStringId
  attr_accessor :sessionId
  attr_accessor :apiSysObj
  attr_accessor :id

  def initialize(sessionId = nil, apiSysObj = nil, id = nil)
    @sessionId = sessionId
    @apiSysObj = apiSysObj
    @id = id
  end
end

# {http://api.ilient.com/}loadByStringIdResponse
#   m_return - ApiSysaidObject
class LoadByStringIdResponse
  def m_return
    @v_return
  end

  def m_return=(value)
    @v_return = value
  end

  def initialize(v_return = nil)
    @v_return = v_return
  end
end

# {http://api.ilient.com/}logout
#   sessionId - SOAP::SOAPLong
class Logout
  attr_accessor :sessionId

  def initialize(sessionId = nil)
    @sessionId = sessionId
  end
end

# {http://api.ilient.com/}logoutResponse
class LogoutResponse
  def initialize
  end
end

# {http://api.ilient.com/}executeApiSysAidObjectAction
#   sessionId - SOAP::SOAPLong
#   apiSysObj - ApiSysaidObject
#   actionName - SOAP::SOAPString
#   actionParams - (any)
class ExecuteApiSysAidObjectAction
  attr_accessor :sessionId
  attr_accessor :apiSysObj
  attr_accessor :actionName
  attr_accessor :actionParams

  def initialize(sessionId = nil, apiSysObj = nil, actionName = nil, actionParams = [])
    @sessionId = sessionId
    @apiSysObj = apiSysObj
    @actionName = actionName
    @actionParams = actionParams
  end
end

# {http://api.ilient.com/}executeApiSysAidObjectActionResponse
#   m_return - SOAP::SOAPString
class ExecuteApiSysAidObjectActionResponse
  def m_return
    @v_return
  end

  def m_return=(value)
    @v_return = value
  end

  def initialize(v_return = nil)
    @v_return = v_return
  end
end

# {http://api.ilient.com/}loadById
#   sessionId - SOAP::SOAPLong
#   apiSysObj - ApiSysaidObject
#   id - (any)
class LoadById
  attr_accessor :sessionId
  attr_accessor :apiSysObj
  attr_accessor :id

  def initialize(sessionId = nil, apiSysObj = nil, id = nil)
    @sessionId = sessionId
    @apiSysObj = apiSysObj
    @id = id
  end
end

# {http://api.ilient.com/}loadByIdResponse
#   m_return - ApiSysaidObject
class LoadByIdResponse
  def m_return
    @v_return
  end

  def m_return=(value)
    @v_return = value
  end

  def initialize(v_return = nil)
    @v_return = v_return
  end
end

# {http://api.ilient.com/}save
#   sessionId - SOAP::SOAPLong
#   apiSysObj - ApiSysaidObject
class Save
  attr_accessor :sessionId
  attr_accessor :apiSysObj

  def initialize(sessionId = nil, apiSysObj = nil)
    @sessionId = sessionId
    @apiSysObj = apiSysObj
  end
end

# {http://api.ilient.com/}saveResponse
#   m_return - (any)
class SaveResponse
  def m_return
    @v_return
  end

  def m_return=(value)
    @v_return = value
  end

  def initialize(v_return = nil)
    @v_return = v_return
  end
end

# {http://api.ilient.com/}getApiSysAidObjectActions
#   sessionId - SOAP::SOAPLong
#   apiSysObj - ApiSysaidObject
class GetApiSysAidObjectActions
  attr_accessor :sessionId
  attr_accessor :apiSysObj

  def initialize(sessionId = nil, apiSysObj = nil)
    @sessionId = sessionId
    @apiSysObj = apiSysObj
  end
end

# {http://api.ilient.com/}getApiSysAidObjectActionsResponse
#   m_return - SOAP::SOAPString
class GetApiSysAidObjectActionsResponse
  def m_return
    @v_return
  end

  def m_return=(value)
    @v_return = value
  end

  def initialize(v_return = nil)
    @v_return = v_return
  end
end
