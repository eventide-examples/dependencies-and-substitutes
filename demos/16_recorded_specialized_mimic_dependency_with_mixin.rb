require_relative 'demo_init'


class HTTPClient
  def post(content)
    # ...
  end

  module Substitute
    include RecordInvocation

    record def post(content)
      puts "Content: #{content}"
    end
  end
end

class Upload
  include Dependency

  dependency :http_client, HTTPClient

  def call(file)
    http_client.post(file)
  end
end

upload = Upload.new

upload.("some file")

upload.http_client.invoked?(:post, content: "some file")
# => true



