require 'rspec'
require_relative 'task'
require_relative 'tasklist'

#  Test that a new instance of Tasklist doesn't raise errors.
describe Tasklist do

   #Test that a new instance of tasklist doesn't raise errors.
  it "Is a thing" do
  expect{Tasklist.new}.to_not raise_error
  end


  it "Contains tasks" do
    tasklist = Tasklist.new

    # Create a two new instances of tasks (two objects)
    wash_car = Task.new("Wash car", "Collect items, Get quarters")
    groceries = Task.new("Grocery list", "Milk, Cash back")

    # Shovel the two new created instances of tasks into the array
    tasklist.list << wash_car << groceries

    # Test that the two created instances were sucessfully added into the array
    expect(tasklist.list).to include wash_car, groceries
  end

  it "Returns the completed & not completed tasks" do
    tasklist = Tasklist.new

    # Create a two new instances of tasks (two objects)
    wash_car = Task.new("Wash car", "Collect items, Get quarters")
    groceries = Task.new("Grocery list", "Milk, Cash back")

    # Change value of instance variable 'status' to true/false
    wash_car.status = true
    groceries.status = false

    # Shovel the two new created instances of tasks into the array
    tasklist.list << wash_car << groceries

    # test if task 'wash_car' was shoveled into the array found in the method 'status_task'.
    expect(tasklist.done_task.length).to eq 1

    # test if task 'groceries' was shoveled into the array found in the method 'not_done_task'.
    expect(tasklist.not_done_task.length).to eq 1

  end

end
