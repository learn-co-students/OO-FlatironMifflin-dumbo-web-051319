class Manager
  attr_accessor :employees
  attr_reader :name, :age, :department

  @@all = []

  def initialize(name, age, department)
    @name = name
    @age = age
    @department = department
    @employees = []
    @@all << self
  end

  def self.all
    @@all
  end

  def hire_employee(name, age, salary)
    new_employee = Employee.new(name, age, salary)
    @employees << new_employee
    new_employee
  end

  def self.all_departments
    @@all.map{|mgr| mgr.department}.uniq
  end

  def self.average_age
    ages = @@all.map{|mgr| mgr.age}
    ages.reduce(:+).to_f / ages.length
  end
end
