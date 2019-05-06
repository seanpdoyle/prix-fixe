require "application_system_test_case"

class UserDiscoversANoteTest < ApplicationSystemTestCase
  test "from the root" do
    content = "Hello, World"
    Note.create!(content: content)

    visit notes_path

    assert_text content
  end
end
