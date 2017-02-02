class HelloWorld
  def call(env)
    [200, {"Content-Type" => "text/html"}, ["Hello World 3!"]]
  end
end
