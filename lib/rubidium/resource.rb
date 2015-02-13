module Rubidium
  class Resource
    attr_accessor :name, :title

    def initialize
      @name = Helper.to_underscore(self.class.name.to_s)
    end

    def call_method_type(type, exchange)
      if defines_method_type? type
        send(type, Exchange.new(exchange))
      end
    end

    def defines_method_type?(type)
      respond_to? type
    end
  end
end
