require 'json'
require 'sinatra'

users = [
        {id: 1, username: 'admin', password: 'security!'},
        {id: 2, username: 'user', password: 'password1'}
]

get '/user' do
  users.to_json
end
