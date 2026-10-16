require "application_system_test_case"

class TasksTest < ApplicationSystemTestCase
  test "creating a task and marking it done" do
    visit root_url

    click_on "New task"
    fill_in "Title", with: "Walk the dog"
    click_on "Create Task"

    assert_text "Task was successfully created"
    assert_text "Walk the dog"
    assert_text "false"

    click_on "Mark done"

    assert_text "Task was successfully updated"
    assert_text "true"
    assert_no_button "Mark done"
  end
end
