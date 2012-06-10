load 'SysaidApiServiceService.rb'
require 'soap/mapping'

module SysaidApiServiceServiceMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsApiIlientCom = "http://api.ilient.com/"

  EncodedRegistry.register(
    :class => ApiCatalogItem,
    :schema_type => XSD::QName.new(NsApiIlientCom, "apiCatalogItem"),
    :schema_basetype => XSD::QName.new(NsApiIlientCom, "apiSysaidObject"),
    :schema_element => [
      ["cIId", ["SOAP::SOAPInt", XSD::QName.new(nil, "CIId")]],
      ["catalogNumber", ["SOAP::SOAPString", XSD::QName.new(nil, "catalogNumber")], [0, 1]],
      ["custDate1", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "custDate1")], [0, 1]],
      ["custDate2", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "custDate2")], [0, 1]],
      ["manufacturer", ["SOAP::SOAPString", XSD::QName.new(nil, "manufacturer")], [0, 1]],
      ["model", ["SOAP::SOAPString", XSD::QName.new(nil, "model")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")], [0, 1]],
      ["notes", ["SOAP::SOAPString", XSD::QName.new(nil, "notes")], [0, 1]],
      ["supplierID", ["SOAP::SOAPInt", XSD::QName.new(nil, "supplierID")]],
      ["version", ["SOAP::SOAPInt", XSD::QName.new(nil, "version")]]
    ]
  )

  EncodedRegistry.register(
    :class => ApiCI,
    :schema_type => XSD::QName.new(NsApiIlientCom, "apiCI"),
    :schema_basetype => XSD::QName.new(NsApiIlientCom, "apiSysaidObject"),
    :schema_element => [
      ["acceptDate", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "acceptDate")], [0, 1]],
      ["category", ["SOAP::SOAPString", XSD::QName.new(nil, "category")], [0, 1]],
      ["ciName", ["SOAP::SOAPString", XSD::QName.new(nil, "ciName")], [0, 1]],
      ["ciSubType", ["SOAP::SOAPInt", XSD::QName.new(nil, "ciSubType")]],
      ["ciType", ["SOAP::SOAPInt", XSD::QName.new(nil, "ciType")]],
      ["company", ["SOAP::SOAPInt", XSD::QName.new(nil, "company")]],
      ["custDateField1", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "custDateField1")], [0, 1]],
      ["custDateField10", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "custDateField10")], [0, 1]],
      ["custDateField11", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "custDateField11")], [0, 1]],
      ["custDateField12", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "custDateField12")], [0, 1]],
      ["custDateField13", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "custDateField13")], [0, 1]],
      ["custDateField14", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "custDateField14")], [0, 1]],
      ["custDateField15", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "custDateField15")], [0, 1]],
      ["custDateField16", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "custDateField16")], [0, 1]],
      ["custDateField17", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "custDateField17")], [0, 1]],
      ["custDateField18", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "custDateField18")], [0, 1]],
      ["custDateField19", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "custDateField19")], [0, 1]],
      ["custDateField2", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "custDateField2")], [0, 1]],
      ["custDateField20", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "custDateField20")], [0, 1]],
      ["custDateField21", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "custDateField21")], [0, 1]],
      ["custDateField22", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "custDateField22")], [0, 1]],
      ["custDateField23", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "custDateField23")], [0, 1]],
      ["custDateField24", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "custDateField24")], [0, 1]],
      ["custDateField25", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "custDateField25")], [0, 1]],
      ["custDateField26", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "custDateField26")], [0, 1]],
      ["custDateField27", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "custDateField27")], [0, 1]],
      ["custDateField28", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "custDateField28")], [0, 1]],
      ["custDateField29", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "custDateField29")], [0, 1]],
      ["custDateField3", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "custDateField3")], [0, 1]],
      ["custDateField30", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "custDateField30")], [0, 1]],
      ["custDateField31", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "custDateField31")], [0, 1]],
      ["custDateField32", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "custDateField32")], [0, 1]],
      ["custDateField33", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "custDateField33")], [0, 1]],
      ["custDateField34", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "custDateField34")], [0, 1]],
      ["custDateField35", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "custDateField35")], [0, 1]],
      ["custDateField36", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "custDateField36")], [0, 1]],
      ["custDateField37", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "custDateField37")], [0, 1]],
      ["custDateField38", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "custDateField38")], [0, 1]],
      ["custDateField39", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "custDateField39")], [0, 1]],
      ["custDateField4", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "custDateField4")], [0, 1]],
      ["custDateField40", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "custDateField40")], [0, 1]],
      ["custDateField41", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "custDateField41")], [0, 1]],
      ["custDateField42", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "custDateField42")], [0, 1]],
      ["custDateField43", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "custDateField43")], [0, 1]],
      ["custDateField44", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "custDateField44")], [0, 1]],
      ["custDateField45", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "custDateField45")], [0, 1]],
      ["custDateField46", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "custDateField46")], [0, 1]],
      ["custDateField47", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "custDateField47")], [0, 1]],
      ["custDateField48", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "custDateField48")], [0, 1]],
      ["custDateField49", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "custDateField49")], [0, 1]],
      ["custDateField5", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "custDateField5")], [0, 1]],
      ["custDateField50", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "custDateField50")], [0, 1]],
      ["custDateField6", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "custDateField6")], [0, 1]],
      ["custDateField7", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "custDateField7")], [0, 1]],
      ["custDateField8", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "custDateField8")], [0, 1]],
      ["custDateField9", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "custDateField9")], [0, 1]],
      ["custIntField1", ["SOAP::SOAPInt", XSD::QName.new(nil, "custIntField1")]],
      ["custIntField10", ["SOAP::SOAPInt", XSD::QName.new(nil, "custIntField10")]],
      ["custIntField11", ["SOAP::SOAPInt", XSD::QName.new(nil, "custIntField11")]],
      ["custIntField12", ["SOAP::SOAPInt", XSD::QName.new(nil, "custIntField12")]],
      ["custIntField13", ["SOAP::SOAPInt", XSD::QName.new(nil, "custIntField13")]],
      ["custIntField14", ["SOAP::SOAPInt", XSD::QName.new(nil, "custIntField14")]],
      ["custIntField15", ["SOAP::SOAPInt", XSD::QName.new(nil, "custIntField15")]],
      ["custIntField16", ["SOAP::SOAPInt", XSD::QName.new(nil, "custIntField16")]],
      ["custIntField17", ["SOAP::SOAPInt", XSD::QName.new(nil, "custIntField17")]],
      ["custIntField18", ["SOAP::SOAPInt", XSD::QName.new(nil, "custIntField18")]],
      ["custIntField19", ["SOAP::SOAPInt", XSD::QName.new(nil, "custIntField19")]],
      ["custIntField2", ["SOAP::SOAPInt", XSD::QName.new(nil, "custIntField2")]],
      ["custIntField20", ["SOAP::SOAPInt", XSD::QName.new(nil, "custIntField20")]],
      ["custIntField21", ["SOAP::SOAPInt", XSD::QName.new(nil, "custIntField21")]],
      ["custIntField22", ["SOAP::SOAPInt", XSD::QName.new(nil, "custIntField22")]],
      ["custIntField23", ["SOAP::SOAPInt", XSD::QName.new(nil, "custIntField23")]],
      ["custIntField24", ["SOAP::SOAPInt", XSD::QName.new(nil, "custIntField24")]],
      ["custIntField25", ["SOAP::SOAPInt", XSD::QName.new(nil, "custIntField25")]],
      ["custIntField26", ["SOAP::SOAPInt", XSD::QName.new(nil, "custIntField26")]],
      ["custIntField27", ["SOAP::SOAPInt", XSD::QName.new(nil, "custIntField27")]],
      ["custIntField28", ["SOAP::SOAPInt", XSD::QName.new(nil, "custIntField28")]],
      ["custIntField29", ["SOAP::SOAPInt", XSD::QName.new(nil, "custIntField29")]],
      ["custIntField3", ["SOAP::SOAPInt", XSD::QName.new(nil, "custIntField3")]],
      ["custIntField30", ["SOAP::SOAPInt", XSD::QName.new(nil, "custIntField30")]],
      ["custIntField31", ["SOAP::SOAPInt", XSD::QName.new(nil, "custIntField31")]],
      ["custIntField32", ["SOAP::SOAPInt", XSD::QName.new(nil, "custIntField32")]],
      ["custIntField33", ["SOAP::SOAPInt", XSD::QName.new(nil, "custIntField33")]],
      ["custIntField34", ["SOAP::SOAPInt", XSD::QName.new(nil, "custIntField34")]],
      ["custIntField35", ["SOAP::SOAPInt", XSD::QName.new(nil, "custIntField35")]],
      ["custIntField36", ["SOAP::SOAPInt", XSD::QName.new(nil, "custIntField36")]],
      ["custIntField37", ["SOAP::SOAPInt", XSD::QName.new(nil, "custIntField37")]],
      ["custIntField38", ["SOAP::SOAPInt", XSD::QName.new(nil, "custIntField38")]],
      ["custIntField39", ["SOAP::SOAPInt", XSD::QName.new(nil, "custIntField39")]],
      ["custIntField4", ["SOAP::SOAPInt", XSD::QName.new(nil, "custIntField4")]],
      ["custIntField40", ["SOAP::SOAPInt", XSD::QName.new(nil, "custIntField40")]],
      ["custIntField41", ["SOAP::SOAPInt", XSD::QName.new(nil, "custIntField41")]],
      ["custIntField42", ["SOAP::SOAPInt", XSD::QName.new(nil, "custIntField42")]],
      ["custIntField43", ["SOAP::SOAPInt", XSD::QName.new(nil, "custIntField43")]],
      ["custIntField44", ["SOAP::SOAPInt", XSD::QName.new(nil, "custIntField44")]],
      ["custIntField45", ["SOAP::SOAPInt", XSD::QName.new(nil, "custIntField45")]],
      ["custIntField46", ["SOAP::SOAPInt", XSD::QName.new(nil, "custIntField46")]],
      ["custIntField47", ["SOAP::SOAPInt", XSD::QName.new(nil, "custIntField47")]],
      ["custIntField48", ["SOAP::SOAPInt", XSD::QName.new(nil, "custIntField48")]],
      ["custIntField49", ["SOAP::SOAPInt", XSD::QName.new(nil, "custIntField49")]],
      ["custIntField5", ["SOAP::SOAPInt", XSD::QName.new(nil, "custIntField5")]],
      ["custIntField50", ["SOAP::SOAPInt", XSD::QName.new(nil, "custIntField50")]],
      ["custIntField6", ["SOAP::SOAPInt", XSD::QName.new(nil, "custIntField6")]],
      ["custIntField7", ["SOAP::SOAPInt", XSD::QName.new(nil, "custIntField7")]],
      ["custIntField8", ["SOAP::SOAPInt", XSD::QName.new(nil, "custIntField8")]],
      ["custIntField9", ["SOAP::SOAPInt", XSD::QName.new(nil, "custIntField9")]],
      ["custListField1", ["SOAP::SOAPInt", XSD::QName.new(nil, "custListField1")]],
      ["custListField10", ["SOAP::SOAPInt", XSD::QName.new(nil, "custListField10")]],
      ["custListField11", ["SOAP::SOAPInt", XSD::QName.new(nil, "custListField11")]],
      ["custListField12", ["SOAP::SOAPInt", XSD::QName.new(nil, "custListField12")]],
      ["custListField13", ["SOAP::SOAPInt", XSD::QName.new(nil, "custListField13")]],
      ["custListField14", ["SOAP::SOAPInt", XSD::QName.new(nil, "custListField14")]],
      ["custListField15", ["SOAP::SOAPInt", XSD::QName.new(nil, "custListField15")]],
      ["custListField16", ["SOAP::SOAPInt", XSD::QName.new(nil, "custListField16")]],
      ["custListField17", ["SOAP::SOAPInt", XSD::QName.new(nil, "custListField17")]],
      ["custListField18", ["SOAP::SOAPInt", XSD::QName.new(nil, "custListField18")]],
      ["custListField19", ["SOAP::SOAPInt", XSD::QName.new(nil, "custListField19")]],
      ["custListField2", ["SOAP::SOAPInt", XSD::QName.new(nil, "custListField2")]],
      ["custListField20", ["SOAP::SOAPInt", XSD::QName.new(nil, "custListField20")]],
      ["custListField21", ["SOAP::SOAPInt", XSD::QName.new(nil, "custListField21")]],
      ["custListField22", ["SOAP::SOAPInt", XSD::QName.new(nil, "custListField22")]],
      ["custListField23", ["SOAP::SOAPInt", XSD::QName.new(nil, "custListField23")]],
      ["custListField24", ["SOAP::SOAPInt", XSD::QName.new(nil, "custListField24")]],
      ["custListField25", ["SOAP::SOAPInt", XSD::QName.new(nil, "custListField25")]],
      ["custListField26", ["SOAP::SOAPInt", XSD::QName.new(nil, "custListField26")]],
      ["custListField27", ["SOAP::SOAPInt", XSD::QName.new(nil, "custListField27")]],
      ["custListField28", ["SOAP::SOAPInt", XSD::QName.new(nil, "custListField28")]],
      ["custListField29", ["SOAP::SOAPInt", XSD::QName.new(nil, "custListField29")]],
      ["custListField3", ["SOAP::SOAPInt", XSD::QName.new(nil, "custListField3")]],
      ["custListField30", ["SOAP::SOAPInt", XSD::QName.new(nil, "custListField30")]],
      ["custListField31", ["SOAP::SOAPInt", XSD::QName.new(nil, "custListField31")]],
      ["custListField32", ["SOAP::SOAPInt", XSD::QName.new(nil, "custListField32")]],
      ["custListField33", ["SOAP::SOAPInt", XSD::QName.new(nil, "custListField33")]],
      ["custListField34", ["SOAP::SOAPInt", XSD::QName.new(nil, "custListField34")]],
      ["custListField35", ["SOAP::SOAPInt", XSD::QName.new(nil, "custListField35")]],
      ["custListField36", ["SOAP::SOAPInt", XSD::QName.new(nil, "custListField36")]],
      ["custListField37", ["SOAP::SOAPInt", XSD::QName.new(nil, "custListField37")]],
      ["custListField38", ["SOAP::SOAPInt", XSD::QName.new(nil, "custListField38")]],
      ["custListField39", ["SOAP::SOAPInt", XSD::QName.new(nil, "custListField39")]],
      ["custListField4", ["SOAP::SOAPInt", XSD::QName.new(nil, "custListField4")]],
      ["custListField40", ["SOAP::SOAPInt", XSD::QName.new(nil, "custListField40")]],
      ["custListField41", ["SOAP::SOAPInt", XSD::QName.new(nil, "custListField41")]],
      ["custListField42", ["SOAP::SOAPInt", XSD::QName.new(nil, "custListField42")]],
      ["custListField43", ["SOAP::SOAPInt", XSD::QName.new(nil, "custListField43")]],
      ["custListField44", ["SOAP::SOAPInt", XSD::QName.new(nil, "custListField44")]],
      ["custListField45", ["SOAP::SOAPInt", XSD::QName.new(nil, "custListField45")]],
      ["custListField46", ["SOAP::SOAPInt", XSD::QName.new(nil, "custListField46")]],
      ["custListField47", ["SOAP::SOAPInt", XSD::QName.new(nil, "custListField47")]],
      ["custListField48", ["SOAP::SOAPInt", XSD::QName.new(nil, "custListField48")]],
      ["custListField49", ["SOAP::SOAPInt", XSD::QName.new(nil, "custListField49")]],
      ["custListField5", ["SOAP::SOAPInt", XSD::QName.new(nil, "custListField5")]],
      ["custListField50", ["SOAP::SOAPInt", XSD::QName.new(nil, "custListField50")]],
      ["custListField6", ["SOAP::SOAPInt", XSD::QName.new(nil, "custListField6")]],
      ["custListField7", ["SOAP::SOAPInt", XSD::QName.new(nil, "custListField7")]],
      ["custListField8", ["SOAP::SOAPInt", XSD::QName.new(nil, "custListField8")]],
      ["custListField9", ["SOAP::SOAPInt", XSD::QName.new(nil, "custListField9")]],
      ["custLongTextField1", ["SOAP::SOAPString", XSD::QName.new(nil, "custLongTextField1")], [0, 1]],
      ["custLongTextField10", ["SOAP::SOAPString", XSD::QName.new(nil, "custLongTextField10")], [0, 1]],
      ["custLongTextField11", ["SOAP::SOAPString", XSD::QName.new(nil, "custLongTextField11")], [0, 1]],
      ["custLongTextField12", ["SOAP::SOAPString", XSD::QName.new(nil, "custLongTextField12")], [0, 1]],
      ["custLongTextField13", ["SOAP::SOAPString", XSD::QName.new(nil, "custLongTextField13")], [0, 1]],
      ["custLongTextField14", ["SOAP::SOAPString", XSD::QName.new(nil, "custLongTextField14")], [0, 1]],
      ["custLongTextField15", ["SOAP::SOAPString", XSD::QName.new(nil, "custLongTextField15")], [0, 1]],
      ["custLongTextField16", ["SOAP::SOAPString", XSD::QName.new(nil, "custLongTextField16")], [0, 1]],
      ["custLongTextField17", ["SOAP::SOAPString", XSD::QName.new(nil, "custLongTextField17")], [0, 1]],
      ["custLongTextField18", ["SOAP::SOAPString", XSD::QName.new(nil, "custLongTextField18")], [0, 1]],
      ["custLongTextField19", ["SOAP::SOAPString", XSD::QName.new(nil, "custLongTextField19")], [0, 1]],
      ["custLongTextField2", ["SOAP::SOAPString", XSD::QName.new(nil, "custLongTextField2")], [0, 1]],
      ["custLongTextField20", ["SOAP::SOAPString", XSD::QName.new(nil, "custLongTextField20")], [0, 1]],
      ["custLongTextField21", ["SOAP::SOAPString", XSD::QName.new(nil, "custLongTextField21")], [0, 1]],
      ["custLongTextField22", ["SOAP::SOAPString", XSD::QName.new(nil, "custLongTextField22")], [0, 1]],
      ["custLongTextField23", ["SOAP::SOAPString", XSD::QName.new(nil, "custLongTextField23")], [0, 1]],
      ["custLongTextField24", ["SOAP::SOAPString", XSD::QName.new(nil, "custLongTextField24")], [0, 1]],
      ["custLongTextField25", ["SOAP::SOAPString", XSD::QName.new(nil, "custLongTextField25")], [0, 1]],
      ["custLongTextField26", ["SOAP::SOAPString", XSD::QName.new(nil, "custLongTextField26")], [0, 1]],
      ["custLongTextField27", ["SOAP::SOAPString", XSD::QName.new(nil, "custLongTextField27")], [0, 1]],
      ["custLongTextField28", ["SOAP::SOAPString", XSD::QName.new(nil, "custLongTextField28")], [0, 1]],
      ["custLongTextField29", ["SOAP::SOAPString", XSD::QName.new(nil, "custLongTextField29")], [0, 1]],
      ["custLongTextField3", ["SOAP::SOAPString", XSD::QName.new(nil, "custLongTextField3")], [0, 1]],
      ["custLongTextField30", ["SOAP::SOAPString", XSD::QName.new(nil, "custLongTextField30")], [0, 1]],
      ["custLongTextField31", ["SOAP::SOAPString", XSD::QName.new(nil, "custLongTextField31")], [0, 1]],
      ["custLongTextField32", ["SOAP::SOAPString", XSD::QName.new(nil, "custLongTextField32")], [0, 1]],
      ["custLongTextField33", ["SOAP::SOAPString", XSD::QName.new(nil, "custLongTextField33")], [0, 1]],
      ["custLongTextField34", ["SOAP::SOAPString", XSD::QName.new(nil, "custLongTextField34")], [0, 1]],
      ["custLongTextField35", ["SOAP::SOAPString", XSD::QName.new(nil, "custLongTextField35")], [0, 1]],
      ["custLongTextField36", ["SOAP::SOAPString", XSD::QName.new(nil, "custLongTextField36")], [0, 1]],
      ["custLongTextField37", ["SOAP::SOAPString", XSD::QName.new(nil, "custLongTextField37")], [0, 1]],
      ["custLongTextField38", ["SOAP::SOAPString", XSD::QName.new(nil, "custLongTextField38")], [0, 1]],
      ["custLongTextField39", ["SOAP::SOAPString", XSD::QName.new(nil, "custLongTextField39")], [0, 1]],
      ["custLongTextField4", ["SOAP::SOAPString", XSD::QName.new(nil, "custLongTextField4")], [0, 1]],
      ["custLongTextField40", ["SOAP::SOAPString", XSD::QName.new(nil, "custLongTextField40")], [0, 1]],
      ["custLongTextField41", ["SOAP::SOAPString", XSD::QName.new(nil, "custLongTextField41")], [0, 1]],
      ["custLongTextField42", ["SOAP::SOAPString", XSD::QName.new(nil, "custLongTextField42")], [0, 1]],
      ["custLongTextField43", ["SOAP::SOAPString", XSD::QName.new(nil, "custLongTextField43")], [0, 1]],
      ["custLongTextField44", ["SOAP::SOAPString", XSD::QName.new(nil, "custLongTextField44")], [0, 1]],
      ["custLongTextField45", ["SOAP::SOAPString", XSD::QName.new(nil, "custLongTextField45")], [0, 1]],
      ["custLongTextField46", ["SOAP::SOAPString", XSD::QName.new(nil, "custLongTextField46")], [0, 1]],
      ["custLongTextField47", ["SOAP::SOAPString", XSD::QName.new(nil, "custLongTextField47")], [0, 1]],
      ["custLongTextField48", ["SOAP::SOAPString", XSD::QName.new(nil, "custLongTextField48")], [0, 1]],
      ["custLongTextField49", ["SOAP::SOAPString", XSD::QName.new(nil, "custLongTextField49")], [0, 1]],
      ["custLongTextField5", ["SOAP::SOAPString", XSD::QName.new(nil, "custLongTextField5")], [0, 1]],
      ["custLongTextField50", ["SOAP::SOAPString", XSD::QName.new(nil, "custLongTextField50")], [0, 1]],
      ["custLongTextField6", ["SOAP::SOAPString", XSD::QName.new(nil, "custLongTextField6")], [0, 1]],
      ["custLongTextField7", ["SOAP::SOAPString", XSD::QName.new(nil, "custLongTextField7")], [0, 1]],
      ["custLongTextField8", ["SOAP::SOAPString", XSD::QName.new(nil, "custLongTextField8")], [0, 1]],
      ["custLongTextField9", ["SOAP::SOAPString", XSD::QName.new(nil, "custLongTextField9")], [0, 1]],
      ["custTextField1", ["SOAP::SOAPString", XSD::QName.new(nil, "custTextField1")], [0, 1]],
      ["custTextField10", ["SOAP::SOAPString", XSD::QName.new(nil, "custTextField10")], [0, 1]],
      ["custTextField11", ["SOAP::SOAPString", XSD::QName.new(nil, "custTextField11")], [0, 1]],
      ["custTextField12", ["SOAP::SOAPString", XSD::QName.new(nil, "custTextField12")], [0, 1]],
      ["custTextField13", ["SOAP::SOAPString", XSD::QName.new(nil, "custTextField13")], [0, 1]],
      ["custTextField14", ["SOAP::SOAPString", XSD::QName.new(nil, "custTextField14")], [0, 1]],
      ["custTextField15", ["SOAP::SOAPString", XSD::QName.new(nil, "custTextField15")], [0, 1]],
      ["custTextField16", ["SOAP::SOAPString", XSD::QName.new(nil, "custTextField16")], [0, 1]],
      ["custTextField17", ["SOAP::SOAPString", XSD::QName.new(nil, "custTextField17")], [0, 1]],
      ["custTextField18", ["SOAP::SOAPString", XSD::QName.new(nil, "custTextField18")], [0, 1]],
      ["custTextField19", ["SOAP::SOAPString", XSD::QName.new(nil, "custTextField19")], [0, 1]],
      ["custTextField2", ["SOAP::SOAPString", XSD::QName.new(nil, "custTextField2")], [0, 1]],
      ["custTextField20", ["SOAP::SOAPString", XSD::QName.new(nil, "custTextField20")], [0, 1]],
      ["custTextField21", ["SOAP::SOAPString", XSD::QName.new(nil, "custTextField21")], [0, 1]],
      ["custTextField22", ["SOAP::SOAPString", XSD::QName.new(nil, "custTextField22")], [0, 1]],
      ["custTextField23", ["SOAP::SOAPString", XSD::QName.new(nil, "custTextField23")], [0, 1]],
      ["custTextField24", ["SOAP::SOAPString", XSD::QName.new(nil, "custTextField24")], [0, 1]],
      ["custTextField25", ["SOAP::SOAPString", XSD::QName.new(nil, "custTextField25")], [0, 1]],
      ["custTextField26", ["SOAP::SOAPString", XSD::QName.new(nil, "custTextField26")], [0, 1]],
      ["custTextField27", ["SOAP::SOAPString", XSD::QName.new(nil, "custTextField27")], [0, 1]],
      ["custTextField28", ["SOAP::SOAPString", XSD::QName.new(nil, "custTextField28")], [0, 1]],
      ["custTextField29", ["SOAP::SOAPString", XSD::QName.new(nil, "custTextField29")], [0, 1]],
      ["custTextField3", ["SOAP::SOAPString", XSD::QName.new(nil, "custTextField3")], [0, 1]],
      ["custTextField30", ["SOAP::SOAPString", XSD::QName.new(nil, "custTextField30")], [0, 1]],
      ["custTextField31", ["SOAP::SOAPString", XSD::QName.new(nil, "custTextField31")], [0, 1]],
      ["custTextField32", ["SOAP::SOAPString", XSD::QName.new(nil, "custTextField32")], [0, 1]],
      ["custTextField33", ["SOAP::SOAPString", XSD::QName.new(nil, "custTextField33")], [0, 1]],
      ["custTextField34", ["SOAP::SOAPString", XSD::QName.new(nil, "custTextField34")], [0, 1]],
      ["custTextField35", ["SOAP::SOAPString", XSD::QName.new(nil, "custTextField35")], [0, 1]],
      ["custTextField36", ["SOAP::SOAPString", XSD::QName.new(nil, "custTextField36")], [0, 1]],
      ["custTextField37", ["SOAP::SOAPString", XSD::QName.new(nil, "custTextField37")], [0, 1]],
      ["custTextField38", ["SOAP::SOAPString", XSD::QName.new(nil, "custTextField38")], [0, 1]],
      ["custTextField39", ["SOAP::SOAPString", XSD::QName.new(nil, "custTextField39")], [0, 1]],
      ["custTextField4", ["SOAP::SOAPString", XSD::QName.new(nil, "custTextField4")], [0, 1]],
      ["custTextField40", ["SOAP::SOAPString", XSD::QName.new(nil, "custTextField40")], [0, 1]],
      ["custTextField41", ["SOAP::SOAPString", XSD::QName.new(nil, "custTextField41")], [0, 1]],
      ["custTextField42", ["SOAP::SOAPString", XSD::QName.new(nil, "custTextField42")], [0, 1]],
      ["custTextField43", ["SOAP::SOAPString", XSD::QName.new(nil, "custTextField43")], [0, 1]],
      ["custTextField44", ["SOAP::SOAPString", XSD::QName.new(nil, "custTextField44")], [0, 1]],
      ["custTextField45", ["SOAP::SOAPString", XSD::QName.new(nil, "custTextField45")], [0, 1]],
      ["custTextField46", ["SOAP::SOAPString", XSD::QName.new(nil, "custTextField46")], [0, 1]],
      ["custTextField47", ["SOAP::SOAPString", XSD::QName.new(nil, "custTextField47")], [0, 1]],
      ["custTextField48", ["SOAP::SOAPString", XSD::QName.new(nil, "custTextField48")], [0, 1]],
      ["custTextField49", ["SOAP::SOAPString", XSD::QName.new(nil, "custTextField49")], [0, 1]],
      ["custTextField5", ["SOAP::SOAPString", XSD::QName.new(nil, "custTextField5")], [0, 1]],
      ["custTextField50", ["SOAP::SOAPString", XSD::QName.new(nil, "custTextField50")], [0, 1]],
      ["custTextField6", ["SOAP::SOAPString", XSD::QName.new(nil, "custTextField6")], [0, 1]],
      ["custTextField7", ["SOAP::SOAPString", XSD::QName.new(nil, "custTextField7")], [0, 1]],
      ["custTextField8", ["SOAP::SOAPString", XSD::QName.new(nil, "custTextField8")], [0, 1]],
      ["custTextField9", ["SOAP::SOAPString", XSD::QName.new(nil, "custTextField9")], [0, 1]],
      ["customDateFields", ["ApiCI::CustomDateFields", XSD::QName.new(nil, "customDateFields")]],
      ["customFields", ["ApiCI::CustomFields", XSD::QName.new(nil, "customFields")]],
      ["historyVersion", ["SOAP::SOAPInt", XSD::QName.new(nil, "historyVersion")]],
      ["id", ["SOAP::SOAPInt", XSD::QName.new(nil, "id")]],
      ["location", ["SOAP::SOAPInt", XSD::QName.new(nil, "location")]],
      ["notes", ["SOAP::SOAPString", XSD::QName.new(nil, "notes")], [0, 1]],
      ["owner", ["SOAP::SOAPString", XSD::QName.new(nil, "owner")], [0, 1]],
      ["ownerGroup", ["SOAP::SOAPString", XSD::QName.new(nil, "ownerGroup")], [0, 1]],
      ["priority", ["SOAP::SOAPInt", XSD::QName.new(nil, "priority")]],
      ["serialNumber", ["SOAP::SOAPString", XSD::QName.new(nil, "serialNumber")], [0, 1]],
      ["status", ["SOAP::SOAPInt", XSD::QName.new(nil, "status")]],
      ["subCategory", ["SOAP::SOAPString", XSD::QName.new(nil, "subCategory")], [0, 1]],
      ["supplier", ["SOAP::SOAPInt", XSD::QName.new(nil, "supplier")]],
      ["supplyDate", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "supplyDate")], [0, 1]],
      ["thirdLevelCategory", ["SOAP::SOAPString", XSD::QName.new(nil, "thirdLevelCategory")], [0, 1]],
      ["users", ["SOAP::SOAPString", XSD::QName.new(nil, "users")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ApiCI::CustomDateFields::Entry,
    :schema_name => XSD::QName.new(nil, "entry"),
    :is_anonymous => true,
    :schema_qualified => false,
    :schema_element => [
      ["key", nil, [0, 1]],
      ["value", nil, [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ApiCI::CustomDateFields,
    :schema_name => XSD::QName.new(nil, "customDateFields"),
    :is_anonymous => true,
    :schema_qualified => false,
    :schema_element => [
      ["entry", "ApiCI::CustomDateFields::Entry[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => ApiCI::CustomFields::Entry,
    :schema_name => XSD::QName.new(nil, "entry"),
    :is_anonymous => true,
    :schema_qualified => false,
    :schema_element => [
      ["key", nil, [0, 1]],
      ["value", nil, [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ApiCI::CustomFields,
    :schema_name => XSD::QName.new(nil, "customFields"),
    :is_anonymous => true,
    :schema_qualified => false,
    :schema_element => [
      ["entry", "ApiCI::CustomFields::Entry[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => ApiServiceRequest,
    :schema_type => XSD::QName.new(NsApiIlientCom, "apiServiceRequest"),
    :schema_basetype => XSD::QName.new(NsApiIlientCom, "apiSysaidObject"),
    :schema_element => [
      ["agreement", ["SOAP::SOAPInt", XSD::QName.new(nil, "agreement")]],
      ["assignCounter", ["SOAP::SOAPInt", XSD::QName.new(nil, "assignCounter")]],
      ["assignedGroup", ["SOAP::SOAPString", XSD::QName.new(nil, "assignedGroup")], [0, 1]],
      ["assignedTo", ["SOAP::SOAPString", XSD::QName.new(nil, "assignedTo")], [0, 1]],
      ["cIId", ["SOAP::SOAPInt", XSD::QName.new(nil, "CIId")]],
      ["category", ["SOAP::SOAPString", XSD::QName.new(nil, "category")], [0, 1]],
      ["cc", ["SOAP::SOAPString", XSD::QName.new(nil, "cc")], [0, 1]],
      ["closeTime", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "closeTime")], [0, 1]],
      ["computerID", ["SOAP::SOAPString", XSD::QName.new(nil, "computerID")], [0, 1]],
      ["currentSupportLevel", ["SOAP::SOAPInt", XSD::QName.new(nil, "currentSupportLevel")]],
      ["custDate1", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "custDate1")], [0, 1]],
      ["custDate2", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "custDate2")], [0, 1]],
      ["custInt1", ["SOAP::SOAPInt", XSD::QName.new(nil, "custInt1")]],
      ["custInt2", ["SOAP::SOAPInt", XSD::QName.new(nil, "custInt2")]],
      ["custList1", ["SOAP::SOAPInt", XSD::QName.new(nil, "custList1")]],
      ["custList2", ["SOAP::SOAPInt", XSD::QName.new(nil, "custList2")]],
      ["custNotes", ["SOAP::SOAPString", XSD::QName.new(nil, "custNotes")], [0, 1]],
      ["custText1", ["SOAP::SOAPString", XSD::QName.new(nil, "custText1")], [0, 1]],
      ["custText2", ["SOAP::SOAPString", XSD::QName.new(nil, "custText2")], [0, 1]],
      ["customDateFields", ["ApiServiceRequest::CustomDateFields", XSD::QName.new(nil, "customDateFields")]],
      ["customFields", ["ApiServiceRequest::CustomFields", XSD::QName.new(nil, "customFields")]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")], [0, 1]],
      ["dueDate", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "dueDate")], [0, 1]],
      ["emailAccount", ["SOAP::SOAPString", XSD::QName.new(nil, "emailAccount")], [0, 1]],
      ["escalation", ["SOAP::SOAPInt", XSD::QName.new(nil, "escalation")]],
      ["followupActualDate", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "followupActualDate")], [0, 1]],
      ["followupPlannedDate", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "followupPlannedDate")], [0, 1]],
      ["followupText", ["SOAP::SOAPString", XSD::QName.new(nil, "followupText")], [0, 1]],
      ["followupUser", ["SOAP::SOAPString", XSD::QName.new(nil, "followupUser")], [0, 1]],
      ["id", ["SOAP::SOAPInt", XSD::QName.new(nil, "id")]],
      ["insertTime", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "insertTime")], [0, 1]],
      ["location", ["SOAP::SOAPInt", XSD::QName.new(nil, "location")]],
      ["maxSupportLevel", ["SOAP::SOAPInt", XSD::QName.new(nil, "maxSupportLevel")]],
      ["notes", ["SOAP::SOAPString", XSD::QName.new(nil, "notes")], [0, 1]],
      ["parentLink", ["SOAP::SOAPInt", XSD::QName.new(nil, "parentLink")]],
      ["priority", ["SOAP::SOAPInt", XSD::QName.new(nil, "priority")]],
      ["projectID", ["SOAP::SOAPInt", XSD::QName.new(nil, "projectID")]],
      ["reopenCounter", ["SOAP::SOAPInt", XSD::QName.new(nil, "reopenCounter")]],
      ["requestUser", ["SOAP::SOAPString", XSD::QName.new(nil, "requestUser")], [0, 1]],
      ["resolution", ["SOAP::SOAPString", XSD::QName.new(nil, "resolution")], [0, 1]],
      ["responsibleManager", ["SOAP::SOAPString", XSD::QName.new(nil, "responsibleManager")], [0, 1]],
      ["solution", ["SOAP::SOAPString", XSD::QName.new(nil, "solution")], [0, 1]],
      ["source", ["SOAP::SOAPInt", XSD::QName.new(nil, "source")]],
      ["srSubType", ["SOAP::SOAPInt", XSD::QName.new(nil, "srSubType")]],
      ["srType", ["SOAP::SOAPInt", XSD::QName.new(nil, "srType")]],
      ["status", ["SOAP::SOAPInt", XSD::QName.new(nil, "status")]],
      ["subCategory", ["SOAP::SOAPString", XSD::QName.new(nil, "subCategory")], [0, 1]],
      ["submitUser", ["SOAP::SOAPString", XSD::QName.new(nil, "submitUser")], [0, 1]],
      ["successRating", ["SOAP::SOAPInt", XSD::QName.new(nil, "successRating")]],
      ["taskID", ["SOAP::SOAPInt", XSD::QName.new(nil, "taskID")]],
      ["thirdLevelCategory", ["SOAP::SOAPString", XSD::QName.new(nil, "thirdLevelCategory")], [0, 1]],
      ["title", ["SOAP::SOAPString", XSD::QName.new(nil, "title")], [0, 1]],
      ["updateTime", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "updateTime")], [0, 1]],
      ["updateUser", ["SOAP::SOAPString", XSD::QName.new(nil, "updateUser")], [0, 1]],
      ["urgency", ["SOAP::SOAPInt", XSD::QName.new(nil, "urgency")]],
      ["userManager", ["SOAP::SOAPString", XSD::QName.new(nil, "userManager")], [0, 1]],
      ["version", ["SOAP::SOAPInt", XSD::QName.new(nil, "version")]]
    ]
  )

  EncodedRegistry.register(
    :class => ApiServiceRequest::CustomDateFields::Entry,
    :schema_name => XSD::QName.new(nil, "entry"),
    :is_anonymous => true,
    :schema_qualified => false,
    :schema_element => [
      ["key", nil, [0, 1]],
      ["value", nil, [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ApiServiceRequest::CustomDateFields,
    :schema_name => XSD::QName.new(nil, "customDateFields"),
    :is_anonymous => true,
    :schema_qualified => false,
    :schema_element => [
      ["entry", "ApiServiceRequest::CustomDateFields::Entry[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => ApiServiceRequest::CustomFields::Entry,
    :schema_name => XSD::QName.new(nil, "entry"),
    :is_anonymous => true,
    :schema_qualified => false,
    :schema_element => [
      ["key", nil, [0, 1]],
      ["value", nil, [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ApiServiceRequest::CustomFields,
    :schema_name => XSD::QName.new(nil, "customFields"),
    :is_anonymous => true,
    :schema_qualified => false,
    :schema_element => [
      ["entry", "ApiServiceRequest::CustomFields::Entry[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => ApiComputer,
    :schema_type => XSD::QName.new(NsApiIlientCom, "apiComputer"),
    :schema_basetype => XSD::QName.new(NsApiIlientCom, "apiSysaidObject"),
    :schema_element => [
      ["agentVersion", ["SOAP::SOAPString", XSD::QName.new(nil, "agentVersion")], [0, 1]],
      ["biosType", ["SOAP::SOAPString", XSD::QName.new(nil, "biosType")], [0, 1]],
      ["building", ["SOAP::SOAPString", XSD::QName.new(nil, "building")], [0, 1]],
      ["cIId", ["SOAP::SOAPInt", XSD::QName.new(nil, "CIId")]],
      ["catalogNumber", ["SOAP::SOAPString", XSD::QName.new(nil, "catalogNumber")], [0, 1]],
      ["collectionParams", ["SOAP::SOAPString", XSD::QName.new(nil, "collectionParams")], [0, 1]],
      ["collectionType", ["SOAP::SOAPInt", XSD::QName.new(nil, "collectionType")]],
      ["company", ["SOAP::SOAPInt", XSD::QName.new(nil, "company")]],
      ["companySerial", ["SOAP::SOAPString", XSD::QName.new(nil, "companySerial")], [0, 1]],
      ["computerID", ["SOAP::SOAPString", XSD::QName.new(nil, "computerID")], [0, 1]],
      ["computerName", ["SOAP::SOAPString", XSD::QName.new(nil, "computerName")], [0, 1]],
      ["cpuCount", ["SOAP::SOAPInt", XSD::QName.new(nil, "cpuCount")]],
      ["cpuModel", ["SOAP::SOAPString", XSD::QName.new(nil, "cpuModel")], [0, 1]],
      ["cpuSpeed", ["SOAP::SOAPInt", XSD::QName.new(nil, "cpuSpeed")]],
      ["cpuVendor", ["SOAP::SOAPString", XSD::QName.new(nil, "cpuVendor")], [0, 1]],
      ["cubic", ["SOAP::SOAPString", XSD::QName.new(nil, "cubic")], [0, 1]],
      ["custDate1", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "custDate1")], [0, 1]],
      ["custDate2", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "custDate2")], [0, 1]],
      ["custInt1", ["SOAP::SOAPInt", XSD::QName.new(nil, "custInt1")]],
      ["custInt2", ["SOAP::SOAPInt", XSD::QName.new(nil, "custInt2")]],
      ["custList1", ["SOAP::SOAPInt", XSD::QName.new(nil, "custList1")]],
      ["custList2", ["SOAP::SOAPInt", XSD::QName.new(nil, "custList2")]],
      ["custNotes", ["SOAP::SOAPString", XSD::QName.new(nil, "custNotes")], [0, 1]],
      ["custText1", ["SOAP::SOAPString", XSD::QName.new(nil, "custText1")], [0, 1]],
      ["custText2", ["SOAP::SOAPString", XSD::QName.new(nil, "custText2")], [0, 1]],
      ["customDateFields", ["ApiComputer::CustomDateFields", XSD::QName.new(nil, "customDateFields")]],
      ["customFields", ["ApiComputer::CustomFields", XSD::QName.new(nil, "customFields")]],
      ["department", ["SOAP::SOAPInt", XSD::QName.new(nil, "department")]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")], [0, 1]],
      ["disable", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "disable")]],
      ["disksCount", ["SOAP::SOAPInt", XSD::QName.new(nil, "disksCount")]],
      ["disksSize", ["SOAP::SOAPInt", XSD::QName.new(nil, "disksSize")]],
      ["displayAdapter", ["SOAP::SOAPString", XSD::QName.new(nil, "displayAdapter")], [0, 1]],
      ["displayMemory", ["SOAP::SOAPInt", XSD::QName.new(nil, "displayMemory")]],
      ["displayResolution", ["SOAP::SOAPString", XSD::QName.new(nil, "displayResolution")], [0, 1]],
      ["externalSerial", ["SOAP::SOAPString", XSD::QName.new(nil, "externalSerial")], [0, 1]],
      ["floor", ["SOAP::SOAPString", XSD::QName.new(nil, "floor")], [0, 1]],
      ["freeMemBanks", ["SOAP::SOAPInt", XSD::QName.new(nil, "freeMemBanks")]],
      ["groupName", ["SOAP::SOAPString", XSD::QName.new(nil, "groupName")], [0, 1]],
      ["ipAddress", ["SOAP::SOAPString", XSD::QName.new(nil, "ipAddress")], [0, 1]],
      ["lastMaintenanceDate", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "lastMaintenanceDate")], [0, 1]],
      ["locationIdx", ["SOAP::SOAPInt", XSD::QName.new(nil, "locationIdx")]],
      ["macAddress", ["SOAP::SOAPString", XSD::QName.new(nil, "macAddress")], [0, 1]],
      ["maintenanceSupplierID", ["SOAP::SOAPInt", XSD::QName.new(nil, "maintenanceSupplierID")]],
      ["memBanks", ["SOAP::SOAPInt", XSD::QName.new(nil, "memBanks")]],
      ["memoryPhysical", ["SOAP::SOAPLong", XSD::QName.new(nil, "memoryPhysical")]],
      ["monitor", ["SOAP::SOAPString", XSD::QName.new(nil, "monitor")], [0, 1]],
      ["monitorSerial", ["SOAP::SOAPString", XSD::QName.new(nil, "monitorSerial")], [0, 1]],
      ["oSName", ["SOAP::SOAPString", XSD::QName.new(nil, "OSName")], [0, 1]],
      ["oSPlatform", ["SOAP::SOAPString", XSD::QName.new(nil, "OSPlatform")], [0, 1]],
      ["oSServicePack", ["SOAP::SOAPString", XSD::QName.new(nil, "OSServicePack")], [0, 1]],
      ["oSVersion", ["SOAP::SOAPString", XSD::QName.new(nil, "OSVersion")], [0, 1]],
      ["occupiedMemBanks", ["SOAP::SOAPInt", XSD::QName.new(nil, "occupiedMemBanks")]],
      ["packetsIn", ["SOAP::SOAPFloat", XSD::QName.new(nil, "packetsIn")]],
      ["packetsOut", ["SOAP::SOAPFloat", XSD::QName.new(nil, "packetsOut")]],
      ["parentAsset", ["SOAP::SOAPString", XSD::QName.new(nil, "parentAsset")], [0, 1]],
      ["purchaseDate", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "purchaseDate")], [0, 1]],
      ["purchasePrice", ["SOAP::SOAPFloat", XSD::QName.new(nil, "purchasePrice")]],
      ["serial", ["SOAP::SOAPString", XSD::QName.new(nil, "serial")], [0, 1]],
      ["snmpCustText1", ["SOAP::SOAPString", XSD::QName.new(nil, "snmpCustText1")], [0, 1]],
      ["snmpCustText10", ["SOAP::SOAPString", XSD::QName.new(nil, "snmpCustText10")], [0, 1]],
      ["snmpCustText11", ["SOAP::SOAPString", XSD::QName.new(nil, "snmpCustText11")], [0, 1]],
      ["snmpCustText12", ["SOAP::SOAPString", XSD::QName.new(nil, "snmpCustText12")], [0, 1]],
      ["snmpCustText13", ["SOAP::SOAPString", XSD::QName.new(nil, "snmpCustText13")], [0, 1]],
      ["snmpCustText14", ["SOAP::SOAPString", XSD::QName.new(nil, "snmpCustText14")], [0, 1]],
      ["snmpCustText15", ["SOAP::SOAPString", XSD::QName.new(nil, "snmpCustText15")], [0, 1]],
      ["snmpCustText16", ["SOAP::SOAPString", XSD::QName.new(nil, "snmpCustText16")], [0, 1]],
      ["snmpCustText17", ["SOAP::SOAPString", XSD::QName.new(nil, "snmpCustText17")], [0, 1]],
      ["snmpCustText18", ["SOAP::SOAPString", XSD::QName.new(nil, "snmpCustText18")], [0, 1]],
      ["snmpCustText19", ["SOAP::SOAPString", XSD::QName.new(nil, "snmpCustText19")], [0, 1]],
      ["snmpCustText2", ["SOAP::SOAPString", XSD::QName.new(nil, "snmpCustText2")], [0, 1]],
      ["snmpCustText20", ["SOAP::SOAPString", XSD::QName.new(nil, "snmpCustText20")], [0, 1]],
      ["snmpCustText3", ["SOAP::SOAPString", XSD::QName.new(nil, "snmpCustText3")], [0, 1]],
      ["snmpCustText4", ["SOAP::SOAPString", XSD::QName.new(nil, "snmpCustText4")], [0, 1]],
      ["snmpCustText5", ["SOAP::SOAPString", XSD::QName.new(nil, "snmpCustText5")], [0, 1]],
      ["snmpCustText6", ["SOAP::SOAPString", XSD::QName.new(nil, "snmpCustText6")], [0, 1]],
      ["snmpCustText7", ["SOAP::SOAPString", XSD::QName.new(nil, "snmpCustText7")], [0, 1]],
      ["snmpCustText8", ["SOAP::SOAPString", XSD::QName.new(nil, "snmpCustText8")], [0, 1]],
      ["snmpCustText9", ["SOAP::SOAPString", XSD::QName.new(nil, "snmpCustText9")], [0, 1]],
      ["supplierID", ["SOAP::SOAPInt", XSD::QName.new(nil, "supplierID")]],
      ["systemManufacturer", ["SOAP::SOAPString", XSD::QName.new(nil, "systemManufacturer")], [0, 1]],
      ["systemModel", ["SOAP::SOAPString", XSD::QName.new(nil, "systemModel")], [0, 1]],
      ["updateTime", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "updateTime")], [0, 1]],
      ["userName", ["SOAP::SOAPString", XSD::QName.new(nil, "userName")], [0, 1]],
      ["version", ["SOAP::SOAPInt", XSD::QName.new(nil, "version")]],
      ["warrantyExpirationDate", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "warrantyExpirationDate")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ApiComputer::CustomDateFields::Entry,
    :schema_name => XSD::QName.new(nil, "entry"),
    :is_anonymous => true,
    :schema_qualified => false,
    :schema_element => [
      ["key", nil, [0, 1]],
      ["value", nil, [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ApiComputer::CustomDateFields,
    :schema_name => XSD::QName.new(nil, "customDateFields"),
    :is_anonymous => true,
    :schema_qualified => false,
    :schema_element => [
      ["entry", "ApiComputer::CustomDateFields::Entry[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => ApiComputer::CustomFields::Entry,
    :schema_name => XSD::QName.new(nil, "entry"),
    :is_anonymous => true,
    :schema_qualified => false,
    :schema_element => [
      ["key", nil, [0, 1]],
      ["value", nil, [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ApiComputer::CustomFields,
    :schema_name => XSD::QName.new(nil, "customFields"),
    :is_anonymous => true,
    :schema_qualified => false,
    :schema_element => [
      ["entry", "ApiComputer::CustomFields::Entry[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => ApiSoftware,
    :schema_type => XSD::QName.new(NsApiIlientCom, "apiSoftware"),
    :schema_basetype => XSD::QName.new(NsApiIlientCom, "apiSysaidObject"),
    :schema_element => [
      ["cIId", ["SOAP::SOAPInt", XSD::QName.new(nil, "CIId")]],
      ["company", ["SOAP::SOAPInt", XSD::QName.new(nil, "company")]],
      ["custDate1", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "custDate1")], [0, 1]],
      ["custDate2", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "custDate2")], [0, 1]],
      ["custInt1", ["SOAP::SOAPInt", XSD::QName.new(nil, "custInt1")]],
      ["custInt2", ["SOAP::SOAPInt", XSD::QName.new(nil, "custInt2")]],
      ["custList1", ["SOAP::SOAPInt", XSD::QName.new(nil, "custList1")]],
      ["custList2", ["SOAP::SOAPInt", XSD::QName.new(nil, "custList2")]],
      ["custNotes", ["SOAP::SOAPString", XSD::QName.new(nil, "custNotes")], [0, 1]],
      ["custText1", ["SOAP::SOAPString", XSD::QName.new(nil, "custText1")], [0, 1]],
      ["custText2", ["SOAP::SOAPString", XSD::QName.new(nil, "custText2")], [0, 1]],
      ["freeware", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "freeware")]],
      ["historyVersion", ["SOAP::SOAPInt", XSD::QName.new(nil, "historyVersion")]],
      ["inst_names", ["[]", XSD::QName.new(nil, "inst_names")], [0, nil]],
      ["licenses", ["SOAP::SOAPInt", XSD::QName.new(nil, "licenses")]],
      ["notes", ["SOAP::SOAPString", XSD::QName.new(nil, "notes")], [0, 1]],
      ["productName", ["SOAP::SOAPString", XSD::QName.new(nil, "productName")], [0, 1]],
      ["purchaseDate", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "purchaseDate")], [0, 1]],
      ["softwareID", ["SOAP::SOAPInt", XSD::QName.new(nil, "softwareID")]],
      ["supplierID", ["SOAP::SOAPInt", XSD::QName.new(nil, "supplierID")]],
      ["supportExpiration", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "supportExpiration")], [0, 1]],
      ["vendor", ["SOAP::SOAPString", XSD::QName.new(nil, "vendor")], [0, 1]],
      ["version", ["SOAP::SOAPString", XSD::QName.new(nil, "version")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ApiCompany,
    :schema_type => XSD::QName.new(NsApiIlientCom, "apiCompany"),
    :schema_basetype => XSD::QName.new(NsApiIlientCom, "apiSysaidObject"),
    :schema_element => [
      ["address", ["SOAP::SOAPString", XSD::QName.new(nil, "address")], [0, 1]],
      ["address2", ["SOAP::SOAPString", XSD::QName.new(nil, "address2")], [0, 1]],
      ["agreement", ["SOAP::SOAPInt", XSD::QName.new(nil, "agreement")]],
      ["agreementEnd", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "agreementEnd")], [0, 1]],
      ["agreementStart", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "agreementStart")], [0, 1]],
      ["city", ["SOAP::SOAPString", XSD::QName.new(nil, "city")], [0, 1]],
      ["country", ["SOAP::SOAPString", XSD::QName.new(nil, "country")], [0, 1]],
      ["custDate1", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "custDate1")], [0, 1]],
      ["custDate2", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "custDate2")], [0, 1]],
      ["custInt1", ["SOAP::SOAPInt", XSD::QName.new(nil, "custInt1")]],
      ["custInt2", ["SOAP::SOAPInt", XSD::QName.new(nil, "custInt2")]],
      ["custList1", ["SOAP::SOAPInt", XSD::QName.new(nil, "custList1")]],
      ["custList2", ["SOAP::SOAPInt", XSD::QName.new(nil, "custList2")]],
      ["custNotes", ["SOAP::SOAPString", XSD::QName.new(nil, "custNotes")], [0, 1]],
      ["custText1", ["SOAP::SOAPString", XSD::QName.new(nil, "custText1")], [0, 1]],
      ["custText2", ["SOAP::SOAPString", XSD::QName.new(nil, "custText2")], [0, 1]],
      ["expirationTime", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "expirationTime")], [0, 1]],
      ["fax", ["SOAP::SOAPString", XSD::QName.new(nil, "fax")], [0, 1]],
      ["id", ["SOAP::SOAPInt", XSD::QName.new(nil, "id")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")], [0, 1]],
      ["notes", ["SOAP::SOAPString", XSD::QName.new(nil, "notes")], [0, 1]],
      ["phone", ["SOAP::SOAPString", XSD::QName.new(nil, "phone")], [0, 1]],
      ["state", ["SOAP::SOAPString", XSD::QName.new(nil, "state")], [0, 1]],
      ["version", ["SOAP::SOAPInt", XSD::QName.new(nil, "version")]],
      ["zip", ["SOAP::SOAPString", XSD::QName.new(nil, "zip")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ApiSupplier,
    :schema_type => XSD::QName.new(NsApiIlientCom, "apiSupplier"),
    :schema_basetype => XSD::QName.new(NsApiIlientCom, "apiSysaidObject"),
    :schema_element => [
      ["account", ["SOAP::SOAPString", XSD::QName.new(nil, "account")], [0, 1]],
      ["address", ["SOAP::SOAPString", XSD::QName.new(nil, "address")], [0, 1]],
      ["contact", ["SOAP::SOAPString", XSD::QName.new(nil, "contact")], [0, 1]],
      ["custDate1", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "custDate1")], [0, 1]],
      ["custDate2", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "custDate2")], [0, 1]],
      ["custInt1", ["SOAP::SOAPInt", XSD::QName.new(nil, "custInt1")]],
      ["custInt2", ["SOAP::SOAPInt", XSD::QName.new(nil, "custInt2")]],
      ["custList1", ["SOAP::SOAPInt", XSD::QName.new(nil, "custList1")]],
      ["custList2", ["SOAP::SOAPInt", XSD::QName.new(nil, "custList2")]],
      ["custNotes", ["SOAP::SOAPString", XSD::QName.new(nil, "custNotes")], [0, 1]],
      ["custText1", ["SOAP::SOAPString", XSD::QName.new(nil, "custText1")], [0, 1]],
      ["custText2", ["SOAP::SOAPString", XSD::QName.new(nil, "custText2")], [0, 1]],
      ["email", ["SOAP::SOAPString", XSD::QName.new(nil, "email")], [0, 1]],
      ["fax", ["SOAP::SOAPString", XSD::QName.new(nil, "fax")], [0, 1]],
      ["mobile", ["SOAP::SOAPString", XSD::QName.new(nil, "mobile")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")], [0, 1]],
      ["notes", ["SOAP::SOAPString", XSD::QName.new(nil, "notes")], [0, 1]],
      ["phone", ["SOAP::SOAPString", XSD::QName.new(nil, "phone")], [0, 1]],
      ["phone2", ["SOAP::SOAPString", XSD::QName.new(nil, "phone2")], [0, 1]],
      ["supplierID", ["SOAP::SOAPInt", XSD::QName.new(nil, "supplierID")]],
      ["version", ["SOAP::SOAPInt", XSD::QName.new(nil, "version")]]
    ]
  )

  EncodedRegistry.register(
    :class => ApiSysAidUser,
    :schema_type => XSD::QName.new(NsApiIlientCom, "apiSysAidUser"),
    :schema_basetype => XSD::QName.new(NsApiIlientCom, "apiSysaidObject"),
    :schema_element => [
      ["admin", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "admin")]],
      ["agreement", ["SOAP::SOAPInt", XSD::QName.new(nil, "agreement")]],
      ["building", ["SOAP::SOAPString", XSD::QName.new(nil, "building")], [0, 1]],
      ["carNumber", ["SOAP::SOAPString", XSD::QName.new(nil, "carNumber")], [0, 1]],
      ["cellphone", ["SOAP::SOAPString", XSD::QName.new(nil, "cellphone")], [0, 1]],
      ["company", ["SOAP::SOAPInt", XSD::QName.new(nil, "company")]],
      ["cubic", ["SOAP::SOAPString", XSD::QName.new(nil, "cubic")], [0, 1]],
      ["custDate1", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "custDate1")], [0, 1]],
      ["custDate2", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "custDate2")], [0, 1]],
      ["custInt1", ["SOAP::SOAPInt", XSD::QName.new(nil, "custInt1")]],
      ["custInt2", ["SOAP::SOAPInt", XSD::QName.new(nil, "custInt2")]],
      ["custList1", ["SOAP::SOAPInt", XSD::QName.new(nil, "custList1")]],
      ["custList2", ["SOAP::SOAPInt", XSD::QName.new(nil, "custList2")]],
      ["custNotes", ["SOAP::SOAPString", XSD::QName.new(nil, "custNotes")], [0, 1]],
      ["custText1", ["SOAP::SOAPString", XSD::QName.new(nil, "custText1")], [0, 1]],
      ["custText2", ["SOAP::SOAPString", XSD::QName.new(nil, "custText2")], [0, 1]],
      ["department", ["SOAP::SOAPInt", XSD::QName.new(nil, "department")]],
      ["disable", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "disable")]],
      ["displayName", ["SOAP::SOAPString", XSD::QName.new(nil, "displayName")], [0, 1]],
      ["email", ["SOAP::SOAPString", XSD::QName.new(nil, "email")], [0, 1]],
      ["emailNotifications", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "emailNotifications")]],
      ["enableLoginToEup", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "enableLoginToEup")]],
      ["expirationTime", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "expirationTime")], [0, 1]],
      ["firstName", ["SOAP::SOAPString", XSD::QName.new(nil, "firstName")], [0, 1]],
      ["floor", ["SOAP::SOAPString", XSD::QName.new(nil, "floor")], [0, 1]],
      ["lastName", ["SOAP::SOAPString", XSD::QName.new(nil, "lastName")], [0, 1]],
      ["location", ["SOAP::SOAPInt", XSD::QName.new(nil, "location")]],
      ["manager", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "manager")]],
      ["notes", ["SOAP::SOAPString", XSD::QName.new(nil, "notes")], [0, 1]],
      ["password", ["SOAP::SOAPString", XSD::QName.new(nil, "password")], [0, 1]],
      ["phone", ["SOAP::SOAPString", XSD::QName.new(nil, "phone")], [0, 1]],
      ["secondaryEmail", ["SOAP::SOAPString", XSD::QName.new(nil, "secondaryEmail")], [0, 1]],
      ["sms", ["SOAP::SOAPString", XSD::QName.new(nil, "sms")], [0, 1]],
      ["userManagerName", ["SOAP::SOAPString", XSD::QName.new(nil, "userManagerName")], [0, 1]],
      ["userName", ["SOAP::SOAPString", XSD::QName.new(nil, "userName")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ApiProject,
    :schema_type => XSD::QName.new(NsApiIlientCom, "apiProject"),
    :schema_basetype => XSD::QName.new(NsApiIlientCom, "apiSysaidObject"),
    :schema_element => [
      ["assignedGroup", ["SOAP::SOAPString", XSD::QName.new(nil, "assignedGroup")], [0, 1]],
      ["category", ["SOAP::SOAPInt", XSD::QName.new(nil, "category")]],
      ["company", ["SOAP::SOAPInt", XSD::QName.new(nil, "company")]],
      ["custDate1", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "custDate1")], [0, 1]],
      ["custDate2", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "custDate2")], [0, 1]],
      ["custInt1", ["SOAP::SOAPInt", XSD::QName.new(nil, "custInt1")]],
      ["custInt2", ["SOAP::SOAPInt", XSD::QName.new(nil, "custInt2")]],
      ["custList1", ["SOAP::SOAPInt", XSD::QName.new(nil, "custList1")]],
      ["custList2", ["SOAP::SOAPInt", XSD::QName.new(nil, "custList2")]],
      ["custNotes", ["SOAP::SOAPString", XSD::QName.new(nil, "custNotes")], [0, 1]],
      ["custText1", ["SOAP::SOAPString", XSD::QName.new(nil, "custText1")], [0, 1]],
      ["custText2", ["SOAP::SOAPString", XSD::QName.new(nil, "custText2")], [0, 1]],
      ["customDateFields", ["ApiProject::CustomDateFields", XSD::QName.new(nil, "customDateFields")]],
      ["customFields", ["ApiProject::CustomFields", XSD::QName.new(nil, "customFields")]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")], [0, 1]],
      ["endTime", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "endTime")], [0, 1]],
      ["id", ["SOAP::SOAPInt", XSD::QName.new(nil, "id")]],
      ["incidentTitle", ["SOAP::SOAPString", XSD::QName.new(nil, "incidentTitle")], [0, 1]],
      ["manager", ["SOAP::SOAPString", XSD::QName.new(nil, "manager")], [0, 1]],
      ["notes", ["SOAP::SOAPString", XSD::QName.new(nil, "notes")], [0, 1]],
      ["progress", ["SOAP::SOAPInt", XSD::QName.new(nil, "progress")]],
      ["rawEstimation", ["SOAP::SOAPInt", XSD::QName.new(nil, "rawEstimation")]],
      ["requestGroup", ["SOAP::SOAPString", XSD::QName.new(nil, "requestGroup")], [0, 1]],
      ["startTime", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "startTime")], [0, 1]],
      ["status", ["SOAP::SOAPInt", XSD::QName.new(nil, "status")]],
      ["title", ["SOAP::SOAPString", XSD::QName.new(nil, "title")], [0, 1]],
      ["version", ["SOAP::SOAPInt", XSD::QName.new(nil, "version")]]
    ]
  )

  EncodedRegistry.register(
    :class => ApiProject::CustomDateFields::Entry,
    :schema_name => XSD::QName.new(nil, "entry"),
    :is_anonymous => true,
    :schema_qualified => false,
    :schema_element => [
      ["key", nil, [0, 1]],
      ["value", nil, [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ApiProject::CustomDateFields,
    :schema_name => XSD::QName.new(nil, "customDateFields"),
    :is_anonymous => true,
    :schema_qualified => false,
    :schema_element => [
      ["entry", "ApiProject::CustomDateFields::Entry[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => ApiProject::CustomFields::Entry,
    :schema_name => XSD::QName.new(nil, "entry"),
    :is_anonymous => true,
    :schema_qualified => false,
    :schema_element => [
      ["key", nil, [0, 1]],
      ["value", nil, [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ApiProject::CustomFields,
    :schema_name => XSD::QName.new(nil, "customFields"),
    :is_anonymous => true,
    :schema_qualified => false,
    :schema_element => [
      ["entry", "ApiProject::CustomFields::Entry[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => ApiTask,
    :schema_type => XSD::QName.new(NsApiIlientCom, "apiTask"),
    :schema_basetype => XSD::QName.new(NsApiIlientCom, "apiSysaidObject"),
    :schema_element => [
      ["category", ["SOAP::SOAPInt", XSD::QName.new(nil, "category")]],
      ["ciId", ["SOAP::SOAPInt", XSD::QName.new(nil, "ciId")]],
      ["custDate1", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "custDate1")], [0, 1]],
      ["custDate2", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "custDate2")], [0, 1]],
      ["custInt1", ["SOAP::SOAPInt", XSD::QName.new(nil, "custInt1")]],
      ["custInt2", ["SOAP::SOAPInt", XSD::QName.new(nil, "custInt2")]],
      ["custList1", ["SOAP::SOAPInt", XSD::QName.new(nil, "custList1")]],
      ["custList2", ["SOAP::SOAPInt", XSD::QName.new(nil, "custList2")]],
      ["custNotes", ["SOAP::SOAPString", XSD::QName.new(nil, "custNotes")], [0, 1]],
      ["custText1", ["SOAP::SOAPString", XSD::QName.new(nil, "custText1")], [0, 1]],
      ["custText2", ["SOAP::SOAPString", XSD::QName.new(nil, "custText2")], [0, 1]],
      ["customDateFields", ["ApiTask::CustomDateFields", XSD::QName.new(nil, "customDateFields")]],
      ["customFields", ["ApiTask::CustomFields", XSD::QName.new(nil, "customFields")]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")], [0, 1]],
      ["endTime", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "endTime")], [0, 1]],
      ["estimation", ["SOAP::SOAPInt", XSD::QName.new(nil, "estimation")]],
      ["id", ["SOAP::SOAPInt", XSD::QName.new(nil, "id")]],
      ["notes", ["SOAP::SOAPString", XSD::QName.new(nil, "notes")], [0, 1]],
      ["progress", ["SOAP::SOAPInt", XSD::QName.new(nil, "progress")]],
      ["startTime", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "startTime")], [0, 1]],
      ["status", ["SOAP::SOAPInt", XSD::QName.new(nil, "status")]],
      ["taskDependency", ["SOAP::SOAPInt", XSD::QName.new(nil, "taskDependency")]],
      ["taskDependencyType", ["SOAP::SOAPInt", XSD::QName.new(nil, "taskDependencyType")]],
      ["title", ["SOAP::SOAPString", XSD::QName.new(nil, "title")], [0, 1]],
      ["version", ["SOAP::SOAPInt", XSD::QName.new(nil, "version")]]
    ]
  )

  EncodedRegistry.register(
    :class => ApiTask::CustomDateFields::Entry,
    :schema_name => XSD::QName.new(nil, "entry"),
    :is_anonymous => true,
    :schema_qualified => false,
    :schema_element => [
      ["key", nil, [0, 1]],
      ["value", nil, [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ApiTask::CustomDateFields,
    :schema_name => XSD::QName.new(nil, "customDateFields"),
    :is_anonymous => true,
    :schema_qualified => false,
    :schema_element => [
      ["entry", "ApiTask::CustomDateFields::Entry[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => ApiTask::CustomFields::Entry,
    :schema_name => XSD::QName.new(nil, "entry"),
    :is_anonymous => true,
    :schema_qualified => false,
    :schema_element => [
      ["key", nil, [0, 1]],
      ["value", nil, [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ApiTask::CustomFields,
    :schema_name => XSD::QName.new(nil, "customFields"),
    :is_anonymous => true,
    :schema_qualified => false,
    :schema_element => [
      ["entry", "ApiTask::CustomFields::Entry[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => ApiComputerItem,
    :schema_type => XSD::QName.new(NsApiIlientCom, "apiComputerItem"),
    :schema_element => [
      ["accountId", ["SOAP::SOAPString", XSD::QName.new(nil, "accountId")], [0, 1]],
      ["computerId", ["SOAP::SOAPString", XSD::QName.new(nil, "computerId")], [0, 1]],
      ["itemDisplay", ["SOAP::SOAPString", XSD::QName.new(nil, "itemDisplay")], [0, 1]],
      ["itemType", ["SOAP::SOAPString", XSD::QName.new(nil, "itemType")], [0, 1]],
      ["license", ["SOAP::SOAPString", XSD::QName.new(nil, "license")], [0, 1]],
      ["value", ["SOAP::SOAPString", XSD::QName.new(nil, "value")], [0, 1]],
      ["version", ["SOAP::SOAPString", XSD::QName.new(nil, "version")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ApiComputerItemList,
    :schema_type => XSD::QName.new(NsApiIlientCom, "apiComputerItemList"),
    :schema_basetype => XSD::QName.new(NsApiIlientCom, "apiSysaidObject"),
    :schema_element => [
      ["accountId", ["SOAP::SOAPString", XSD::QName.new(nil, "accountId")], [0, 1]],
      ["computerId", ["SOAP::SOAPString", XSD::QName.new(nil, "computerId")], [0, 1]],
      ["computerItems", ["[]", XSD::QName.new(nil, "computerItems")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => Login,
    :schema_type => XSD::QName.new(NsApiIlientCom, "login"),
    :schema_element => [
      ["accountId", ["SOAP::SOAPString", XSD::QName.new(nil, "accountId")], [0, 1]],
      ["userName", ["SOAP::SOAPString", XSD::QName.new(nil, "userName")], [0, 1]],
      ["password", ["SOAP::SOAPString", XSD::QName.new(nil, "password")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => LoginResponse,
    :schema_type => XSD::QName.new(NsApiIlientCom, "loginResponse"),
    :schema_element => [
      ["v_return", ["SOAP::SOAPLong", XSD::QName.new(nil, "return")]]
    ]
  )

  EncodedRegistry.register(
    :class => Delete,
    :schema_type => XSD::QName.new(NsApiIlientCom, "delete"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPLong", XSD::QName.new(nil, "sessionId")]],
      ["apiSysObj", ["ApiSysaidObject", XSD::QName.new(nil, "apiSysObj")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => DeleteResponse,
    :schema_type => XSD::QName.new(NsApiIlientCom, "deleteResponse"),
    :schema_element => []
  )

  EncodedRegistry.register(
    :class => ExecuteSelectQuery,
    :schema_type => XSD::QName.new(NsApiIlientCom, "executeSelectQuery"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPLong", XSD::QName.new(nil, "sessionId")]],
      ["apiSysObj", ["ApiSysaidObject", XSD::QName.new(nil, "apiSysObj")], [0, 1]],
      ["condition", ["SOAP::SOAPString", XSD::QName.new(nil, "condition")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ExecuteSelectQueryResponse,
    :schema_type => XSD::QName.new(NsApiIlientCom, "executeSelectQueryResponse"),
    :schema_element => [
      ["v_return", ["SOAP::SOAPString[]", XSD::QName.new(nil, "return")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LoadByStringId,
    :schema_type => XSD::QName.new(NsApiIlientCom, "loadByStringId"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPLong", XSD::QName.new(nil, "sessionId")]],
      ["apiSysObj", ["ApiSysaidObject", XSD::QName.new(nil, "apiSysObj")], [0, 1]],
      ["id", ["SOAP::SOAPString", XSD::QName.new(nil, "id")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => LoadByStringIdResponse,
    :schema_type => XSD::QName.new(NsApiIlientCom, "loadByStringIdResponse"),
    :schema_element => [
      ["v_return", ["ApiSysaidObject", XSD::QName.new(nil, "return")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Logout,
    :schema_type => XSD::QName.new(NsApiIlientCom, "logout"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPLong", XSD::QName.new(nil, "sessionId")]]
    ]
  )

  EncodedRegistry.register(
    :class => LogoutResponse,
    :schema_type => XSD::QName.new(NsApiIlientCom, "logoutResponse"),
    :schema_element => []
  )

  EncodedRegistry.register(
    :class => ExecuteApiSysAidObjectAction,
    :schema_type => XSD::QName.new(NsApiIlientCom, "executeApiSysAidObjectAction"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPLong", XSD::QName.new(nil, "sessionId")]],
      ["apiSysObj", ["ApiSysaidObject", XSD::QName.new(nil, "apiSysObj")], [0, 1]],
      ["actionName", ["SOAP::SOAPString", XSD::QName.new(nil, "actionName")], [0, 1]],
      ["actionParams", ["[]", XSD::QName.new(nil, "actionParams")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => ExecuteApiSysAidObjectActionResponse,
    :schema_type => XSD::QName.new(NsApiIlientCom, "executeApiSysAidObjectActionResponse"),
    :schema_element => [
      ["v_return", ["SOAP::SOAPString", XSD::QName.new(nil, "return")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => LoadById,
    :schema_type => XSD::QName.new(NsApiIlientCom, "loadById"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPLong", XSD::QName.new(nil, "sessionId")]],
      ["apiSysObj", ["ApiSysaidObject", XSD::QName.new(nil, "apiSysObj")], [0, 1]],
      ["id", [nil, XSD::QName.new(nil, "id")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => LoadByIdResponse,
    :schema_type => XSD::QName.new(NsApiIlientCom, "loadByIdResponse"),
    :schema_element => [
      ["v_return", ["ApiSysaidObject", XSD::QName.new(nil, "return")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Save,
    :schema_type => XSD::QName.new(NsApiIlientCom, "save"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPLong", XSD::QName.new(nil, "sessionId")]],
      ["apiSysObj", ["ApiSysaidObject", XSD::QName.new(nil, "apiSysObj")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => SaveResponse,
    :schema_type => XSD::QName.new(NsApiIlientCom, "saveResponse"),
    :schema_element => [
      ["v_return", [nil, XSD::QName.new(nil, "return")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => GetApiSysAidObjectActions,
    :schema_type => XSD::QName.new(NsApiIlientCom, "getApiSysAidObjectActions"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPLong", XSD::QName.new(nil, "sessionId")]],
      ["apiSysObj", ["ApiSysaidObject", XSD::QName.new(nil, "apiSysObj")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => GetApiSysAidObjectActionsResponse,
    :schema_type => XSD::QName.new(NsApiIlientCom, "getApiSysAidObjectActionsResponse"),
    :schema_element => [
      ["v_return", ["SOAP::SOAPString", XSD::QName.new(nil, "return")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ApiCatalogItem,
    :schema_type => XSD::QName.new(NsApiIlientCom, "apiCatalogItem"),
    :schema_basetype => XSD::QName.new(NsApiIlientCom, "apiSysaidObject"),
    :schema_element => [
      ["cIId", ["SOAP::SOAPInt", XSD::QName.new(nil, "CIId")]],
      ["catalogNumber", ["SOAP::SOAPString", XSD::QName.new(nil, "catalogNumber")], [0, 1]],
      ["custDate1", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "custDate1")], [0, 1]],
      ["custDate2", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "custDate2")], [0, 1]],
      ["manufacturer", ["SOAP::SOAPString", XSD::QName.new(nil, "manufacturer")], [0, 1]],
      ["model", ["SOAP::SOAPString", XSD::QName.new(nil, "model")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")], [0, 1]],
      ["notes", ["SOAP::SOAPString", XSD::QName.new(nil, "notes")], [0, 1]],
      ["supplierID", ["SOAP::SOAPInt", XSD::QName.new(nil, "supplierID")]],
      ["version", ["SOAP::SOAPInt", XSD::QName.new(nil, "version")]]
    ]
  )

  LiteralRegistry.register(
    :class => ApiCI,
    :schema_type => XSD::QName.new(NsApiIlientCom, "apiCI"),
    :schema_basetype => XSD::QName.new(NsApiIlientCom, "apiSysaidObject"),
    :schema_element => [
      ["acceptDate", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "acceptDate")], [0, 1]],
      ["category", ["SOAP::SOAPString", XSD::QName.new(nil, "category")], [0, 1]],
      ["ciName", ["SOAP::SOAPString", XSD::QName.new(nil, "ciName")], [0, 1]],
      ["ciSubType", ["SOAP::SOAPInt", XSD::QName.new(nil, "ciSubType")]],
      ["ciType", ["SOAP::SOAPInt", XSD::QName.new(nil, "ciType")]],
      ["company", ["SOAP::SOAPInt", XSD::QName.new(nil, "company")]],
      ["custDateField1", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "custDateField1")], [0, 1]],
      ["custDateField10", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "custDateField10")], [0, 1]],
      ["custDateField11", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "custDateField11")], [0, 1]],
      ["custDateField12", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "custDateField12")], [0, 1]],
      ["custDateField13", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "custDateField13")], [0, 1]],
      ["custDateField14", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "custDateField14")], [0, 1]],
      ["custDateField15", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "custDateField15")], [0, 1]],
      ["custDateField16", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "custDateField16")], [0, 1]],
      ["custDateField17", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "custDateField17")], [0, 1]],
      ["custDateField18", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "custDateField18")], [0, 1]],
      ["custDateField19", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "custDateField19")], [0, 1]],
      ["custDateField2", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "custDateField2")], [0, 1]],
      ["custDateField20", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "custDateField20")], [0, 1]],
      ["custDateField21", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "custDateField21")], [0, 1]],
      ["custDateField22", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "custDateField22")], [0, 1]],
      ["custDateField23", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "custDateField23")], [0, 1]],
      ["custDateField24", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "custDateField24")], [0, 1]],
      ["custDateField25", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "custDateField25")], [0, 1]],
      ["custDateField26", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "custDateField26")], [0, 1]],
      ["custDateField27", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "custDateField27")], [0, 1]],
      ["custDateField28", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "custDateField28")], [0, 1]],
      ["custDateField29", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "custDateField29")], [0, 1]],
      ["custDateField3", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "custDateField3")], [0, 1]],
      ["custDateField30", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "custDateField30")], [0, 1]],
      ["custDateField31", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "custDateField31")], [0, 1]],
      ["custDateField32", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "custDateField32")], [0, 1]],
      ["custDateField33", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "custDateField33")], [0, 1]],
      ["custDateField34", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "custDateField34")], [0, 1]],
      ["custDateField35", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "custDateField35")], [0, 1]],
      ["custDateField36", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "custDateField36")], [0, 1]],
      ["custDateField37", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "custDateField37")], [0, 1]],
      ["custDateField38", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "custDateField38")], [0, 1]],
      ["custDateField39", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "custDateField39")], [0, 1]],
      ["custDateField4", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "custDateField4")], [0, 1]],
      ["custDateField40", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "custDateField40")], [0, 1]],
      ["custDateField41", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "custDateField41")], [0, 1]],
      ["custDateField42", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "custDateField42")], [0, 1]],
      ["custDateField43", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "custDateField43")], [0, 1]],
      ["custDateField44", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "custDateField44")], [0, 1]],
      ["custDateField45", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "custDateField45")], [0, 1]],
      ["custDateField46", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "custDateField46")], [0, 1]],
      ["custDateField47", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "custDateField47")], [0, 1]],
      ["custDateField48", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "custDateField48")], [0, 1]],
      ["custDateField49", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "custDateField49")], [0, 1]],
      ["custDateField5", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "custDateField5")], [0, 1]],
      ["custDateField50", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "custDateField50")], [0, 1]],
      ["custDateField6", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "custDateField6")], [0, 1]],
      ["custDateField7", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "custDateField7")], [0, 1]],
      ["custDateField8", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "custDateField8")], [0, 1]],
      ["custDateField9", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "custDateField9")], [0, 1]],
      ["custIntField1", ["SOAP::SOAPInt", XSD::QName.new(nil, "custIntField1")]],
      ["custIntField10", ["SOAP::SOAPInt", XSD::QName.new(nil, "custIntField10")]],
      ["custIntField11", ["SOAP::SOAPInt", XSD::QName.new(nil, "custIntField11")]],
      ["custIntField12", ["SOAP::SOAPInt", XSD::QName.new(nil, "custIntField12")]],
      ["custIntField13", ["SOAP::SOAPInt", XSD::QName.new(nil, "custIntField13")]],
      ["custIntField14", ["SOAP::SOAPInt", XSD::QName.new(nil, "custIntField14")]],
      ["custIntField15", ["SOAP::SOAPInt", XSD::QName.new(nil, "custIntField15")]],
      ["custIntField16", ["SOAP::SOAPInt", XSD::QName.new(nil, "custIntField16")]],
      ["custIntField17", ["SOAP::SOAPInt", XSD::QName.new(nil, "custIntField17")]],
      ["custIntField18", ["SOAP::SOAPInt", XSD::QName.new(nil, "custIntField18")]],
      ["custIntField19", ["SOAP::SOAPInt", XSD::QName.new(nil, "custIntField19")]],
      ["custIntField2", ["SOAP::SOAPInt", XSD::QName.new(nil, "custIntField2")]],
      ["custIntField20", ["SOAP::SOAPInt", XSD::QName.new(nil, "custIntField20")]],
      ["custIntField21", ["SOAP::SOAPInt", XSD::QName.new(nil, "custIntField21")]],
      ["custIntField22", ["SOAP::SOAPInt", XSD::QName.new(nil, "custIntField22")]],
      ["custIntField23", ["SOAP::SOAPInt", XSD::QName.new(nil, "custIntField23")]],
      ["custIntField24", ["SOAP::SOAPInt", XSD::QName.new(nil, "custIntField24")]],
      ["custIntField25", ["SOAP::SOAPInt", XSD::QName.new(nil, "custIntField25")]],
      ["custIntField26", ["SOAP::SOAPInt", XSD::QName.new(nil, "custIntField26")]],
      ["custIntField27", ["SOAP::SOAPInt", XSD::QName.new(nil, "custIntField27")]],
      ["custIntField28", ["SOAP::SOAPInt", XSD::QName.new(nil, "custIntField28")]],
      ["custIntField29", ["SOAP::SOAPInt", XSD::QName.new(nil, "custIntField29")]],
      ["custIntField3", ["SOAP::SOAPInt", XSD::QName.new(nil, "custIntField3")]],
      ["custIntField30", ["SOAP::SOAPInt", XSD::QName.new(nil, "custIntField30")]],
      ["custIntField31", ["SOAP::SOAPInt", XSD::QName.new(nil, "custIntField31")]],
      ["custIntField32", ["SOAP::SOAPInt", XSD::QName.new(nil, "custIntField32")]],
      ["custIntField33", ["SOAP::SOAPInt", XSD::QName.new(nil, "custIntField33")]],
      ["custIntField34", ["SOAP::SOAPInt", XSD::QName.new(nil, "custIntField34")]],
      ["custIntField35", ["SOAP::SOAPInt", XSD::QName.new(nil, "custIntField35")]],
      ["custIntField36", ["SOAP::SOAPInt", XSD::QName.new(nil, "custIntField36")]],
      ["custIntField37", ["SOAP::SOAPInt", XSD::QName.new(nil, "custIntField37")]],
      ["custIntField38", ["SOAP::SOAPInt", XSD::QName.new(nil, "custIntField38")]],
      ["custIntField39", ["SOAP::SOAPInt", XSD::QName.new(nil, "custIntField39")]],
      ["custIntField4", ["SOAP::SOAPInt", XSD::QName.new(nil, "custIntField4")]],
      ["custIntField40", ["SOAP::SOAPInt", XSD::QName.new(nil, "custIntField40")]],
      ["custIntField41", ["SOAP::SOAPInt", XSD::QName.new(nil, "custIntField41")]],
      ["custIntField42", ["SOAP::SOAPInt", XSD::QName.new(nil, "custIntField42")]],
      ["custIntField43", ["SOAP::SOAPInt", XSD::QName.new(nil, "custIntField43")]],
      ["custIntField44", ["SOAP::SOAPInt", XSD::QName.new(nil, "custIntField44")]],
      ["custIntField45", ["SOAP::SOAPInt", XSD::QName.new(nil, "custIntField45")]],
      ["custIntField46", ["SOAP::SOAPInt", XSD::QName.new(nil, "custIntField46")]],
      ["custIntField47", ["SOAP::SOAPInt", XSD::QName.new(nil, "custIntField47")]],
      ["custIntField48", ["SOAP::SOAPInt", XSD::QName.new(nil, "custIntField48")]],
      ["custIntField49", ["SOAP::SOAPInt", XSD::QName.new(nil, "custIntField49")]],
      ["custIntField5", ["SOAP::SOAPInt", XSD::QName.new(nil, "custIntField5")]],
      ["custIntField50", ["SOAP::SOAPInt", XSD::QName.new(nil, "custIntField50")]],
      ["custIntField6", ["SOAP::SOAPInt", XSD::QName.new(nil, "custIntField6")]],
      ["custIntField7", ["SOAP::SOAPInt", XSD::QName.new(nil, "custIntField7")]],
      ["custIntField8", ["SOAP::SOAPInt", XSD::QName.new(nil, "custIntField8")]],
      ["custIntField9", ["SOAP::SOAPInt", XSD::QName.new(nil, "custIntField9")]],
      ["custListField1", ["SOAP::SOAPInt", XSD::QName.new(nil, "custListField1")]],
      ["custListField10", ["SOAP::SOAPInt", XSD::QName.new(nil, "custListField10")]],
      ["custListField11", ["SOAP::SOAPInt", XSD::QName.new(nil, "custListField11")]],
      ["custListField12", ["SOAP::SOAPInt", XSD::QName.new(nil, "custListField12")]],
      ["custListField13", ["SOAP::SOAPInt", XSD::QName.new(nil, "custListField13")]],
      ["custListField14", ["SOAP::SOAPInt", XSD::QName.new(nil, "custListField14")]],
      ["custListField15", ["SOAP::SOAPInt", XSD::QName.new(nil, "custListField15")]],
      ["custListField16", ["SOAP::SOAPInt", XSD::QName.new(nil, "custListField16")]],
      ["custListField17", ["SOAP::SOAPInt", XSD::QName.new(nil, "custListField17")]],
      ["custListField18", ["SOAP::SOAPInt", XSD::QName.new(nil, "custListField18")]],
      ["custListField19", ["SOAP::SOAPInt", XSD::QName.new(nil, "custListField19")]],
      ["custListField2", ["SOAP::SOAPInt", XSD::QName.new(nil, "custListField2")]],
      ["custListField20", ["SOAP::SOAPInt", XSD::QName.new(nil, "custListField20")]],
      ["custListField21", ["SOAP::SOAPInt", XSD::QName.new(nil, "custListField21")]],
      ["custListField22", ["SOAP::SOAPInt", XSD::QName.new(nil, "custListField22")]],
      ["custListField23", ["SOAP::SOAPInt", XSD::QName.new(nil, "custListField23")]],
      ["custListField24", ["SOAP::SOAPInt", XSD::QName.new(nil, "custListField24")]],
      ["custListField25", ["SOAP::SOAPInt", XSD::QName.new(nil, "custListField25")]],
      ["custListField26", ["SOAP::SOAPInt", XSD::QName.new(nil, "custListField26")]],
      ["custListField27", ["SOAP::SOAPInt", XSD::QName.new(nil, "custListField27")]],
      ["custListField28", ["SOAP::SOAPInt", XSD::QName.new(nil, "custListField28")]],
      ["custListField29", ["SOAP::SOAPInt", XSD::QName.new(nil, "custListField29")]],
      ["custListField3", ["SOAP::SOAPInt", XSD::QName.new(nil, "custListField3")]],
      ["custListField30", ["SOAP::SOAPInt", XSD::QName.new(nil, "custListField30")]],
      ["custListField31", ["SOAP::SOAPInt", XSD::QName.new(nil, "custListField31")]],
      ["custListField32", ["SOAP::SOAPInt", XSD::QName.new(nil, "custListField32")]],
      ["custListField33", ["SOAP::SOAPInt", XSD::QName.new(nil, "custListField33")]],
      ["custListField34", ["SOAP::SOAPInt", XSD::QName.new(nil, "custListField34")]],
      ["custListField35", ["SOAP::SOAPInt", XSD::QName.new(nil, "custListField35")]],
      ["custListField36", ["SOAP::SOAPInt", XSD::QName.new(nil, "custListField36")]],
      ["custListField37", ["SOAP::SOAPInt", XSD::QName.new(nil, "custListField37")]],
      ["custListField38", ["SOAP::SOAPInt", XSD::QName.new(nil, "custListField38")]],
      ["custListField39", ["SOAP::SOAPInt", XSD::QName.new(nil, "custListField39")]],
      ["custListField4", ["SOAP::SOAPInt", XSD::QName.new(nil, "custListField4")]],
      ["custListField40", ["SOAP::SOAPInt", XSD::QName.new(nil, "custListField40")]],
      ["custListField41", ["SOAP::SOAPInt", XSD::QName.new(nil, "custListField41")]],
      ["custListField42", ["SOAP::SOAPInt", XSD::QName.new(nil, "custListField42")]],
      ["custListField43", ["SOAP::SOAPInt", XSD::QName.new(nil, "custListField43")]],
      ["custListField44", ["SOAP::SOAPInt", XSD::QName.new(nil, "custListField44")]],
      ["custListField45", ["SOAP::SOAPInt", XSD::QName.new(nil, "custListField45")]],
      ["custListField46", ["SOAP::SOAPInt", XSD::QName.new(nil, "custListField46")]],
      ["custListField47", ["SOAP::SOAPInt", XSD::QName.new(nil, "custListField47")]],
      ["custListField48", ["SOAP::SOAPInt", XSD::QName.new(nil, "custListField48")]],
      ["custListField49", ["SOAP::SOAPInt", XSD::QName.new(nil, "custListField49")]],
      ["custListField5", ["SOAP::SOAPInt", XSD::QName.new(nil, "custListField5")]],
      ["custListField50", ["SOAP::SOAPInt", XSD::QName.new(nil, "custListField50")]],
      ["custListField6", ["SOAP::SOAPInt", XSD::QName.new(nil, "custListField6")]],
      ["custListField7", ["SOAP::SOAPInt", XSD::QName.new(nil, "custListField7")]],
      ["custListField8", ["SOAP::SOAPInt", XSD::QName.new(nil, "custListField8")]],
      ["custListField9", ["SOAP::SOAPInt", XSD::QName.new(nil, "custListField9")]],
      ["custLongTextField1", ["SOAP::SOAPString", XSD::QName.new(nil, "custLongTextField1")], [0, 1]],
      ["custLongTextField10", ["SOAP::SOAPString", XSD::QName.new(nil, "custLongTextField10")], [0, 1]],
      ["custLongTextField11", ["SOAP::SOAPString", XSD::QName.new(nil, "custLongTextField11")], [0, 1]],
      ["custLongTextField12", ["SOAP::SOAPString", XSD::QName.new(nil, "custLongTextField12")], [0, 1]],
      ["custLongTextField13", ["SOAP::SOAPString", XSD::QName.new(nil, "custLongTextField13")], [0, 1]],
      ["custLongTextField14", ["SOAP::SOAPString", XSD::QName.new(nil, "custLongTextField14")], [0, 1]],
      ["custLongTextField15", ["SOAP::SOAPString", XSD::QName.new(nil, "custLongTextField15")], [0, 1]],
      ["custLongTextField16", ["SOAP::SOAPString", XSD::QName.new(nil, "custLongTextField16")], [0, 1]],
      ["custLongTextField17", ["SOAP::SOAPString", XSD::QName.new(nil, "custLongTextField17")], [0, 1]],
      ["custLongTextField18", ["SOAP::SOAPString", XSD::QName.new(nil, "custLongTextField18")], [0, 1]],
      ["custLongTextField19", ["SOAP::SOAPString", XSD::QName.new(nil, "custLongTextField19")], [0, 1]],
      ["custLongTextField2", ["SOAP::SOAPString", XSD::QName.new(nil, "custLongTextField2")], [0, 1]],
      ["custLongTextField20", ["SOAP::SOAPString", XSD::QName.new(nil, "custLongTextField20")], [0, 1]],
      ["custLongTextField21", ["SOAP::SOAPString", XSD::QName.new(nil, "custLongTextField21")], [0, 1]],
      ["custLongTextField22", ["SOAP::SOAPString", XSD::QName.new(nil, "custLongTextField22")], [0, 1]],
      ["custLongTextField23", ["SOAP::SOAPString", XSD::QName.new(nil, "custLongTextField23")], [0, 1]],
      ["custLongTextField24", ["SOAP::SOAPString", XSD::QName.new(nil, "custLongTextField24")], [0, 1]],
      ["custLongTextField25", ["SOAP::SOAPString", XSD::QName.new(nil, "custLongTextField25")], [0, 1]],
      ["custLongTextField26", ["SOAP::SOAPString", XSD::QName.new(nil, "custLongTextField26")], [0, 1]],
      ["custLongTextField27", ["SOAP::SOAPString", XSD::QName.new(nil, "custLongTextField27")], [0, 1]],
      ["custLongTextField28", ["SOAP::SOAPString", XSD::QName.new(nil, "custLongTextField28")], [0, 1]],
      ["custLongTextField29", ["SOAP::SOAPString", XSD::QName.new(nil, "custLongTextField29")], [0, 1]],
      ["custLongTextField3", ["SOAP::SOAPString", XSD::QName.new(nil, "custLongTextField3")], [0, 1]],
      ["custLongTextField30", ["SOAP::SOAPString", XSD::QName.new(nil, "custLongTextField30")], [0, 1]],
      ["custLongTextField31", ["SOAP::SOAPString", XSD::QName.new(nil, "custLongTextField31")], [0, 1]],
      ["custLongTextField32", ["SOAP::SOAPString", XSD::QName.new(nil, "custLongTextField32")], [0, 1]],
      ["custLongTextField33", ["SOAP::SOAPString", XSD::QName.new(nil, "custLongTextField33")], [0, 1]],
      ["custLongTextField34", ["SOAP::SOAPString", XSD::QName.new(nil, "custLongTextField34")], [0, 1]],
      ["custLongTextField35", ["SOAP::SOAPString", XSD::QName.new(nil, "custLongTextField35")], [0, 1]],
      ["custLongTextField36", ["SOAP::SOAPString", XSD::QName.new(nil, "custLongTextField36")], [0, 1]],
      ["custLongTextField37", ["SOAP::SOAPString", XSD::QName.new(nil, "custLongTextField37")], [0, 1]],
      ["custLongTextField38", ["SOAP::SOAPString", XSD::QName.new(nil, "custLongTextField38")], [0, 1]],
      ["custLongTextField39", ["SOAP::SOAPString", XSD::QName.new(nil, "custLongTextField39")], [0, 1]],
      ["custLongTextField4", ["SOAP::SOAPString", XSD::QName.new(nil, "custLongTextField4")], [0, 1]],
      ["custLongTextField40", ["SOAP::SOAPString", XSD::QName.new(nil, "custLongTextField40")], [0, 1]],
      ["custLongTextField41", ["SOAP::SOAPString", XSD::QName.new(nil, "custLongTextField41")], [0, 1]],
      ["custLongTextField42", ["SOAP::SOAPString", XSD::QName.new(nil, "custLongTextField42")], [0, 1]],
      ["custLongTextField43", ["SOAP::SOAPString", XSD::QName.new(nil, "custLongTextField43")], [0, 1]],
      ["custLongTextField44", ["SOAP::SOAPString", XSD::QName.new(nil, "custLongTextField44")], [0, 1]],
      ["custLongTextField45", ["SOAP::SOAPString", XSD::QName.new(nil, "custLongTextField45")], [0, 1]],
      ["custLongTextField46", ["SOAP::SOAPString", XSD::QName.new(nil, "custLongTextField46")], [0, 1]],
      ["custLongTextField47", ["SOAP::SOAPString", XSD::QName.new(nil, "custLongTextField47")], [0, 1]],
      ["custLongTextField48", ["SOAP::SOAPString", XSD::QName.new(nil, "custLongTextField48")], [0, 1]],
      ["custLongTextField49", ["SOAP::SOAPString", XSD::QName.new(nil, "custLongTextField49")], [0, 1]],
      ["custLongTextField5", ["SOAP::SOAPString", XSD::QName.new(nil, "custLongTextField5")], [0, 1]],
      ["custLongTextField50", ["SOAP::SOAPString", XSD::QName.new(nil, "custLongTextField50")], [0, 1]],
      ["custLongTextField6", ["SOAP::SOAPString", XSD::QName.new(nil, "custLongTextField6")], [0, 1]],
      ["custLongTextField7", ["SOAP::SOAPString", XSD::QName.new(nil, "custLongTextField7")], [0, 1]],
      ["custLongTextField8", ["SOAP::SOAPString", XSD::QName.new(nil, "custLongTextField8")], [0, 1]],
      ["custLongTextField9", ["SOAP::SOAPString", XSD::QName.new(nil, "custLongTextField9")], [0, 1]],
      ["custTextField1", ["SOAP::SOAPString", XSD::QName.new(nil, "custTextField1")], [0, 1]],
      ["custTextField10", ["SOAP::SOAPString", XSD::QName.new(nil, "custTextField10")], [0, 1]],
      ["custTextField11", ["SOAP::SOAPString", XSD::QName.new(nil, "custTextField11")], [0, 1]],
      ["custTextField12", ["SOAP::SOAPString", XSD::QName.new(nil, "custTextField12")], [0, 1]],
      ["custTextField13", ["SOAP::SOAPString", XSD::QName.new(nil, "custTextField13")], [0, 1]],
      ["custTextField14", ["SOAP::SOAPString", XSD::QName.new(nil, "custTextField14")], [0, 1]],
      ["custTextField15", ["SOAP::SOAPString", XSD::QName.new(nil, "custTextField15")], [0, 1]],
      ["custTextField16", ["SOAP::SOAPString", XSD::QName.new(nil, "custTextField16")], [0, 1]],
      ["custTextField17", ["SOAP::SOAPString", XSD::QName.new(nil, "custTextField17")], [0, 1]],
      ["custTextField18", ["SOAP::SOAPString", XSD::QName.new(nil, "custTextField18")], [0, 1]],
      ["custTextField19", ["SOAP::SOAPString", XSD::QName.new(nil, "custTextField19")], [0, 1]],
      ["custTextField2", ["SOAP::SOAPString", XSD::QName.new(nil, "custTextField2")], [0, 1]],
      ["custTextField20", ["SOAP::SOAPString", XSD::QName.new(nil, "custTextField20")], [0, 1]],
      ["custTextField21", ["SOAP::SOAPString", XSD::QName.new(nil, "custTextField21")], [0, 1]],
      ["custTextField22", ["SOAP::SOAPString", XSD::QName.new(nil, "custTextField22")], [0, 1]],
      ["custTextField23", ["SOAP::SOAPString", XSD::QName.new(nil, "custTextField23")], [0, 1]],
      ["custTextField24", ["SOAP::SOAPString", XSD::QName.new(nil, "custTextField24")], [0, 1]],
      ["custTextField25", ["SOAP::SOAPString", XSD::QName.new(nil, "custTextField25")], [0, 1]],
      ["custTextField26", ["SOAP::SOAPString", XSD::QName.new(nil, "custTextField26")], [0, 1]],
      ["custTextField27", ["SOAP::SOAPString", XSD::QName.new(nil, "custTextField27")], [0, 1]],
      ["custTextField28", ["SOAP::SOAPString", XSD::QName.new(nil, "custTextField28")], [0, 1]],
      ["custTextField29", ["SOAP::SOAPString", XSD::QName.new(nil, "custTextField29")], [0, 1]],
      ["custTextField3", ["SOAP::SOAPString", XSD::QName.new(nil, "custTextField3")], [0, 1]],
      ["custTextField30", ["SOAP::SOAPString", XSD::QName.new(nil, "custTextField30")], [0, 1]],
      ["custTextField31", ["SOAP::SOAPString", XSD::QName.new(nil, "custTextField31")], [0, 1]],
      ["custTextField32", ["SOAP::SOAPString", XSD::QName.new(nil, "custTextField32")], [0, 1]],
      ["custTextField33", ["SOAP::SOAPString", XSD::QName.new(nil, "custTextField33")], [0, 1]],
      ["custTextField34", ["SOAP::SOAPString", XSD::QName.new(nil, "custTextField34")], [0, 1]],
      ["custTextField35", ["SOAP::SOAPString", XSD::QName.new(nil, "custTextField35")], [0, 1]],
      ["custTextField36", ["SOAP::SOAPString", XSD::QName.new(nil, "custTextField36")], [0, 1]],
      ["custTextField37", ["SOAP::SOAPString", XSD::QName.new(nil, "custTextField37")], [0, 1]],
      ["custTextField38", ["SOAP::SOAPString", XSD::QName.new(nil, "custTextField38")], [0, 1]],
      ["custTextField39", ["SOAP::SOAPString", XSD::QName.new(nil, "custTextField39")], [0, 1]],
      ["custTextField4", ["SOAP::SOAPString", XSD::QName.new(nil, "custTextField4")], [0, 1]],
      ["custTextField40", ["SOAP::SOAPString", XSD::QName.new(nil, "custTextField40")], [0, 1]],
      ["custTextField41", ["SOAP::SOAPString", XSD::QName.new(nil, "custTextField41")], [0, 1]],
      ["custTextField42", ["SOAP::SOAPString", XSD::QName.new(nil, "custTextField42")], [0, 1]],
      ["custTextField43", ["SOAP::SOAPString", XSD::QName.new(nil, "custTextField43")], [0, 1]],
      ["custTextField44", ["SOAP::SOAPString", XSD::QName.new(nil, "custTextField44")], [0, 1]],
      ["custTextField45", ["SOAP::SOAPString", XSD::QName.new(nil, "custTextField45")], [0, 1]],
      ["custTextField46", ["SOAP::SOAPString", XSD::QName.new(nil, "custTextField46")], [0, 1]],
      ["custTextField47", ["SOAP::SOAPString", XSD::QName.new(nil, "custTextField47")], [0, 1]],
      ["custTextField48", ["SOAP::SOAPString", XSD::QName.new(nil, "custTextField48")], [0, 1]],
      ["custTextField49", ["SOAP::SOAPString", XSD::QName.new(nil, "custTextField49")], [0, 1]],
      ["custTextField5", ["SOAP::SOAPString", XSD::QName.new(nil, "custTextField5")], [0, 1]],
      ["custTextField50", ["SOAP::SOAPString", XSD::QName.new(nil, "custTextField50")], [0, 1]],
      ["custTextField6", ["SOAP::SOAPString", XSD::QName.new(nil, "custTextField6")], [0, 1]],
      ["custTextField7", ["SOAP::SOAPString", XSD::QName.new(nil, "custTextField7")], [0, 1]],
      ["custTextField8", ["SOAP::SOAPString", XSD::QName.new(nil, "custTextField8")], [0, 1]],
      ["custTextField9", ["SOAP::SOAPString", XSD::QName.new(nil, "custTextField9")], [0, 1]],
      ["customDateFields", ["ApiCI::CustomDateFields", XSD::QName.new(nil, "customDateFields")]],
      ["customFields", ["ApiCI::CustomFields", XSD::QName.new(nil, "customFields")]],
      ["historyVersion", ["SOAP::SOAPInt", XSD::QName.new(nil, "historyVersion")]],
      ["id", ["SOAP::SOAPInt", XSD::QName.new(nil, "id")]],
      ["location", ["SOAP::SOAPInt", XSD::QName.new(nil, "location")]],
      ["notes", ["SOAP::SOAPString", XSD::QName.new(nil, "notes")], [0, 1]],
      ["owner", ["SOAP::SOAPString", XSD::QName.new(nil, "owner")], [0, 1]],
      ["ownerGroup", ["SOAP::SOAPString", XSD::QName.new(nil, "ownerGroup")], [0, 1]],
      ["priority", ["SOAP::SOAPInt", XSD::QName.new(nil, "priority")]],
      ["serialNumber", ["SOAP::SOAPString", XSD::QName.new(nil, "serialNumber")], [0, 1]],
      ["status", ["SOAP::SOAPInt", XSD::QName.new(nil, "status")]],
      ["subCategory", ["SOAP::SOAPString", XSD::QName.new(nil, "subCategory")], [0, 1]],
      ["supplier", ["SOAP::SOAPInt", XSD::QName.new(nil, "supplier")]],
      ["supplyDate", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "supplyDate")], [0, 1]],
      ["thirdLevelCategory", ["SOAP::SOAPString", XSD::QName.new(nil, "thirdLevelCategory")], [0, 1]],
      ["users", ["SOAP::SOAPString", XSD::QName.new(nil, "users")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ApiCI::CustomDateFields::Entry,
    :schema_name => XSD::QName.new(nil, "entry"),
    :is_anonymous => true,
    :schema_qualified => false,
    :schema_element => [
      ["key", nil, [0, 1]],
      ["value", nil, [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ApiCI::CustomDateFields,
    :schema_name => XSD::QName.new(nil, "customDateFields"),
    :is_anonymous => true,
    :schema_qualified => false,
    :schema_element => [
      ["entry", "ApiCI::CustomDateFields::Entry[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => ApiCI::CustomFields::Entry,
    :schema_name => XSD::QName.new(nil, "entry"),
    :is_anonymous => true,
    :schema_qualified => false,
    :schema_element => [
      ["key", nil, [0, 1]],
      ["value", nil, [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ApiCI::CustomFields,
    :schema_name => XSD::QName.new(nil, "customFields"),
    :is_anonymous => true,
    :schema_qualified => false,
    :schema_element => [
      ["entry", "ApiCI::CustomFields::Entry[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => ApiServiceRequest,
    :schema_type => XSD::QName.new(NsApiIlientCom, "apiServiceRequest"),
    :schema_basetype => XSD::QName.new(NsApiIlientCom, "apiSysaidObject"),
    :schema_element => [
      ["agreement", ["SOAP::SOAPInt", XSD::QName.new(nil, "agreement")]],
      ["assignCounter", ["SOAP::SOAPInt", XSD::QName.new(nil, "assignCounter")]],
      ["assignedGroup", ["SOAP::SOAPString", XSD::QName.new(nil, "assignedGroup")], [0, 1]],
      ["assignedTo", ["SOAP::SOAPString", XSD::QName.new(nil, "assignedTo")], [0, 1]],
      ["cIId", ["SOAP::SOAPInt", XSD::QName.new(nil, "CIId")]],
      ["category", ["SOAP::SOAPString", XSD::QName.new(nil, "category")], [0, 1]],
      ["cc", ["SOAP::SOAPString", XSD::QName.new(nil, "cc")], [0, 1]],
      ["closeTime", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "closeTime")], [0, 1]],
      ["computerID", ["SOAP::SOAPString", XSD::QName.new(nil, "computerID")], [0, 1]],
      ["currentSupportLevel", ["SOAP::SOAPInt", XSD::QName.new(nil, "currentSupportLevel")]],
      ["custDate1", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "custDate1")], [0, 1]],
      ["custDate2", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "custDate2")], [0, 1]],
      ["custInt1", ["SOAP::SOAPInt", XSD::QName.new(nil, "custInt1")]],
      ["custInt2", ["SOAP::SOAPInt", XSD::QName.new(nil, "custInt2")]],
      ["custList1", ["SOAP::SOAPInt", XSD::QName.new(nil, "custList1")]],
      ["custList2", ["SOAP::SOAPInt", XSD::QName.new(nil, "custList2")]],
      ["custNotes", ["SOAP::SOAPString", XSD::QName.new(nil, "custNotes")], [0, 1]],
      ["custText1", ["SOAP::SOAPString", XSD::QName.new(nil, "custText1")], [0, 1]],
      ["custText2", ["SOAP::SOAPString", XSD::QName.new(nil, "custText2")], [0, 1]],
      ["customDateFields", ["ApiServiceRequest::CustomDateFields", XSD::QName.new(nil, "customDateFields")]],
      ["customFields", ["ApiServiceRequest::CustomFields", XSD::QName.new(nil, "customFields")]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")], [0, 1]],
      ["dueDate", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "dueDate")], [0, 1]],
      ["emailAccount", ["SOAP::SOAPString", XSD::QName.new(nil, "emailAccount")], [0, 1]],
      ["escalation", ["SOAP::SOAPInt", XSD::QName.new(nil, "escalation")]],
      ["followupActualDate", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "followupActualDate")], [0, 1]],
      ["followupPlannedDate", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "followupPlannedDate")], [0, 1]],
      ["followupText", ["SOAP::SOAPString", XSD::QName.new(nil, "followupText")], [0, 1]],
      ["followupUser", ["SOAP::SOAPString", XSD::QName.new(nil, "followupUser")], [0, 1]],
      ["id", ["SOAP::SOAPInt", XSD::QName.new(nil, "id")]],
      ["insertTime", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "insertTime")], [0, 1]],
      ["location", ["SOAP::SOAPInt", XSD::QName.new(nil, "location")]],
      ["maxSupportLevel", ["SOAP::SOAPInt", XSD::QName.new(nil, "maxSupportLevel")]],
      ["notes", ["SOAP::SOAPString", XSD::QName.new(nil, "notes")], [0, 1]],
      ["parentLink", ["SOAP::SOAPInt", XSD::QName.new(nil, "parentLink")]],
      ["priority", ["SOAP::SOAPInt", XSD::QName.new(nil, "priority")]],
      ["projectID", ["SOAP::SOAPInt", XSD::QName.new(nil, "projectID")]],
      ["reopenCounter", ["SOAP::SOAPInt", XSD::QName.new(nil, "reopenCounter")]],
      ["requestUser", ["SOAP::SOAPString", XSD::QName.new(nil, "requestUser")], [0, 1]],
      ["resolution", ["SOAP::SOAPString", XSD::QName.new(nil, "resolution")], [0, 1]],
      ["responsibleManager", ["SOAP::SOAPString", XSD::QName.new(nil, "responsibleManager")], [0, 1]],
      ["solution", ["SOAP::SOAPString", XSD::QName.new(nil, "solution")], [0, 1]],
      ["source", ["SOAP::SOAPInt", XSD::QName.new(nil, "source")]],
      ["srSubType", ["SOAP::SOAPInt", XSD::QName.new(nil, "srSubType")]],
      ["srType", ["SOAP::SOAPInt", XSD::QName.new(nil, "srType")]],
      ["status", ["SOAP::SOAPInt", XSD::QName.new(nil, "status")]],
      ["subCategory", ["SOAP::SOAPString", XSD::QName.new(nil, "subCategory")], [0, 1]],
      ["submitUser", ["SOAP::SOAPString", XSD::QName.new(nil, "submitUser")], [0, 1]],
      ["successRating", ["SOAP::SOAPInt", XSD::QName.new(nil, "successRating")]],
      ["taskID", ["SOAP::SOAPInt", XSD::QName.new(nil, "taskID")]],
      ["thirdLevelCategory", ["SOAP::SOAPString", XSD::QName.new(nil, "thirdLevelCategory")], [0, 1]],
      ["title", ["SOAP::SOAPString", XSD::QName.new(nil, "title")], [0, 1]],
      ["updateTime", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "updateTime")], [0, 1]],
      ["updateUser", ["SOAP::SOAPString", XSD::QName.new(nil, "updateUser")], [0, 1]],
      ["urgency", ["SOAP::SOAPInt", XSD::QName.new(nil, "urgency")]],
      ["userManager", ["SOAP::SOAPString", XSD::QName.new(nil, "userManager")], [0, 1]],
      ["version", ["SOAP::SOAPInt", XSD::QName.new(nil, "version")]]
    ]
  )

  LiteralRegistry.register(
    :class => ApiServiceRequest::CustomDateFields::Entry,
    :schema_name => XSD::QName.new(nil, "entry"),
    :is_anonymous => true,
    :schema_qualified => false,
    :schema_element => [
      ["key", nil, [0, 1]],
      ["value", nil, [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ApiServiceRequest::CustomDateFields,
    :schema_name => XSD::QName.new(nil, "customDateFields"),
    :is_anonymous => true,
    :schema_qualified => false,
    :schema_element => [
      ["entry", "ApiServiceRequest::CustomDateFields::Entry[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => ApiServiceRequest::CustomFields::Entry,
    :schema_name => XSD::QName.new(nil, "entry"),
    :is_anonymous => true,
    :schema_qualified => false,
    :schema_element => [
      ["key", nil, [0, 1]],
      ["value", nil, [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ApiServiceRequest::CustomFields,
    :schema_name => XSD::QName.new("http://www.w3.org/2001/XMLSchema", "customFields"),
    :is_anonymous => true,
    :schema_qualified => false,
    :schema_element => [
      ["entry", "ApiServiceRequest::CustomFields::Entry[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => ApiComputer,
    :schema_type => XSD::QName.new(NsApiIlientCom, "apiComputer"),
    :schema_basetype => XSD::QName.new(NsApiIlientCom, "apiSysaidObject"),
    :schema_element => [
      ["agentVersion", ["SOAP::SOAPString", XSD::QName.new(nil, "agentVersion")], [0, 1]],
      ["biosType", ["SOAP::SOAPString", XSD::QName.new(nil, "biosType")], [0, 1]],
      ["building", ["SOAP::SOAPString", XSD::QName.new(nil, "building")], [0, 1]],
      ["cIId", ["SOAP::SOAPInt", XSD::QName.new(nil, "CIId")]],
      ["catalogNumber", ["SOAP::SOAPString", XSD::QName.new(nil, "catalogNumber")], [0, 1]],
      ["collectionParams", ["SOAP::SOAPString", XSD::QName.new(nil, "collectionParams")], [0, 1]],
      ["collectionType", ["SOAP::SOAPInt", XSD::QName.new(nil, "collectionType")]],
      ["company", ["SOAP::SOAPInt", XSD::QName.new(nil, "company")]],
      ["companySerial", ["SOAP::SOAPString", XSD::QName.new(nil, "companySerial")], [0, 1]],
      ["computerID", ["SOAP::SOAPString", XSD::QName.new(nil, "computerID")], [0, 1]],
      ["computerName", ["SOAP::SOAPString", XSD::QName.new(nil, "computerName")], [0, 1]],
      ["cpuCount", ["SOAP::SOAPInt", XSD::QName.new(nil, "cpuCount")]],
      ["cpuModel", ["SOAP::SOAPString", XSD::QName.new(nil, "cpuModel")], [0, 1]],
      ["cpuSpeed", ["SOAP::SOAPInt", XSD::QName.new(nil, "cpuSpeed")]],
      ["cpuVendor", ["SOAP::SOAPString", XSD::QName.new(nil, "cpuVendor")], [0, 1]],
      ["cubic", ["SOAP::SOAPString", XSD::QName.new(nil, "cubic")], [0, 1]],
      ["custDate1", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "custDate1")], [0, 1]],
      ["custDate2", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "custDate2")], [0, 1]],
      ["custInt1", ["SOAP::SOAPInt", XSD::QName.new(nil, "custInt1")]],
      ["custInt2", ["SOAP::SOAPInt", XSD::QName.new(nil, "custInt2")]],
      ["custList1", ["SOAP::SOAPInt", XSD::QName.new(nil, "custList1")]],
      ["custList2", ["SOAP::SOAPInt", XSD::QName.new(nil, "custList2")]],
      ["custNotes", ["SOAP::SOAPString", XSD::QName.new(nil, "custNotes")], [0, 1]],
      ["custText1", ["SOAP::SOAPString", XSD::QName.new(nil, "custText1")], [0, 1]],
      ["custText2", ["SOAP::SOAPString", XSD::QName.new(nil, "custText2")], [0, 1]],
      ["customDateFields", ["ApiComputer::CustomDateFields", XSD::QName.new(nil, "customDateFields")]],
      ["customFields", ["ApiComputer::CustomFields", XSD::QName.new(nil, "customFields")]],
      ["department", ["SOAP::SOAPInt", XSD::QName.new(nil, "department")]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")], [0, 1]],
      ["disable", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "disable")]],
      ["disksCount", ["SOAP::SOAPInt", XSD::QName.new(nil, "disksCount")]],
      ["disksSize", ["SOAP::SOAPInt", XSD::QName.new(nil, "disksSize")]],
      ["displayAdapter", ["SOAP::SOAPString", XSD::QName.new(nil, "displayAdapter")], [0, 1]],
      ["displayMemory", ["SOAP::SOAPInt", XSD::QName.new(nil, "displayMemory")]],
      ["displayResolution", ["SOAP::SOAPString", XSD::QName.new(nil, "displayResolution")], [0, 1]],
      ["externalSerial", ["SOAP::SOAPString", XSD::QName.new(nil, "externalSerial")], [0, 1]],
      ["floor", ["SOAP::SOAPString", XSD::QName.new(nil, "floor")], [0, 1]],
      ["freeMemBanks", ["SOAP::SOAPInt", XSD::QName.new(nil, "freeMemBanks")]],
      ["groupName", ["SOAP::SOAPString", XSD::QName.new(nil, "groupName")], [0, 1]],
      ["ipAddress", ["SOAP::SOAPString", XSD::QName.new(nil, "ipAddress")], [0, 1]],
      ["lastMaintenanceDate", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "lastMaintenanceDate")], [0, 1]],
      ["locationIdx", ["SOAP::SOAPInt", XSD::QName.new(nil, "locationIdx")]],
      ["macAddress", ["SOAP::SOAPString", XSD::QName.new(nil, "macAddress")], [0, 1]],
      ["maintenanceSupplierID", ["SOAP::SOAPInt", XSD::QName.new(nil, "maintenanceSupplierID")]],
      ["memBanks", ["SOAP::SOAPInt", XSD::QName.new(nil, "memBanks")]],
      ["memoryPhysical", ["SOAP::SOAPLong", XSD::QName.new(nil, "memoryPhysical")]],
      ["monitor", ["SOAP::SOAPString", XSD::QName.new(nil, "monitor")], [0, 1]],
      ["monitorSerial", ["SOAP::SOAPString", XSD::QName.new(nil, "monitorSerial")], [0, 1]],
      ["oSName", ["SOAP::SOAPString", XSD::QName.new(nil, "OSName")], [0, 1]],
      ["oSPlatform", ["SOAP::SOAPString", XSD::QName.new(nil, "OSPlatform")], [0, 1]],
      ["oSServicePack", ["SOAP::SOAPString", XSD::QName.new(nil, "OSServicePack")], [0, 1]],
      ["oSVersion", ["SOAP::SOAPString", XSD::QName.new(nil, "OSVersion")], [0, 1]],
      ["occupiedMemBanks", ["SOAP::SOAPInt", XSD::QName.new(nil, "occupiedMemBanks")]],
      ["packetsIn", ["SOAP::SOAPFloat", XSD::QName.new(nil, "packetsIn")]],
      ["packetsOut", ["SOAP::SOAPFloat", XSD::QName.new(nil, "packetsOut")]],
      ["parentAsset", ["SOAP::SOAPString", XSD::QName.new(nil, "parentAsset")], [0, 1]],
      ["purchaseDate", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "purchaseDate")], [0, 1]],
      ["purchasePrice", ["SOAP::SOAPFloat", XSD::QName.new(nil, "purchasePrice")]],
      ["serial", ["SOAP::SOAPString", XSD::QName.new(nil, "serial")], [0, 1]],
      ["snmpCustText1", ["SOAP::SOAPString", XSD::QName.new(nil, "snmpCustText1")], [0, 1]],
      ["snmpCustText10", ["SOAP::SOAPString", XSD::QName.new(nil, "snmpCustText10")], [0, 1]],
      ["snmpCustText11", ["SOAP::SOAPString", XSD::QName.new(nil, "snmpCustText11")], [0, 1]],
      ["snmpCustText12", ["SOAP::SOAPString", XSD::QName.new(nil, "snmpCustText12")], [0, 1]],
      ["snmpCustText13", ["SOAP::SOAPString", XSD::QName.new(nil, "snmpCustText13")], [0, 1]],
      ["snmpCustText14", ["SOAP::SOAPString", XSD::QName.new(nil, "snmpCustText14")], [0, 1]],
      ["snmpCustText15", ["SOAP::SOAPString", XSD::QName.new(nil, "snmpCustText15")], [0, 1]],
      ["snmpCustText16", ["SOAP::SOAPString", XSD::QName.new(nil, "snmpCustText16")], [0, 1]],
      ["snmpCustText17", ["SOAP::SOAPString", XSD::QName.new(nil, "snmpCustText17")], [0, 1]],
      ["snmpCustText18", ["SOAP::SOAPString", XSD::QName.new(nil, "snmpCustText18")], [0, 1]],
      ["snmpCustText19", ["SOAP::SOAPString", XSD::QName.new(nil, "snmpCustText19")], [0, 1]],
      ["snmpCustText2", ["SOAP::SOAPString", XSD::QName.new(nil, "snmpCustText2")], [0, 1]],
      ["snmpCustText20", ["SOAP::SOAPString", XSD::QName.new(nil, "snmpCustText20")], [0, 1]],
      ["snmpCustText3", ["SOAP::SOAPString", XSD::QName.new(nil, "snmpCustText3")], [0, 1]],
      ["snmpCustText4", ["SOAP::SOAPString", XSD::QName.new(nil, "snmpCustText4")], [0, 1]],
      ["snmpCustText5", ["SOAP::SOAPString", XSD::QName.new(nil, "snmpCustText5")], [0, 1]],
      ["snmpCustText6", ["SOAP::SOAPString", XSD::QName.new(nil, "snmpCustText6")], [0, 1]],
      ["snmpCustText7", ["SOAP::SOAPString", XSD::QName.new(nil, "snmpCustText7")], [0, 1]],
      ["snmpCustText8", ["SOAP::SOAPString", XSD::QName.new(nil, "snmpCustText8")], [0, 1]],
      ["snmpCustText9", ["SOAP::SOAPString", XSD::QName.new(nil, "snmpCustText9")], [0, 1]],
      ["supplierID", ["SOAP::SOAPInt", XSD::QName.new(nil, "supplierID")]],
      ["systemManufacturer", ["SOAP::SOAPString", XSD::QName.new(nil, "systemManufacturer")], [0, 1]],
      ["systemModel", ["SOAP::SOAPString", XSD::QName.new(nil, "systemModel")], [0, 1]],
      ["updateTime", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "updateTime")], [0, 1]],
      ["userName", ["SOAP::SOAPString", XSD::QName.new(nil, "userName")], [0, 1]],
      ["version", ["SOAP::SOAPInt", XSD::QName.new(nil, "version")]],
      ["warrantyExpirationDate", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "warrantyExpirationDate")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ApiComputer::CustomDateFields::Entry,
    :schema_name => XSD::QName.new(nil, "entry"),
    :is_anonymous => true,
    :schema_qualified => false,
    :schema_element => [
      ["key", nil, [0, 1]],
      ["value", nil, [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ApiComputer::CustomDateFields,
    :schema_name => XSD::QName.new(nil, "customDateFields"),
    :is_anonymous => true,
    :schema_qualified => false,
    :schema_element => [
      ["entry", "ApiComputer::CustomDateFields::Entry[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => ApiComputer::CustomFields::Entry,
    :schema_name => XSD::QName.new(nil, "entry"),
    :is_anonymous => true,
    :schema_qualified => false,
    :schema_element => [
      ["key", nil, [0, 1]],
      ["value", nil, [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ApiComputer::CustomFields,
    :schema_name => XSD::QName.new(nil, "customFields"),
    :is_anonymous => true,
    :schema_qualified => false,
    :schema_element => [
      ["entry", "ApiComputer::CustomFields::Entry[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => ApiSoftware,
    :schema_type => XSD::QName.new(NsApiIlientCom, "apiSoftware"),
    :schema_basetype => XSD::QName.new(NsApiIlientCom, "apiSysaidObject"),
    :schema_element => [
      ["cIId", ["SOAP::SOAPInt", XSD::QName.new(nil, "CIId")]],
      ["company", ["SOAP::SOAPInt", XSD::QName.new(nil, "company")]],
      ["custDate1", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "custDate1")], [0, 1]],
      ["custDate2", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "custDate2")], [0, 1]],
      ["custInt1", ["SOAP::SOAPInt", XSD::QName.new(nil, "custInt1")]],
      ["custInt2", ["SOAP::SOAPInt", XSD::QName.new(nil, "custInt2")]],
      ["custList1", ["SOAP::SOAPInt", XSD::QName.new(nil, "custList1")]],
      ["custList2", ["SOAP::SOAPInt", XSD::QName.new(nil, "custList2")]],
      ["custNotes", ["SOAP::SOAPString", XSD::QName.new(nil, "custNotes")], [0, 1]],
      ["custText1", ["SOAP::SOAPString", XSD::QName.new(nil, "custText1")], [0, 1]],
      ["custText2", ["SOAP::SOAPString", XSD::QName.new(nil, "custText2")], [0, 1]],
      ["freeware", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "freeware")]],
      ["historyVersion", ["SOAP::SOAPInt", XSD::QName.new(nil, "historyVersion")]],
      ["inst_names", ["[]", XSD::QName.new(nil, "inst_names")], [0, nil]],
      ["licenses", ["SOAP::SOAPInt", XSD::QName.new(nil, "licenses")]],
      ["notes", ["SOAP::SOAPString", XSD::QName.new(nil, "notes")], [0, 1]],
      ["productName", ["SOAP::SOAPString", XSD::QName.new(nil, "productName")], [0, 1]],
      ["purchaseDate", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "purchaseDate")], [0, 1]],
      ["softwareID", ["SOAP::SOAPInt", XSD::QName.new(nil, "softwareID")]],
      ["supplierID", ["SOAP::SOAPInt", XSD::QName.new(nil, "supplierID")]],
      ["supportExpiration", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "supportExpiration")], [0, 1]],
      ["vendor", ["SOAP::SOAPString", XSD::QName.new(nil, "vendor")], [0, 1]],
      ["version", ["SOAP::SOAPString", XSD::QName.new(nil, "version")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ApiCompany,
    :schema_type => XSD::QName.new(NsApiIlientCom, "apiCompany"),
    :schema_basetype => XSD::QName.new(NsApiIlientCom, "apiSysaidObject"),
    :schema_element => [
      ["address", ["SOAP::SOAPString", XSD::QName.new(nil, "address")], [0, 1]],
      ["address2", ["SOAP::SOAPString", XSD::QName.new(nil, "address2")], [0, 1]],
      ["agreement", ["SOAP::SOAPInt", XSD::QName.new(nil, "agreement")]],
      ["agreementEnd", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "agreementEnd")], [0, 1]],
      ["agreementStart", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "agreementStart")], [0, 1]],
      ["city", ["SOAP::SOAPString", XSD::QName.new(nil, "city")], [0, 1]],
      ["country", ["SOAP::SOAPString", XSD::QName.new(nil, "country")], [0, 1]],
      ["custDate1", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "custDate1")], [0, 1]],
      ["custDate2", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "custDate2")], [0, 1]],
      ["custInt1", ["SOAP::SOAPInt", XSD::QName.new(nil, "custInt1")]],
      ["custInt2", ["SOAP::SOAPInt", XSD::QName.new(nil, "custInt2")]],
      ["custList1", ["SOAP::SOAPInt", XSD::QName.new(nil, "custList1")]],
      ["custList2", ["SOAP::SOAPInt", XSD::QName.new(nil, "custList2")]],
      ["custNotes", ["SOAP::SOAPString", XSD::QName.new(nil, "custNotes")], [0, 1]],
      ["custText1", ["SOAP::SOAPString", XSD::QName.new(nil, "custText1")], [0, 1]],
      ["custText2", ["SOAP::SOAPString", XSD::QName.new(nil, "custText2")], [0, 1]],
      ["expirationTime", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "expirationTime")], [0, 1]],
      ["fax", ["SOAP::SOAPString", XSD::QName.new(nil, "fax")], [0, 1]],
      ["id", ["SOAP::SOAPInt", XSD::QName.new(nil, "id")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")], [0, 1]],
      ["notes", ["SOAP::SOAPString", XSD::QName.new(nil, "notes")], [0, 1]],
      ["phone", ["SOAP::SOAPString", XSD::QName.new(nil, "phone")], [0, 1]],
      ["state", ["SOAP::SOAPString", XSD::QName.new(nil, "state")], [0, 1]],
      ["version", ["SOAP::SOAPInt", XSD::QName.new(nil, "version")]],
      ["zip", ["SOAP::SOAPString", XSD::QName.new(nil, "zip")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ApiSupplier,
    :schema_type => XSD::QName.new(NsApiIlientCom, "apiSupplier"),
    :schema_basetype => XSD::QName.new(NsApiIlientCom, "apiSysaidObject"),
    :schema_element => [
      ["account", ["SOAP::SOAPString", XSD::QName.new(nil, "account")], [0, 1]],
      ["address", ["SOAP::SOAPString", XSD::QName.new(nil, "address")], [0, 1]],
      ["contact", ["SOAP::SOAPString", XSD::QName.new(nil, "contact")], [0, 1]],
      ["custDate1", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "custDate1")], [0, 1]],
      ["custDate2", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "custDate2")], [0, 1]],
      ["custInt1", ["SOAP::SOAPInt", XSD::QName.new(nil, "custInt1")]],
      ["custInt2", ["SOAP::SOAPInt", XSD::QName.new(nil, "custInt2")]],
      ["custList1", ["SOAP::SOAPInt", XSD::QName.new(nil, "custList1")]],
      ["custList2", ["SOAP::SOAPInt", XSD::QName.new(nil, "custList2")]],
      ["custNotes", ["SOAP::SOAPString", XSD::QName.new(nil, "custNotes")], [0, 1]],
      ["custText1", ["SOAP::SOAPString", XSD::QName.new(nil, "custText1")], [0, 1]],
      ["custText2", ["SOAP::SOAPString", XSD::QName.new(nil, "custText2")], [0, 1]],
      ["email", ["SOAP::SOAPString", XSD::QName.new(nil, "email")], [0, 1]],
      ["fax", ["SOAP::SOAPString", XSD::QName.new(nil, "fax")], [0, 1]],
      ["mobile", ["SOAP::SOAPString", XSD::QName.new(nil, "mobile")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")], [0, 1]],
      ["notes", ["SOAP::SOAPString", XSD::QName.new(nil, "notes")], [0, 1]],
      ["phone", ["SOAP::SOAPString", XSD::QName.new(nil, "phone")], [0, 1]],
      ["phone2", ["SOAP::SOAPString", XSD::QName.new(nil, "phone2")], [0, 1]],
      ["supplierID", ["SOAP::SOAPInt", XSD::QName.new(nil, "supplierID")]],
      ["version", ["SOAP::SOAPInt", XSD::QName.new(nil, "version")]]
    ]
  )

  LiteralRegistry.register(
    :class => ApiSysAidUser,
    :schema_type => XSD::QName.new(NsApiIlientCom, "apiSysAidUser"),
    :schema_basetype => XSD::QName.new(NsApiIlientCom, "apiSysaidObject"),
    :schema_element => [
      ["admin", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "admin")]],
      ["agreement", ["SOAP::SOAPInt", XSD::QName.new(nil, "agreement")]],
      ["building", ["SOAP::SOAPString", XSD::QName.new(nil, "building")], [0, 1]],
      ["carNumber", ["SOAP::SOAPString", XSD::QName.new(nil, "carNumber")], [0, 1]],
      ["cellphone", ["SOAP::SOAPString", XSD::QName.new(nil, "cellphone")], [0, 1]],
      ["company", ["SOAP::SOAPInt", XSD::QName.new(nil, "company")]],
      ["cubic", ["SOAP::SOAPString", XSD::QName.new(nil, "cubic")], [0, 1]],
      ["custDate1", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "custDate1")], [0, 1]],
      ["custDate2", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "custDate2")], [0, 1]],
      ["custInt1", ["SOAP::SOAPInt", XSD::QName.new(nil, "custInt1")]],
      ["custInt2", ["SOAP::SOAPInt", XSD::QName.new(nil, "custInt2")]],
      ["custList1", ["SOAP::SOAPInt", XSD::QName.new(nil, "custList1")]],
      ["custList2", ["SOAP::SOAPInt", XSD::QName.new(nil, "custList2")]],
      ["custNotes", ["SOAP::SOAPString", XSD::QName.new(nil, "custNotes")], [0, 1]],
      ["custText1", ["SOAP::SOAPString", XSD::QName.new(nil, "custText1")], [0, 1]],
      ["custText2", ["SOAP::SOAPString", XSD::QName.new(nil, "custText2")], [0, 1]],
      ["department", ["SOAP::SOAPInt", XSD::QName.new(nil, "department")]],
      ["disable", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "disable")]],
      ["displayName", ["SOAP::SOAPString", XSD::QName.new(nil, "displayName")], [0, 1]],
      ["email", ["SOAP::SOAPString", XSD::QName.new(nil, "email")], [0, 1]],
      ["emailNotifications", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "emailNotifications")]],
      ["enableLoginToEup", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "enableLoginToEup")]],
      ["expirationTime", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "expirationTime")], [0, 1]],
      ["firstName", ["SOAP::SOAPString", XSD::QName.new(nil, "firstName")], [0, 1]],
      ["floor", ["SOAP::SOAPString", XSD::QName.new(nil, "floor")], [0, 1]],
      ["lastName", ["SOAP::SOAPString", XSD::QName.new(nil, "lastName")], [0, 1]],
      ["location", ["SOAP::SOAPInt", XSD::QName.new(nil, "location")]],
      ["manager", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "manager")]],
      ["notes", ["SOAP::SOAPString", XSD::QName.new(nil, "notes")], [0, 1]],
      ["password", ["SOAP::SOAPString", XSD::QName.new(nil, "password")], [0, 1]],
      ["phone", ["SOAP::SOAPString", XSD::QName.new(nil, "phone")], [0, 1]],
      ["secondaryEmail", ["SOAP::SOAPString", XSD::QName.new(nil, "secondaryEmail")], [0, 1]],
      ["sms", ["SOAP::SOAPString", XSD::QName.new(nil, "sms")], [0, 1]],
      ["userManagerName", ["SOAP::SOAPString", XSD::QName.new(nil, "userManagerName")], [0, 1]],
      ["userName", ["SOAP::SOAPString", XSD::QName.new(nil, "userName")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ApiProject,
    :schema_type => XSD::QName.new(NsApiIlientCom, "apiProject"),
    :schema_basetype => XSD::QName.new(NsApiIlientCom, "apiSysaidObject"),
    :schema_element => [
      ["assignedGroup", ["SOAP::SOAPString", XSD::QName.new(nil, "assignedGroup")], [0, 1]],
      ["category", ["SOAP::SOAPInt", XSD::QName.new(nil, "category")]],
      ["company", ["SOAP::SOAPInt", XSD::QName.new(nil, "company")]],
      ["custDate1", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "custDate1")], [0, 1]],
      ["custDate2", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "custDate2")], [0, 1]],
      ["custInt1", ["SOAP::SOAPInt", XSD::QName.new(nil, "custInt1")]],
      ["custInt2", ["SOAP::SOAPInt", XSD::QName.new(nil, "custInt2")]],
      ["custList1", ["SOAP::SOAPInt", XSD::QName.new(nil, "custList1")]],
      ["custList2", ["SOAP::SOAPInt", XSD::QName.new(nil, "custList2")]],
      ["custNotes", ["SOAP::SOAPString", XSD::QName.new(nil, "custNotes")], [0, 1]],
      ["custText1", ["SOAP::SOAPString", XSD::QName.new(nil, "custText1")], [0, 1]],
      ["custText2", ["SOAP::SOAPString", XSD::QName.new(nil, "custText2")], [0, 1]],
      ["customDateFields", ["ApiProject::CustomDateFields", XSD::QName.new(nil, "customDateFields")]],
      ["customFields", ["ApiProject::CustomFields", XSD::QName.new(nil, "customFields")]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")], [0, 1]],
      ["endTime", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "endTime")], [0, 1]],
      ["id", ["SOAP::SOAPInt", XSD::QName.new(nil, "id")]],
      ["incidentTitle", ["SOAP::SOAPString", XSD::QName.new(nil, "incidentTitle")], [0, 1]],
      ["manager", ["SOAP::SOAPString", XSD::QName.new(nil, "manager")], [0, 1]],
      ["notes", ["SOAP::SOAPString", XSD::QName.new(nil, "notes")], [0, 1]],
      ["progress", ["SOAP::SOAPInt", XSD::QName.new(nil, "progress")]],
      ["rawEstimation", ["SOAP::SOAPInt", XSD::QName.new(nil, "rawEstimation")]],
      ["requestGroup", ["SOAP::SOAPString", XSD::QName.new(nil, "requestGroup")], [0, 1]],
      ["startTime", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "startTime")], [0, 1]],
      ["status", ["SOAP::SOAPInt", XSD::QName.new(nil, "status")]],
      ["title", ["SOAP::SOAPString", XSD::QName.new(nil, "title")], [0, 1]],
      ["version", ["SOAP::SOAPInt", XSD::QName.new(nil, "version")]]
    ]
  )

  LiteralRegistry.register(
    :class => ApiProject::CustomDateFields::Entry,
    :schema_name => XSD::QName.new(nil, "entry"),
    :is_anonymous => true,
    :schema_qualified => false,
    :schema_element => [
      ["key", nil, [0, 1]],
      ["value", nil, [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ApiProject::CustomDateFields,
    :schema_name => XSD::QName.new(nil, "customDateFields"),
    :is_anonymous => true,
    :schema_qualified => false,
    :schema_element => [
      ["entry", "ApiProject::CustomDateFields::Entry[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => ApiProject::CustomFields::Entry,
    :schema_name => XSD::QName.new(nil, "entry"),
    :is_anonymous => true,
    :schema_qualified => false,
    :schema_element => [
      ["key", nil, [0, 1]],
      ["value", nil, [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ApiProject::CustomFields,
    :schema_name => XSD::QName.new(nil, "customFields"),
    :is_anonymous => true,
    :schema_qualified => false,
    :schema_element => [
      ["entry", "ApiProject::CustomFields::Entry[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => ApiTask,
    :schema_type => XSD::QName.new(NsApiIlientCom, "apiTask"),
    :schema_basetype => XSD::QName.new(NsApiIlientCom, "apiSysaidObject"),
    :schema_element => [
      ["category", ["SOAP::SOAPInt", XSD::QName.new(nil, "category")]],
      ["ciId", ["SOAP::SOAPInt", XSD::QName.new(nil, "ciId")]],
      ["custDate1", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "custDate1")], [0, 1]],
      ["custDate2", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "custDate2")], [0, 1]],
      ["custInt1", ["SOAP::SOAPInt", XSD::QName.new(nil, "custInt1")]],
      ["custInt2", ["SOAP::SOAPInt", XSD::QName.new(nil, "custInt2")]],
      ["custList1", ["SOAP::SOAPInt", XSD::QName.new(nil, "custList1")]],
      ["custList2", ["SOAP::SOAPInt", XSD::QName.new(nil, "custList2")]],
      ["custNotes", ["SOAP::SOAPString", XSD::QName.new(nil, "custNotes")], [0, 1]],
      ["custText1", ["SOAP::SOAPString", XSD::QName.new(nil, "custText1")], [0, 1]],
      ["custText2", ["SOAP::SOAPString", XSD::QName.new(nil, "custText2")], [0, 1]],
      ["customDateFields", ["ApiTask::CustomDateFields", XSD::QName.new(nil, "customDateFields")]],
      ["customFields", ["ApiTask::CustomFields", XSD::QName.new(nil, "customFields")]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")], [0, 1]],
      ["endTime", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "endTime")], [0, 1]],
      ["estimation", ["SOAP::SOAPInt", XSD::QName.new(nil, "estimation")]],
      ["id", ["SOAP::SOAPInt", XSD::QName.new(nil, "id")]],
      ["notes", ["SOAP::SOAPString", XSD::QName.new(nil, "notes")], [0, 1]],
      ["progress", ["SOAP::SOAPInt", XSD::QName.new(nil, "progress")]],
      ["startTime", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "startTime")], [0, 1]],
      ["status", ["SOAP::SOAPInt", XSD::QName.new(nil, "status")]],
      ["taskDependency", ["SOAP::SOAPInt", XSD::QName.new(nil, "taskDependency")]],
      ["taskDependencyType", ["SOAP::SOAPInt", XSD::QName.new(nil, "taskDependencyType")]],
      ["title", ["SOAP::SOAPString", XSD::QName.new(nil, "title")], [0, 1]],
      ["version", ["SOAP::SOAPInt", XSD::QName.new(nil, "version")]]
    ]
  )

  LiteralRegistry.register(
    :class => ApiTask::CustomDateFields::Entry,
    :schema_name => XSD::QName.new(nil, "entry"),
    :is_anonymous => true,
    :schema_qualified => false,
    :schema_element => [
      ["key", nil, [0, 1]],
      ["value", nil, [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ApiTask::CustomDateFields,
    :schema_name => XSD::QName.new(nil, "customDateFields"),
    :is_anonymous => true,
    :schema_qualified => false,
    :schema_element => [
      ["entry", "ApiTask::CustomDateFields::Entry[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => ApiTask::CustomFields::Entry,
    :schema_name => XSD::QName.new(nil, "entry"),
    :is_anonymous => true,
    :schema_qualified => false,
    :schema_element => [
      ["key", nil, [0, 1]],
      ["value", nil, [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ApiTask::CustomFields,
    :schema_name => XSD::QName.new(nil, "customFields"),
    :is_anonymous => true,
    :schema_qualified => false,
    :schema_element => [
      ["entry", "ApiTask::CustomFields::Entry[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => ApiComputerItem,
    :schema_type => XSD::QName.new(NsApiIlientCom, "apiComputerItem"),
    :schema_element => [
      ["accountId", ["SOAP::SOAPString", XSD::QName.new(nil, "accountId")], [0, 1]],
      ["computerId", ["SOAP::SOAPString", XSD::QName.new(nil, "computerId")], [0, 1]],
      ["itemDisplay", ["SOAP::SOAPString", XSD::QName.new(nil, "itemDisplay")], [0, 1]],
      ["itemType", ["SOAP::SOAPString", XSD::QName.new(nil, "itemType")], [0, 1]],
      ["license", ["SOAP::SOAPString", XSD::QName.new(nil, "license")], [0, 1]],
      ["value", ["SOAP::SOAPString", XSD::QName.new(nil, "value")], [0, 1]],
      ["version", ["SOAP::SOAPString", XSD::QName.new(nil, "version")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ApiComputerItemList,
    :schema_type => XSD::QName.new(NsApiIlientCom, "apiComputerItemList"),
    :schema_basetype => XSD::QName.new(NsApiIlientCom, "apiSysaidObject"),
    :schema_element => [
      ["accountId", ["SOAP::SOAPString", XSD::QName.new(nil, "accountId")], [0, 1]],
      ["computerId", ["SOAP::SOAPString", XSD::QName.new(nil, "computerId")], [0, 1]],
      ["computerItems", ["[]", XSD::QName.new(nil, "computerItems")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Login,
    :schema_type => XSD::QName.new(NsApiIlientCom, "login"),
    :schema_element => [
      ["accountId", ["SOAP::SOAPString", XSD::QName.new(nil, "accountId")], [0, 1]],
      ["userName", ["SOAP::SOAPString", XSD::QName.new(nil, "userName")], [0, 1]],
      ["password", ["SOAP::SOAPString", XSD::QName.new(nil, "password")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => LoginResponse,
    :schema_type => XSD::QName.new(NsApiIlientCom, "loginResponse"),
    :schema_element => [
      ["v_return", ["SOAP::SOAPLong", XSD::QName.new(nil, "return")]]
    ]
  )

  LiteralRegistry.register(
    :class => Delete,
    :schema_type => XSD::QName.new(NsApiIlientCom, "delete"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPLong", XSD::QName.new(nil, "sessionId")]],
      ["apiSysObj", ["ApiSysaidObject", XSD::QName.new(nil, "apiSysObj")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => DeleteResponse,
    :schema_type => XSD::QName.new(NsApiIlientCom, "deleteResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => ExecuteSelectQuery,
    :schema_type => XSD::QName.new(NsApiIlientCom, "executeSelectQuery"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPLong", XSD::QName.new(nil, "sessionId")]],
      ["apiSysObj", ["ApiSysaidObject", XSD::QName.new(nil, "apiSysObj")], [0, 1]],
      ["condition", ["SOAP::SOAPString", XSD::QName.new(nil, "condition")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ExecuteSelectQueryResponse,
    :schema_type => XSD::QName.new(NsApiIlientCom, "executeSelectQueryResponse"),
    :schema_element => [
      ["v_return", ["SOAP::SOAPString[]", XSD::QName.new(nil, "return")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LoadByStringId,
    :schema_type => XSD::QName.new(NsApiIlientCom, "loadByStringId"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPLong", XSD::QName.new(nil, "sessionId")]],
      ["apiSysObj", ["ApiSysaidObject", XSD::QName.new(nil, "apiSysObj")], [0, 1]],
      ["id", ["SOAP::SOAPString", XSD::QName.new(nil, "id")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => LoadByStringIdResponse,
    :schema_type => XSD::QName.new(NsApiIlientCom, "loadByStringIdResponse"),
    :schema_element => [
      ["v_return", ["ApiSysaidObject", XSD::QName.new(nil, "return")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Logout,
    :schema_type => XSD::QName.new(NsApiIlientCom, "logout"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPLong", XSD::QName.new(nil, "sessionId")]]
    ]
  )

  LiteralRegistry.register(
    :class => LogoutResponse,
    :schema_type => XSD::QName.new(NsApiIlientCom, "logoutResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => ExecuteApiSysAidObjectAction,
    :schema_type => XSD::QName.new(NsApiIlientCom, "executeApiSysAidObjectAction"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPLong", XSD::QName.new(nil, "sessionId")]],
      ["apiSysObj", ["ApiSysaidObject", XSD::QName.new(nil, "apiSysObj")], [0, 1]],
      ["actionName", ["SOAP::SOAPString", XSD::QName.new(nil, "actionName")], [0, 1]],
      ["actionParams", ["[]", XSD::QName.new(nil, "actionParams")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => ExecuteApiSysAidObjectActionResponse,
    :schema_type => XSD::QName.new(NsApiIlientCom, "executeApiSysAidObjectActionResponse"),
    :schema_element => [
      ["v_return", ["SOAP::SOAPString", XSD::QName.new(nil, "return")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => LoadById,
    :schema_type => XSD::QName.new(NsApiIlientCom, "loadById"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPLong", XSD::QName.new(nil, "sessionId")]],
      ["apiSysObj", ["ApiSysaidObject", XSD::QName.new(nil, "apiSysObj")], [0, 1]],
      ["id", [nil, XSD::QName.new(nil, "id")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => LoadByIdResponse,
    :schema_type => XSD::QName.new(NsApiIlientCom, "loadByIdResponse"),
    :schema_element => [
      ["v_return", ["ApiSysaidObject", XSD::QName.new(nil, "return")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Save,
    :schema_type => XSD::QName.new(NsApiIlientCom, "save"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPLong", XSD::QName.new(nil, "sessionId")]],
      ["apiSysObj", ["ApiSysaidObject", XSD::QName.new(nil, "apiSysObj")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => SaveResponse,
    :schema_type => XSD::QName.new(NsApiIlientCom, "saveResponse"),
    :schema_element => [
      ["v_return", [nil, XSD::QName.new(nil, "return")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetApiSysAidObjectActions,
    :schema_type => XSD::QName.new(NsApiIlientCom, "getApiSysAidObjectActions"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPLong", XSD::QName.new(nil, "sessionId")]],
      ["apiSysObj", ["ApiSysaidObject", XSD::QName.new(nil, "apiSysObj")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetApiSysAidObjectActionsResponse,
    :schema_type => XSD::QName.new(NsApiIlientCom, "getApiSysAidObjectActionsResponse"),
    :schema_element => [
      ["v_return", ["SOAP::SOAPString", XSD::QName.new(nil, "return")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Delete,
    :schema_name => XSD::QName.new(NsApiIlientCom, "delete"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPLong", XSD::QName.new(nil, "sessionId")]],
      ["apiSysObj", ["ApiSysaidObject", XSD::QName.new(nil, "apiSysObj")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => DeleteResponse,
    :schema_name => XSD::QName.new(NsApiIlientCom, "deleteResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => ExecuteApiSysAidObjectAction,
    :schema_name => XSD::QName.new(NsApiIlientCom, "executeApiSysAidObjectAction"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPLong", XSD::QName.new(nil, "sessionId")]],
      ["apiSysObj", ["ApiSysaidObject", XSD::QName.new(nil, "apiSysObj")], [0, 1]],
      ["actionName", ["SOAP::SOAPString", XSD::QName.new(nil, "actionName")], [0, 1]],
      ["actionParams", ["[]", XSD::QName.new(nil, "actionParams")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => ExecuteApiSysAidObjectActionResponse,
    :schema_name => XSD::QName.new(NsApiIlientCom, "executeApiSysAidObjectActionResponse"),
    :schema_element => [
      ["v_return", ["SOAP::SOAPString", XSD::QName.new(nil, "return")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ExecuteSelectQuery,
    :schema_name => XSD::QName.new(NsApiIlientCom, "executeSelectQuery"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPLong", XSD::QName.new(nil, "sessionId")]],
      ["apiSysObj", ["ApiSysaidObject", XSD::QName.new(nil, "apiSysObj")], [0, 1]],
      ["condition", ["SOAP::SOAPString", XSD::QName.new(nil, "condition")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ExecuteSelectQueryResponse,
    :schema_name => XSD::QName.new(NsApiIlientCom, "executeSelectQueryResponse"),
    :schema_element => [
      ["v_return", ["SOAP::SOAPString[]", XSD::QName.new(nil, "return")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => GetApiSysAidObjectActions,
    :schema_name => XSD::QName.new(NsApiIlientCom, "getApiSysAidObjectActions"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPLong", XSD::QName.new(nil, "sessionId")]],
      ["apiSysObj", ["ApiSysaidObject", XSD::QName.new(nil, "apiSysObj")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetApiSysAidObjectActionsResponse,
    :schema_name => XSD::QName.new(NsApiIlientCom, "getApiSysAidObjectActionsResponse"),
    :schema_element => [
      ["v_return", ["SOAP::SOAPString", XSD::QName.new(nil, "return")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => LoadById,
    :schema_name => XSD::QName.new(NsApiIlientCom, "loadById"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPLong", XSD::QName.new(nil, "sessionId")]],
      ["apiSysObj", ["ApiSysaidObject", XSD::QName.new(nil, "apiSysObj")], [0, 1]],
      ["id", [nil, XSD::QName.new(nil, "id")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => LoadByIdResponse,
    :schema_name => XSD::QName.new(NsApiIlientCom, "loadByIdResponse"),
    :schema_element => [
      ["v_return", ["ApiSysaidObject", XSD::QName.new(nil, "return")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => LoadByStringId,
    :schema_name => XSD::QName.new(NsApiIlientCom, "loadByStringId"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPLong", XSD::QName.new(nil, "sessionId")]],
      ["apiSysObj", ["ApiSysaidObject", XSD::QName.new(nil, "apiSysObj")], [0, 1]],
      ["id", ["SOAP::SOAPString", XSD::QName.new(nil, "id")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => LoadByStringIdResponse,
    :schema_name => XSD::QName.new(NsApiIlientCom, "loadByStringIdResponse"),
    :schema_element => [
      ["v_return", ["ApiSysaidObject", XSD::QName.new(nil, "return")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Login,
    :schema_name => XSD::QName.new(NsApiIlientCom, "login"),
    :schema_element => [
      ["accountId", ["SOAP::SOAPString", XSD::QName.new(nil, "accountId")], [0, 1]],
      ["userName", ["SOAP::SOAPString", XSD::QName.new(nil, "userName")], [0, 1]],
      ["password", ["SOAP::SOAPString", XSD::QName.new(nil, "password")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => LoginResponse,
    :schema_name => XSD::QName.new(NsApiIlientCom, "loginResponse"),
    :schema_element => [
      ["v_return", ["SOAP::SOAPLong", XSD::QName.new(nil, "return")]]
    ]
  )

  LiteralRegistry.register(
    :class => Logout,
    :schema_name => XSD::QName.new(NsApiIlientCom, "logout"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPLong", XSD::QName.new(nil, "sessionId")]]
    ]
  )

  LiteralRegistry.register(
    :class => LogoutResponse,
    :schema_name => XSD::QName.new(NsApiIlientCom, "logoutResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => Save,
    :schema_name => XSD::QName.new(NsApiIlientCom, "save"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPLong", XSD::QName.new(nil, "sessionId")]],
      ["apiSysObj", ["ApiSysaidObject", XSD::QName.new(nil, "apiSysObj")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => SaveResponse,
    :schema_name => XSD::QName.new(NsApiIlientCom, "saveResponse"),
    :schema_element => [
      ["v_return", [nil, XSD::QName.new(nil, "return")], [0, 1]]
    ]
  )
end
