class Animal
  def initialize(name)
    @name = name
  end

  def speak
    puts "animal barks"
  end
end


class Dog < Animal
  def speak
    super
    puts "#{@name} barks"
  end
end


dog = Dog.new("dog1")
dog.speak


class Vehicle
  def start
    puts "Vehicle is starting"
  end

  def stop
    puts "Vehicle is stopping"
  end
end

class Car < Vehicle
  def drive
    puts "Car is driving"
  end

  def start
    super
    puts "Car is starting"
  end
end


class ElectricCar < Car
  def charge
    puts "Electric car is charging"
  end

  def start
    super
    puts "Electric car starts "
  end
end


tesla = ElectricCar.new

tesla.start
tesla.drive
tesla.charge
tesla.stop


class A 
    private 

    def hello
        
        puts "hello from A"
    end

    protected

    def greet
        hello
        puts "greetings from A"
    end

    public 

    def hello1
        puts "publci method"
    end


end

class B < A 
    private

    def hello
        puts "hello from b"
    end
end

a= A.new
a.hello1
#a.hello

b=B.new
#b.greet