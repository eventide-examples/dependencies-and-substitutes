require_relative 'demo_init'


class HTTPClient
  def post(content)
    # ...
  end
end

class Upload
  include Dependency

  dependency :http_client, HTTPClient
end

upload = Upload.new

upload.http_client.post("some content")

upload.http_client.jkhgsadjhagjhasgdjhasgdjahsdgasjhdgak
# => undefined method `jkhgsadjhagjhasgdjhasgdjahsdgasjhdgak'



