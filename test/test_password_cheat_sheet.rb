# frozen_string_literal: true

require "test_helper"
require 'yaml' 
require_relative '../lib/password_cheat_sheet'

class TestPasswordCheatSheet < Minitest::Test
  def test_version_number
    refute_nil ::PasswordCheatSheet::VERSION
  end

  def test_it_does_something_useful
    password_data = <<~EOS
      -
        url: https://example.com 
        user: example_user  
        pass: example_pass
        desc: this is example site
      -
        url: https://test.com
        user: test_user
        pass: test_pass
        desc: this is test site
    EOS

    yml = YAML.load(password_data)
    html = PasswordCheatSheet::to_html(yml)

    assert html.length > 0
  end
end
