require "application_system_test_case"

class UserSharesAMessageTest < ApplicationSystemTestCase
  test "visiting the index" do
    content = "Hello, World!"

    visit root_path
    click_on translate("notes.index.new")
    fill_in translate("helpers.label.note.content"), with: content
    click_on translate("helpers.submit.note.create")

    assert_text content
  end
end
