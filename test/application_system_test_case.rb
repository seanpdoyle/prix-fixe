require "test_helper"

class ApplicationSystemTestCase < ActionDispatch::SystemTestCase
  driven_by :selenium, using: :headless_chrome, screen_size: [1400, 1400]

  setup do
    Rails.configuration.allow_forgery_protection = true
  end

  teardown do
    Rails.configuration.allow_forgery_protection = false
  end
end
