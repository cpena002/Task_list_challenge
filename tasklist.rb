class Tasklist < Task

  # Create empty array to store tasks.
  def initialize
    @list = []
  end

  #  Return all the elements in the array.
  def list
    @list
  end

  # Store tasks that are marked as true (completed) into an array.
  def done_task

    # Array to store tasks marked as true (completed).
    completed = []

    # Loop through each element in @list array.
    @list.each do |task|

      # Check if value of instance varialbe @status equals true.
      if task.status == true

        # Shovel tasks that have instance varialbe @status set to true into the 'completed' array.
        completed << task
      end
    end
    # Return elements in the array.
    completed
  end

  # Store tasks that are marked as false (not_completed) into an array.
  def not_done_task

    # Array to store tasks marked as false (not_completed).
    not_completed = []

    #  Loop through each element in @list array.
    @list.each do |task|

      # Check if value of instance varialbe @status equals false.
      if task.status == false

        # Shovel tasks that have instance varialbe @status set to false into the 'not_completed' array.
        not_completed << task
      end
    end

    # Return elements in the array.
    not_completed
  end
end
