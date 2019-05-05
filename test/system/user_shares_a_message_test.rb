require "application_system_test_case"

class UserSharesAMessageTest < ApplicationSystemTestCase
  test "visiting the index" do
    content = "Hello, World!"

    visit root_path
    click_on "Share a Note"
    fill_in "Message", with: content
    click_on "Share"

    assert_text content
  end
end
