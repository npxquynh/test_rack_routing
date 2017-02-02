class HelloWorld
  def call(env)
    request = Rack::Request.new(env)

    case request.path_info
    when /hello/
      [200, {"Content-Type" => "text/html"}, ["Hello World 4!"]]
    when /goodbye/
      [500, {"Content-Type" => "text/html"}, ["Goodbye!"]]
    else
      [404, {"Content-Type" => "text/html"}, ["I'm Lost!"]]
    end
  end
end
