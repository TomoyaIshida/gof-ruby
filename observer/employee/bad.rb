class Employee
  attr_reader :name, :salary

  def initialize(name, salary, payroll)
    @name = name
    @salary = salary
    @payroll = payroll
  end

  def salary=(new_salary)
    @salary = new_salary
    @payroll.update(self)
  end
end

class Payroll
  def update(changed_employee)
    puts "#{changed_employee.name}のために小切手を切ります。"
    puts "彼の給料は月#{changed_employee.salary}ドルになりました！"
  end
end

mark = Employee.new('Mark', 9000, Payroll.new)
mark.salary = 10000
