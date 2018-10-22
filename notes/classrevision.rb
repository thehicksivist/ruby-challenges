class Hello
    @@count = 0
    attr_accessor :name

    def self.count
        @@count
    end
    def initialize(name)
        @name = name
        @@count += 1
    end
    def speak
        puts @name
    end
end

# Main entry point
Hello.new("John")
Hello.new("Mary")
Hello.new("Bill")

puts Hello.count
