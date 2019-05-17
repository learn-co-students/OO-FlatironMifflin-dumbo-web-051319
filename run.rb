require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'

mgr_brad = Manager.new("Brad", 53, "Bubonics")
mgr_betty = Manager.new("Betty", 33, "Hydroponics")
mgr_barbara = Manager.new("Barbara", 54, "Plate Tectonics")
mgr_bill = Manager.new("Bill", 23, "Cryonics")
mgr_biff = Manager.new("Biff", 68, "Histrionics")

worker_john = mgr_brad.hire_employee("John", 23, 45436)
worker_mary = mgr_biff.hire_employee("Mary", 32, 65436)
worker_alex = mgr_brad.hire_employee("Alex", 45, 50430)
worker_joe = mgr_barbara.hire_employee("Joe", 53, 54433)
worker_june = mgr_betty.hire_employee("June", 28, 52537)
worker_judy = mgr_biff.hire_employee("Judy", 43, 45326)
worker_manny = mgr_bill.hire_employee("Manny", 42, 38435)
worker_andy = mgr_barbara.hire_employee("Andy", 45, 57654)
worker_jack = mgr_brad.hire_employee("Jack", 39, 58477)
worker_jorge = mgr_bill.hire_employee("Jorge", 52, 50000)

binding.pry
puts "done"
