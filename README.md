# Testing like the gods

## Shoulda Matchers

### Install

Include `shoulda-matchers` in your Gemfile:

``` ruby
group :test do
  gem 'shoulda-matchers', require: false
end
```

> Download and install by running:

```
bundle install
```

Then require the gem following rspec-rails in your rails_helper (or spec_helper
if you're using RSpec 2.x):

``` ruby
require 'rspec/rails'
require 'shoulda/matchers'
```


### More info:

* [matchers.shoulda.io](http://matchers.shoulda.io/)
* [shoulda-matchers](https://github.com/thoughtbot/shoulda-matchers)
