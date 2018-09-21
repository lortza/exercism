class HelloWorld
  def self.hello(name)
    name == nil || name == '' ?  "Hello, world!" : "Hello, #{name}!"
  end
end
