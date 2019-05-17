class Manager
  @@all = []

  attr_reader :name
  attr_accessor :age, :department, :employees

  def initialize(name, age, department)
    @name = name
    @age = age
    @department = department
    @@all << self
  end

  def self.all
    @@all
  end

  def employees
    Employee.all.select{|employee| employee.manager_name = self}
  end

  def hire_employee(name, salary)
    employee = Employee.new(name, salary)
     employee.department=(self.department)
     employee.manager_name=(self.name)
  end

  def self.all_departments
    # @@all.map {|manager| }
  end

  def self.average_age
    # returns float
  end

end


#

# Manager.all_departments
# returns an Array of all the department names that every manager oversees
# Manager.average_age
# returns a Float that is the average age of all the managers
