require "application_system_test_case"

class UserSharesAMessageTest < ApplicationSystemTestCase
  test "visiting the index" do
    content = "Hello, World!"

    visit root_url
    click_on I18n.translate("notes.index.new")
    fill_in I18n.translate("helpers.label.note.content"), with: content
    click_on I18n.translate("helpers.submit.note.create")

    assert_text content
  end
end
