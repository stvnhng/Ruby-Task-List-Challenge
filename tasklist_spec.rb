require 'rspec'
require_relative 'tasklist'

describe Task do

  it "Task has to be real" do
    expect{Task.new("title", "description")}.to_not raise_error
  end

  it "Task has a title" do
    the_title = Task.new("example", "description")
    expect(the_title.title).to be_a String
  end

  it "Task has a description" do
    the_description = Task.new("title", "description")
    expect(the_description.description).to be_a String
  end

  it "Task is done" do
    the_description = Task.new("title", "description")
    expect(the_description.taskDone).to eq "done"
  end

end

describe TaskList do
  list_to_do = TaskList.new

  it "TaskList has to be real" do
    expect{TaskList.new}.to_not raise_error
  end

  it "list_tasks will print list" do
    # list_task = TaskList.new
    expect(list_to_do.list_tasks).to eq []
  end

  it "get completed items" do
    taskList = TaskList.new

    task1 = Task.new("T1","D1")
    task1.taskDone
    taskList.add_to_list(task1)

    task2 = Task.new("T2","D2")
    taskList.add_to_list(task2)

    expect(taskList.completed_items.length).to be > 0
  end

  it "get incomplete items" do
    taskList = TaskList.new
    
    task1 = Task.new("T1","D1")
    task1.taskDone
    taskList.add_to_list(task1)

    task2 = Task.new("T2","D2")
    taskList.add_to_list(task2)

    expect(taskList.incomplete_items.length).to be > 0
  end

  it "add_to_list will add tasks" do
    list_additions = TaskList.new
    task = Task.new("T1","D1")
    expect(list_additions.add_to_list(task).length.to_i).to be > 0
  end
end
