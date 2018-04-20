require 'Date'
require_relative 'tasklist'

class TaskDate < Task
  attr_accessor :due_date
  def initialize(title, description, due_date)
    super(title, description)
    @due_date = due_date
  end
end
