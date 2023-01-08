# frozen_string_literal: true

require_relative "password_cheat_sheet/version"
require 'liquid'


module PasswordCheatSheet
  class Error < StandardError; end

  def self.to_html(password_list)
    out =File.open(__dir__+"/password_cheat_sheet.liquid") do |f|
      template = Liquid::Template.parse(f.read)
      template.render( 'password_list' => password_list )
    end
    return out
  end


end
