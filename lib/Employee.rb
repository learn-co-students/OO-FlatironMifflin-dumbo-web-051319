class Employee

    attr_accessor :name, :salary, :manager

    @@all = []

    def initialize(name, salary, manager)
        @name = name
        @salary = salary
        @manager = manager
        @@all << self
    end

    def self.all
        @@all
    end

    def manager_name
        self.manager.name
    end

    def self.paid_over(salary_cap)
        # binding.pry
        self.all.select {|employee| employee.salary > salary_cap}
    end

    def self.find_by_department(department)
        Manager.all.find {|manager| manager.department == department}
    end

    def self.salaries
        self.all.map {|employee| employee.salary}
    end

    def tax_bracket
        @@all.select {|employee| (employee.salary > (self.salary - 1000)) && (employee.salary < (self.salary + 1000))}
    end
end
