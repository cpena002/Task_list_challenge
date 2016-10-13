# Call gem and relative file(s).
require 'rspec'
require_relative 'task'

# Begin test with class name.
describe 'Task' do

  # Test that a new instance of Task doesn't raise errors.
  it "is a thing" do
    expect{Task.new("wash_car", "collect items, get quarters")}.to_not raise_error
  end

  # Test that the title is a STRING and matches the argument.
  it "has a title" do

    # Creates new instance of class Task with an argument.
    task = Task.new("wash_car", "collect items, get quarters")

    # Test that argument is a STRING.
    expect(task.title).to be_a String

    # Test that the passed argument equals the title given to the Task.
    expect(task.title).to eq "wash_car"
  end

  # Test that the title has a description
  it "(title) has a description" do
    task = Task.new("wash_car", "collect items, get quarters")

    # Test that the description of title equals an empty array.
    expect(task.description).to be_a String
  end

  # Test whether task is complete
  it "(task) is done" do
    task = Task.new("wash_car", "collect items, get quarters")

    # Test that instance variable 'status' is false
    expect(task.status).to eq false

    # Change value of 'status' to true
    task.status = true

    # Test that instance variable 'status' is true
    expect(task.status).to eq true
  end

  # Test that the 'Task' features are in String format
  it "returns the features in class 'Task'" do
    task = Task.new("wash_car", "collect items, get quarters")
    expect(task.return_features.class).to eq String
  end
#task = Task.new("wash_car")

end
