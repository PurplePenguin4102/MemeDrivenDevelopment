# This file is used by Rack-based servers to start the application.

require_relative 'config/environment'

if Rails.env.production?
    map '/memes' do
      run Rails.application
    end
else
    run Rails.application
end