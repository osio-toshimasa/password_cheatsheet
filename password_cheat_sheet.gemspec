# frozen_string_literal: true

require_relative "lib/password_cheat_sheet/version"

Gem::Specification.new do |spec|
  spec.name = "password_cheatsheet"
  spec.version = PasswordCheatSheet::VERSION
  spec.authors = ["oco"]
  spec.email = ["osio.toshimasa@gmail.com"]

  spec.summary = "Password Cheat Sheet is useful for website user and password list storage and use."
  spec.description = "Generates HTML data for passwords from Hash data. This Gem does not have a security feature to protect passwords, so it is designed to be used only for yourself on your local PC."
  spec.homepage = "https://github.com/osio-toshimasa/password_cheatsheet"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"


  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/osio-toshimasa/password_cheatsheet"
  spec.metadata["changelog_uri"] = "https://github.com/osio-toshimasa/password_cheatsheet/blob/master/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__.to_s)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
