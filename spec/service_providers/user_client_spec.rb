require './spec/service_providers/pact_helper'
require './client'

# Use the :pact => true describe metadata to include all the pact generation functionality in your spec.
describe Client, :pact => true do

  before do
    # Configure your client to point to the stub service on localhost using the port you have specified
    Client.base_uri 'localhost:12345'
  end

  subject { Client.new }

  describe "list_users" do

    before do
      my_service_provider.given("no users").
        upon_receiving("a request for the user list").with(method: :get, path: '/user').
        will_respond_with(
          status: 200,
          headers: {'Content-Type' => 'application/json'},
          body: [])
    end

    it "returns a empty list" do
      expect(subject.list_users).to eq([])
    end

  end

end
