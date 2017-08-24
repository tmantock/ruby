class Person
    attr_accessor :name, :age
    def initialize(name, age = 0, validAge = 100)
        @name = name
        @age = age
        @validAge = validAge
    end

    def grow()
        @age += 1
    end

    def validAge?()
        if @age < @validAge
            return true
        end

        false
    end
end

class Child < Person
    def initialize(name, age = 0, friends)
        super(name, age, 18)
        @friends = friends
    end

    def friendsList
        if not @friends.empty?
            @friends.each do |name|
                puts name
            end
        else
            print "No friends"
        end
    end
end

class Adult < Person
    def initialize(name, age, job)
        super(name, age, 100)
        @job = job
    end

    def job?
        puts "My name is #{@name} and I am a #{@job}"
    end
end

jane = Adult.new("Jane", 35, "President")
anna = Child.new("Anna", 28, ["Frank", "Claire", "Samwise"])

jane.job?
puts jane.validAge?
jane.grow
puts jane.age

anna.friendsList
puts anna.validAge?