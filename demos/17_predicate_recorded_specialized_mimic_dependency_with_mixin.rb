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

    def posted?(content)
      invoked?(:post, content: content)
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

upload.http_client.posted?("some file")
# => true
