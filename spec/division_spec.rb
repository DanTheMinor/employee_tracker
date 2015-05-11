require 'spec_helper'

describe(Division) do
  it('tells which employees belong to the division') do
    division = Division.create({:section => 'section1'})
    employee1 = Employee.create({:name => "bob", :division_id => division.id()})
    employee2 = division.employees.create({:name => "bill"})
    expect(division.employees()).to(eq([employee1, employee2]))
  end
end
