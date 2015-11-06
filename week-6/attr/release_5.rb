class NameData
  attr_accessor :name

  def initialize
    @name = "Becky"
  end

  def hello
    puts "Hello, #{@name} - It's great to see you!"
  end
end

class Greetings
  attr_accessor :greeting

  def initialize
    @greeting = NameData.new
  end
end

greet = Greetings.new
p greet.hello
