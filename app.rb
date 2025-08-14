require 'sinatra'

class HelloApp < Sinatra::Base
  get '/' do
    'Hello from Sinatra + ARC!'
  end
end

# For rackup to find the app when running `rackup`
run HelloApp if __FILE__ == $0
