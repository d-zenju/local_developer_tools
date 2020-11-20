# This file is used by Rack-based servers to start the application.

require ::File.expand_path('../config/environment',  __FILE__)
# run Rails.application

# サブディレクトリ設定
map ENV['RAILS_RELATIVE_URL_ROOT'] || '/' do
  run Rails.application
end
