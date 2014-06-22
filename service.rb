require 'json'
require 'sinatra/base'


class UserService < Sinatra::Base
  users = [
  #        {id: 1, username: 'admin', password: 'security!'},
  #        {id: 2, username: 'user', password: 'password1'}
          ]

  get '/user' do
    content_type :json
    users.to_json
  end

  run! if app_file == $0
end
