require "test_helper"

Webdrivers::Chromedriver.required_version = '83.0.4103.39'


class ApplicationSystemTestCase < ActionDispatch::SystemTestCase
  driven_by :selenium, using: :headless_chrome, screen_size: [1400, 1400]
end
