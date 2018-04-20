require 'rspec'
require_relative 'DueDateTask'
require_relative 'tasklist'


describe TaskDate do
  it "TaskDate has to be real" do
    expect{TaskDate.new('T1', 'D1', 'due date')}.to_not raise_error
  end

  it "Tasks have due dates" do
    date = TaskDate.new("T1", "D1", "due date")
    expect(date.due_date).to be_a String
  end

end
