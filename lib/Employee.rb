class Employee
  @@all =[]

  attr_reader :name
  attr_accessor :salary, :department, :manager_name

  def initialize(name, salary)
    @name = name
    @salary = salary
    @department = department
    @manager_name = manager_name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.paid_over(num)
    @@all.select {|employee| employee.salary > num}
  end

  def self.find_by_department(department)
    @@all.find {|employee| employee.department = department}
    # return FIRST employee working there
    # .find
  end

  def tax_bracket

  end
end
#
# Employee#tax_bracket
# returns an Array of all the employees whose salaries are within $1000 (± 1000) of the employee who invoked the method
