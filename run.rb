require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here

michael = Manager.new("Michael", 42, "Scranton")
michael.hire_employee("Jim", 25000)
michael.hire_employee("Pam", 20000)
nard_dog = Manager.new("Andy", 38, "Season 8")
nard_dog.hire_employee("Erin", 18000)

binding.pry
puts "done"
