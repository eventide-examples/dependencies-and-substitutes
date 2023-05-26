require_relative 'demo_init'


class HTTPClient
  def post(content)
    # ...
  end
end

http_client = Mimic.(HTTPClient)

http_client.post("some content")



