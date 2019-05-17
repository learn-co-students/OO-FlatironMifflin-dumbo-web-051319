class Employee
  attr_reader :name, :age, :salary

  @@all = []

  def initialize(name, age, salary)
    @name = name
    @salary = salary
    @age = age
    @@all << self
  end

  def manager_name
    Manager.all.find{ |mgr|
      mgr.employees.find{ |e|
        e.name == self.name
        }
      }.name
  end

  def tax_bracket
    @@all.select{ |employee|
      employee.salary.between?(self.salary - 1000, self.salary + 1000)
    }
  end

  def self.all
    @@all
  end

  def self.paid_over(amt)
    @@all.select{|employee| employee.salary > amt}
  end

  def self.find_by_department(dept)
    Manager.all.find{|mgr| mgr.department == dept}.employees[0]
  end
end
