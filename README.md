# Testing like the gods

## VCR-webmock

### Installation

> Add vcr and webmock to :test and :development group in the Gemfile:

```ruby
group  :test, :development do
  gem 'vcr'
  gem 'webmock'
end
```

> Download and install by running:

```
bundle install
```

Add a support file

spec/support/vcr_setup.rb
```ruby
VCR.configure do |c|
  c.cassette_library_dir = 'spec/vcr'
  c.hook_into :webmock
  c.configure_rspec_metadata!
end

```

Add :vcr to your tests

> Use rspec command as usual


### More info:

* [webmock](https://github.com/bblimke/webmock)
* [VCR](https://github.com/vcr/vcr)

