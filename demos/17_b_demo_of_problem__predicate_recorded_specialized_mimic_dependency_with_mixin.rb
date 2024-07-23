require_relative 'demo_init'


class HTTPClient
  def post(content)
    # ...
  end

  module Substitute
    ## This code can be deactivated without causing an error
    # include RecordInvocation

    # record def post(content)
    #   puts "Content: #{content}"
    # end

    ## Mimic includes RecordInvocation in all substitutes by default
    ## which makes `invoked?` seem to come out of nowhere

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
