require_relative 'demo_init'


class HTTPClient
  def post(content)
    # ...
  end

  module Substitute
    # ...
  end
end



class Upload
  include Dependency

  dependency :http_client, HTTPClient

  def self.build
    instance = new
    instance.http_client = HTTPClient.new
    instance
  end

  def call(file)
    http_client.post(file)
  end
end

upload = Upload.new
upload.http_client
# => #<Mimic::Class::HTTPClient_280:0x...>

upload = Upload.build
upload.http_client
# => #<HTTPClient:0x...>


