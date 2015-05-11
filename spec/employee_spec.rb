require 'spec_helper'

describe(Employee) do
  it("tells which employees belong to which division") do
    test_division = Division.create({:section => 'sales'})
    test_employee = Employee.create({:name => 'D', :division_id => test_division.id()})
    expect(test_division.employees()).to(eq([test_employee]))
  end
end
