source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.1.1'

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem 'rails', "~> 7.0.2", ">= 7.0.2.3"

gem 'sprockets-rails'
gem 'pg', '~> 1.1'
gem 'puma', '~> 5.0'
gem 'importmap-rails'
gem 'turbo-rails'
gem 'stimulus-rails'
gem 'tailwindcss-rails'
gem 'jbuilder'
gem 'redis', '~> 4.0'
gem 'tzinfo-data', platforms: %i[ mingw mswin x64_mingw jruby ]
gem 'bootsnap', require: false
gem 'enumerate_it', '~> 3.2', '>= 3.2.2'
gem 'cpf_cnpj', '~> 0.5.0'
gem 'simple_form', '~> 5.1'
gem 'simple_form-tailwind', '~> 0.1.1'
gem 'devise', '~> 4.8', '>= 4.8.1'
gem 'breadcrumbs_on_rails', '~> 3.0', '>= 3.0.1'

# Use Kredis to get higher-level data types in Redis [https://github.com/rails/kredis]
# gem "kredis"

# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
# gem "bcrypt", "~> 3.1.7"
# Use Sass to process CSS
# gem 'sassc-rails'

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
# gem 'image_processing', "~> 1.2"

group :development, :test do
  gem 'debug', platforms: %i[ mri mingw x64_mingw ]
  gem 'pry-byebug', '~> 3.9'
  gem 'rspec-rails', '~> 5.1', '>= 5.1.1'
  gem 'factory_bot_rails', '~> 6.2'
  gem 'ffaker', '~> 2.21'
end

group :development do
  gem 'web-console'
end

group :test do
  gem 'capybara', '~> 3.36'
  gem 'selenium-webdriver', '~> 4.1'
  gem 'webdrivers', '~> 5.0'
  gem 'shoulda-matchers', '~> 5.0'
end
