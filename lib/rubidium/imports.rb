require 'java'
require 'jbundler'

java_import org.eclipse.californium.core.server.resources.CoapExchange
java_import org.eclipse.californium.core.CoapServer
java_import org.eclipse.californium.core.CoapResource
java_import org.eclipse.californium.core.coap.CoAP

require_relative 'version'
require_relative 'helper'
require_relative 'exchange'
require_relative 'coap_resource_wrapper'
require_relative 'resource'
require_relative 'server'
