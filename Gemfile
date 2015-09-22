source 'https://rubygems.org'

# - Core ----------------------------------------------------------------------#
gem 'rails', '4.2.4'
gem 'rails-api'
gem 'pg'

# - API formatting ------------------------------------------------------------#
gem 'active_model_serializers', github: 'rails-api/active_model_serializers'

# - Development ---------------------------------------------------------------#
group :development do
  gem 'spring'
  gem 'spring-commands-rspec'
end

# - Test ----------------------------------------------------------------------#
group :test do
  gem 'shoulda-matchers', require: false
  gem 'codeclimate-test-reporter', require: false
end

# - Development / Test --------------------------------------------------------#
group :development, :test do
  gem 'rspec-rails', '~> 3.0'
  gem 'faker'
  gem 'awesome_print'
end
