require 'dotenv/load'
require 'sinatra'
require 'sinatra/multi_route'
require 'nexmo'
require 'json'

before do
  content_type :json
end

helpers do
  def parsed_body
     json? ? JSON.parse(request.body.read) : {}
  end

  def json?
    request.content_type == 'application/json'
  end
end

route :get, :post, '/webhooks/event' do
  puts params.merge(parsed_body)
  status 204
end

route :get, '/test-sms' do
  client = Nexmo::Client.new(
    api_key: ENV['NEXMO_API_KEY'],
    api_secret: ENV['NEXMO_API_SECRET']
  )
  response = client.sms.send(
    from: ENV['FROM_NUMBER'],
    to: ENV['TO_NUMBER'],
    text: 'This is a test SMS of my Nexmo Ruby skeleton app.'
  )
  puts response.inspect
  status 204
end

set :port, 3000