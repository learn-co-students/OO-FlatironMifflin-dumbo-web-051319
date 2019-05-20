require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


manager1 = Manager.new("Mark", "Accounts", 33)
manager2 = Manager.new("Carla", "Finance", 35)
manager3 = Manager.new("Josh", "Internal Relations", 38)

employee1 = Employee.new("Mary Ann", 45000, manager2)
employee2 = Employee.new("James", 25000, manager3)
employee3 = Employee.new("Eileen", 98000, manager1)
# employee4 = Employee.new("Bob", 50000)
# employee5 = Employee.new("Adam", 45000)
# employee6 = Employee.new("Malik", 25000)
# employee7 = Employee.new("Sarah", 98000)
# employee8 = Employee.new("Ben", 50000)

employee4 = manager2.hire_employee("Ashley", 45000)
employee5 = manager1.hire_employee("Aimee", 25000)
employee6 = manager1.hire_employee("Drew", 98000)
employee7 = manager3.hire_employee("Lilly", 50000)
employee8 = manager1.hire_employee("Julian", 67000)
employee9 = manager2.hire_employee("Avi", 75000)
employee10 = manager1.hire_employee("Taylor", 98000)
employee11 = manager3.hire_employee("Geryn", 76000)
employee12 = manager2.hire_employee("Haley", 32000)


binding.pry
puts "done"
