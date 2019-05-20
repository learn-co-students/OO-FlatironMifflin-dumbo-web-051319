class Manager

    attr_accessor :name, :department, :age, :employees

    @@all = []

    def initialize(name, department, age)
        @department = department
        @age = age
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end
    
    def employees
        Employee.all.select {|employee| employee.manager == self}
    end
    
    def hire_employee(name, salary)
        Employee.new(name, salary, self)
    end

    def self.all_departments
        self.all.map {|manager| manager.department}
    end

    def self.average_age
        self.all.map {|manager| manager.age}.inject(0, :+) / self.all.length
    end
end
