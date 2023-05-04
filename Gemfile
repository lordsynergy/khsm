source 'https://rubygems.org'

ruby '2.5.9'

gem 'devise'
gem 'devise-i18n'
gem 'font-awesome-rails'
gem 'jquery-rails'
gem 'rails_admin'
gem 'rails', '~> 4.2.6'
gem 'russian'
gem 'uglifier', '>= 1.3.0'
gem 'twitter-bootstrap-rails'

group :development, :test do
  gem 'sqlite3', '~> 1.3.13'
  gem 'byebug'
  gem 'rspec-rails', '~> 3.4'
  gem 'factory_bot_rails'
  gem 'shoulda-matchers'

  # Гем, который использует rspec, чтобы смотреть наш сайт
  gem 'capybara'

  # Гем, который позволяет смотреть, что видит capybara
  gem 'launchy'
end

group :production do
  gem 'rails_12factor'
  gem 'pg', '~> 0.15'
end
