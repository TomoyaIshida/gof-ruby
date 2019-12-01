require './Observer/Employee/Module/subject'

class Employee
  include Subject
  attr_reader :name, :salary

  def initialize(name, salary)
    super()
    @name = name
    @salary = salary
  end

  def salary=(new_salary)
    @salary = new_salary
    notify_observers
  end
end

class Payroll
  def update(changed_employee)
    puts "#{changed_employee.name}のために小切手を切ります。"
    puts "彼の給料は月#{changed_employee.salary}ドルになりました！"
  end
end

class TaxMan
  def update(changed_employee)
    puts "#{changed_employee.name}に新しい納税書類を送ります。"
  end
end

mark = Employee.new('Mark', 9000)
mark.add_observer(Payroll.new)
mark.add_observer(TaxMan.new)

mark.salary = 10000
