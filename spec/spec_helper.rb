require 'rack/test'
require 'rspec'
require_relative '../app'

ENV['RACK_ENV'] = 'test'

RSpec.configure do |config|
  config.include Rack::Test::Methods
  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end

def app
  HelloApp
end
