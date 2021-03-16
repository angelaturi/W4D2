

class Employee

    attr_reader :name, :title
    attr_accessor :salary, :boss

    def initialize(name, title, salary, boss=nil)
        @name, @title, @salary, @boss = name, title, salary, boss
    end

    def boss=(other_employee)
        self.boss = other_employee
        return boss
    end

    def bonus(multiplier)
        self.salary * multiplier
    end


end

# ned = Employee.new("Ned", "Founder", 1000000)
# p ned
# p ned.bonus(5) # => 500_000

david = Employee.new("David", "TA", 10000)
p david
# p shawna.bonus(3)
# darren.bonus(4) # => 88_000
p david.bonus(3) # => 30_000
