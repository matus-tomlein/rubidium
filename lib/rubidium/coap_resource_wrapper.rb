module Rubidium
  class CoapResourceWrapper < CoapResource
    def initialize(resource)
      @resource = resource
      super(@resource.name)
      getAttributes.setTitle(@resource.title) if @resource.title
    end

    {
      handleGET: :get,
      handlePOST: :post,
      handleDELETE: :delete,
      handlePUT: :put
    }.each do |method_name, type|
      define_method(method_name) do |coap_exchange|
        if @resource.defines_method_type?(type)
          @resource.call_method_type(type, coap_exchange)
        else
          super
        end
      end
    end
  end
end
