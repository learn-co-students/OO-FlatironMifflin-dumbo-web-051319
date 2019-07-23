class Manager
  attr_accessor :department, :age
  attr_reader :name
  @@all = []
  def initialize (name = nil, department = nil, age = nil)
    @name = name
    @department = department
    @age = age
    @@all << self
  end
  def hire_employee (name, salary)
    Employee.new(name, salary, self)
  end
  def self.all_departments
    @@all.map { |employee| employee.department }.uniq
  end
  def self.average_age
    ary = @@all.map { |employee| employee.age }
    sum = 0
    ary.each {|age| sum+=age}
    return (sum * 1.00 / ary.length).round(2)
  end
  def self.all
    @@all
  end
end
