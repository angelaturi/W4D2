require_relative 'employee'

class Manager < Employee

    def initialize(name, title, salary, boss)
        super
        @employees = []
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

