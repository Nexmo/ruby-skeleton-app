require './app'
require 'rspec'
require 'rack/test'

RSpec.describe 'Nexmo Ruby skeleton app' do
  include Rack::Test::Methods

  let(:app) do
    Sinatra::Application
  end

  it 'returns a 204 when sending test SMS' do
    response = get '/test-sms'
    expect(response.status).to eql(204)
  end

  it 'returns a 204 for webhook POST request' do
    response = post '/webhooks/event'
    expect(response.status).to eql(204)
  end

  it 'returns a 204 for webhook GET request' do
    response = get '/webhooks/event'
    expect(response.status).to eql(204)
  end
end