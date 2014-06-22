require 'httparty'

class Client
  include HTTParty

  base_uri 'http://localhost:4567'

  def list_users
    JSON.parse(self.class.get("/user").body)
  end
end
