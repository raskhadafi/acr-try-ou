require 'spec_helper'

RSpec.describe 'HelloApp' do
  it 'returns hello on root' do
    get '/'
    expect(last_response).to be_ok
    expect(last_response.body).to include('Hello from Sinatra + ARC!')
  end
end
