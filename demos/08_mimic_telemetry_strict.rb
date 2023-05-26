require_relative 'demo_init'


class HTTPClient
  def post(content)
    # ...
  end
end

http_client = Mimic.(HTTPClient, record: true)

http_client.post("some content")
http_client.post("some other content")

http_client.invoked_once?(:post, content: "some content")
# => true

http_client.invoked_once?(:post)
# => More than one invocation record matches (Mimic::Recorder::Error)



