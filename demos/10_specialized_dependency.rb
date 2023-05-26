require_relative 'demo_init'


class HTTPClient
  def post(content)
    # ...
  end

  module Substitute
    def self.build
      Object.new
    end
  end
end

class Upload
  include Dependency

  dependency :http_client, HTTPClient
end

upload = Upload.new

upload.http_client
# => #<Object:0x...>



