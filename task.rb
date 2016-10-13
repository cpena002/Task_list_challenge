# Create a class "Task" so users can create anything they need to do.
class Task

  # Initialize the instance variables
  def initialize title, description
    @title = title
    @description = description
    @status = false
  end

  # Return the task title
  def title
    @title
  end

  # Return the description for the task title
  def description
    @description
  end

  # Allow user to mark task as status (true) or not status (false).
  def status= true_or_false
    @status = true_or_false
  end

  # Return status of task.
  def status
    @status
  end

  # Return string with (features) title, description, and status instance variables
  def return_features
    "Title: #{@title}, Description: #{@description}, Status? #{@status}"
  end

end

# task = Task.new("wash_car", "Item 1, item 2")
