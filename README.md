Rubidium
========

Rubidium is a simple JRuby wrapper around the
[Californium](https://github.com/eclipse/californium) CoAP server.

# Usage

```
class SomeResource < Rb::Resource
  def get(exchange)
    exchange.respond('Nice')
  end
end

server = Rb::Server.new
server.add(SomeResource.new)
server.start
```
