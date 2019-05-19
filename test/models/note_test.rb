require 'test_helper'

class NoteTest < ActiveSupport::TestCase
  test "validates content is present" do
    note = Note.new

    valid = note.validate

    assert_equal valid, false
    assert_equal note.errors[:content], [translate("errors.messages.blank")]
  end
end
