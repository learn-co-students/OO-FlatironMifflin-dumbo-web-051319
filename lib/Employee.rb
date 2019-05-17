class Employee
  attr_accessor :salary, :manager
  attr_reader :name
  @@all = []
  def initialize (name = nil, salary = nil, manager = nil)
    @name = name
    @salary = salary
    @manager = manager
    @@all << self
  end
  def self.paid_over(amount)
    @@all.select {|employee| employee.salary > amount}.compact
  end
  def self.find_by_department(department)
    @@all.find{|employee| employee.manager.department == department}
  end
  def tax_bracket
    @@all.select do |employee|
      if employee != self && employee.salary > self.salary + 1000
        employee
      elsif employee != self && employee.salary > self.salary - 1000
        employee
      end
    end
  end
  def self.all
    @@all
  end

end
