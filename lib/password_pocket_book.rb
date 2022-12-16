# frozen_string_literal: true

require_relative "password_pocket_book/version"
require 'liquid'


module PasswordPocketBook
  class Error < StandardError; end

  def self.to_html(password_list)

    # フィルタの追加　
    # Liquid::Template.file_system = Liquid::LocalFileSystem.new('./')
    
    
    File.open(__dir__+"/password_pocket_book.liquid") do |f|
      template = Liquid::Template.parse(f.read)
      puts template.render( 'password_list' => password_list )
    end

  end


end
