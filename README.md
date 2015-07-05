# Testing like the gods

### 1. Creates a rails app without testing framework (Minitest)

  > `$ rails new testing-like-the-gods -T`


### 2. Install rspec and Factory Girl


> Add `rspec-rails` to **both** the `:development` and `:test` groups in the
`Gemfile`:

```ruby
group :development, :test do
  gem 'rspec-rails', '~> 3.0'
  gem 'factory_girl_rails'
end
```

> Download and install by running:

```
bundle install
```

> Initialize the `spec/` directory (where specs will reside) with:

```
rails generate rspec:install
```

> This adds the following files which are used for configuration:

- `.rspec`
- `spec/spec_helper.rb`
- `spec/rails_helper.rb`

> Check the comments in each file for more information.

Use the `rspec` command to run your specs:

```
bundle exec rspec
```


### More info:

* [The RSpec Book](https://pragprog.com/book/achbd/the-rspec-book)
* [RSpec documetation and some screencasts](http://rspec.info/)
