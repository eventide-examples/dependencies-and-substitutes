require_relative 'demo_init'


class HTTPClient
  def post(content)
    # ...
  end
end

http_client = Mimic.(HTTPClient, record: true)

http_client.post("some content")

http_client.invoked?(:post, content: "some content")
# => true



