require 'pact/consumer/rspec'

Pact.service_consumer "My Service Consumer" do
  has_pact_with "My Service Provider" do
    mock_service :my_service_provider do
      port 12345
    end
  end
end
