require 'test_helper'

class NoteTest < ActiveSupport::TestCase
  test "NOT NULL database constraint on notes.content" do
    note = Note.new

    exercise = -> { note.save! }

    assert_raises(ActiveRecord::NotNullViolation, /content/, &exercise)
  end
end
