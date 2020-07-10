class Animal
  def walk
    puts "walk"
  end

  def eat
    puts "eat"
  end
end

class Dog < Animal
end

class Cat < Animal
  attr_accessor :name, :age
  def initialize(name, age)
    @name = name
    @age = age
  end
end

dog = Dog.new
dog.walk
dog.eat
cat = Cat.new("ccc", 2)
p cat.name
p cat.age
cat.name = "bbb"
p cat.name