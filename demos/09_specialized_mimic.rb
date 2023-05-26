require_relative 'demo_init'


class HTTPClient
  def post(content)
    # ...
  end
end

http_client = Mimic.(HTTPClient, record: true) do
  def posted?(content)
    invoked_once?(:post, content: content)
  end
end

http_client.post("some content")

http_client.posted?("some content")
# => true



