require "test_helper"

class NotesControllerTest < ActionDispatch::IntegrationTest
  test "#create persists a Note record" do
    content = "Hello, World"

    post notes_path, params: { content: content }

    assert_response :success
    assert_equal Note.pluck(:content), [content]
  end
end
