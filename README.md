# Testing like the gods

## parallel_tests

### Installation

> Add parallel_tests to :development group in the Gemfile:

```ruby
group  :development do
  gem "parallel_tests"
end
```

> Download and install by running:

```
bundle install
```

Add to `config/database.yml` file:

```
test:
  database: yourproject_test<%= ENV['TEST_ENV_NUMBER'] %>
```


> Create and migrate new dbs

bundle exec rake parallel:create

bundle exec rake parallel:prepare


> Run with:

bundle exec rake parallel:spec

### More info:

* [parallel_tests](https://github.com/grosser/parallel_tests)

