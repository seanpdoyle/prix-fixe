require "test_helper"

class NotesControllerTest < ActionDispatch::IntegrationTest
  test "#create persists a Note record" do
    content = "Hello, World"

    post notes_path, params: { content: content }

    assert_equal Note.pluck(:content), [content]
  end

  test "#create redirects to /notes" do
    notes_attributes = { content: "Hello, World" }

    post notes_path, params: notes_attributes

    assert_redirected_to notes_url
  end
end
