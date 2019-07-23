require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here
manager_1 = Manager.new("Bob","Computer Science", 40)
manager_2 = Manager.new("Alice","Computer Science", 20)
manager_3 = Manager.new("Kitty","Computer Engineering", 30)
manager_4 = Manager.new("Dive","Software Engineering", 42)
manager_5 = Manager.new("Luke","Management", 40)

employee_1 = Employee.new("Dark", 100000, manager_1)
employee_2 = Employee.new("Light", 398060, manager_1)
employee_3 = Employee.new("Flower", 50000, manager_2)
employee_4 = Employee.new("Bird", 70000, manager_3)
employee_5 = Employee.new("Cat", 399050, manager_4)
employee_6 = Employee.new("Dog", 400000, manager_3)

binding.pry
puts "done"
