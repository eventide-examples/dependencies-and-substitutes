require_relative 'demo_init'


class HTTPClient
  def post(content)
    # ...
  end

  module Substitute
    def self.build
      Mimic.(HTTPClient, record: true) do
        def posted?(content)
          invoked_once?(:post, content: content)
        end
      end
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




