module Rubidium
  class Server
    def self.start
      server = Server.new
      server.start
      server
    end

    attr_reader :coap_server

    def initialize
      @coap_server = CoapServer.new
    end

    def method_missing(method_name, *arguments, &block)
      if @coap_server.respond_to?(method_name)
        @coap_server.send(method_name, *arguments, &block)
      else
        super
      end
    end

    def add(resource)
      super(CoapResourceWrapper.new(resource))
    end
  end
end
