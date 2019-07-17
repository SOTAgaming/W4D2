require_relative "employee"

class Manager < Employee

    attr_reader :employees

  def initialize(name, title, salary, boss, employees)
    @employees = employees
    super(name, title, salary, boss)

  end

  def add_employee(employee)
    @employees << employee
    employee.add_boss(self)
  end 

  def bonus(multiplier)
    total_salary = 0

    queue = []

    @employees.each do |employee| 
      queue << employee
    end 

    until queue.empty?
      employee = queue.shift
      total_salary += employee.salary
      if employee.is_a?(Manager)
        queue += employee.employees
      end
    end 
    total_salary * multiplier
  end

end

ned = Manager.new("Ned", "Founder", 1000000, nil, [])
daren = Manager.new("Daren", "TA Manager", 78000, nil, [])
ned.add_employee(daren)
david = Employee.new("David", "TA", 10000, nil)
shawna = Employee.new("Shawna", "TA", 12000, nil)
daren.add_employee(david)
daren.add_employee(shawna)

p daren.boss.name
p shawna.boss.name
p ned.boss.name


#daren = Manager.new("Daren", "TA Manager", 72000, ned, [david, shawna])
#ned = Manager.new("Ned", "Founder", 1000000, nil, [])


# p ned.bonus(5)
# p daren.bonus(4)
# p david.bonus(3)