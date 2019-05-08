require "test_helper"

class NotesControllerTest < ActionDispatch::IntegrationTest
  test "#create persists a Note record" do
    content = "Hello, World"

    post notes_path, params: { content: content }

    assert_equal Note.pluck(:content), [content]
  end

  test "#create redirects to /notes" do
    note_attributes = { content: "Hello, World" }

    post notes_path, params: note_attributes

    assert_redirected_to notes_url
  end

  test "#create with invalid data responds with unprocessable entity" do
    note_attributes = {}

    post notes_path, params: note_attributes

    assert_response :unprocessable_entity
  end
end
