module Rubidium
  class Exchange
    attr_reader :coap_exchange

    def initialize(coap_exchange)
      @coap_exchange = coap_exchange
    end

    def created
      @coap_exchange.respond(CoAP::ResponseCode::CREATED)
    end

    def method_missing(method_name, *arguments, &block)
      if @coap_exchange.respond_to?(method_name)
        @coap_exchange.send(method_name, *arguments, &block)
      else
        super
      end
    end
  end
end
