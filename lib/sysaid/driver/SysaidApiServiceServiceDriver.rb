load 'sysaid/driver/SysaidApiServiceService.rb'
load 'sysaid/driver/SysaidApiServiceServiceMappingRegistry.rb'
require 'soap/rpc/driver'

class SysaidApiService < ::SOAP::RPC::Driver
  DefaultEndpointUrl = ""

  Methods = [
    [ "",
      "save",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "http://api.ilient.com/", "save"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "http://api.ilient.com/", "saveResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "",
      "delete",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "http://api.ilient.com/", "delete"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "http://api.ilient.com/", "deleteResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "",
      "login",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "http://api.ilient.com/", "login"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "http://api.ilient.com/", "loginResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "",
      "logout",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "http://api.ilient.com/", "logout"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "http://api.ilient.com/", "logoutResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "",
      "loadById",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "http://api.ilient.com/", "loadById"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "http://api.ilient.com/", "loadByIdResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "",
      "executeApiSysAidObjectAction",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "http://api.ilient.com/", "executeApiSysAidObjectAction"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "http://api.ilient.com/", "executeApiSysAidObjectActionResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "",
      "executeSelectQuery",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "http://api.ilient.com/", "executeSelectQuery"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "http://api.ilient.com/", "executeSelectQueryResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "",
      "getApiSysAidObjectActions",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "http://api.ilient.com/", "getApiSysAidObjectActions"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "http://api.ilient.com/", "getApiSysAidObjectActionsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "",
      "loadByStringId",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "http://api.ilient.com/", "loadByStringId"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "http://api.ilient.com/", "loadByStringIdResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ]
  ]

  def initialize(endpoint_url = nil)
    endpoint_url ||= DefaultEndpointUrl
    super(endpoint_url, nil)
    self.mapping_registry = SysaidApiServiceServiceMappingRegistry::EncodedRegistry
    self.literal_mapping_registry = SysaidApiServiceServiceMappingRegistry::LiteralRegistry
    init_methods
  end

private

  def init_methods
    Methods.each do |definitions|
      opt = definitions.last
      if opt[:request_style] == :document
        add_document_operation(*definitions)
      else
        add_rpc_operation(*definitions)
        qname = definitions[0]
        name = definitions[2]
        if qname.name != name and qname.name.capitalize == name.capitalize
          ::SOAP::Mapping.define_singleton_method(self, qname.name) do |*arg|
            __send__(name, *arg)
          end
        end
      end
    end
  end
end

