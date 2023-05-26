require_relative 'demo_init'


class HTTPClient
  def post(content)
    # ...
  end

  module Substitute
    include Mimic::Recorder::Predicate

    predicate :posted?, method_name: :post
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

upload.http_client.posted?(content: "some file")
# => true



