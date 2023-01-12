# PasswordCheatSheet

Password Cheat Sheet is useful for website user and password list storage and use.
Generates HTML data for passwords from Hash data. This Gem does not have a security feature to protect passwords, so it is designed to be used only for yourself on your local PC.

The generated HTML will access the following third-party libraries.
* bootstrap.min.css
* bootstrap-icons.css
* stimulus.js

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'password_cheatsheet'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install password_cheatsheet

## Usage

```ruby
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
    File.write('out.html', html)
```

Output HTML
![OutputHTMLImage](./output.png)

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).