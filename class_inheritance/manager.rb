require_relative 'employee'

class Manager < Employee

    attr_reader :employees

    def initialize(name, title, salary, boss=nil)
        super
        @employees = []
    end

    def add_employee(employee)
        @employees << employee
    end

    def total_salary
        emp_salaries = []
        @employees.each do |emp|
            emp_salaries << emp.salary
        end
        emp_salaries.sum
    end

    def bonus(multiplier)
        self.total_salary * multiplier
    end

end

david = Employee.new("David", "TA", 10000, "Darren")
shawna = Employee.new("Shawna", "TA", 12000, "Darren")
darren = Manager.new("Darren", "TA Manager", 78000, "Ned")

darren.add_employee(shawna)
darren.add_employee(david)
ned.add_employee(darren)
# p david.bonus(3) # => 30_000
# p darren.total_salary
# p ned.total_salary
p darren
p darren.bonus(4) # => 30_000
p ned.bonus(5) # => 500_000


# # p shawna.bonus(3)
# # darren.bonus(4) # => 88_000
# p david.bonus(3) # => 30_000