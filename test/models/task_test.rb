require "test_helper"

class TaskTest < ActiveSupport::TestCase
  test "title is required" do
    task = Task.new(title: "   ")

    assert_not task.valid?
    assert_includes task.errors[:title], "can't be blank"
  end

  test "completed defaults to false" do
    task = Task.new(title: "Buy milk")

    assert_equal false, task.completed
    assert task.save
    assert_equal false, task.reload.completed
  end

  test "a task with a title is valid" do
    task = Task.new(title: "Write tests", completed: true)

    assert task.valid?
  end
end
