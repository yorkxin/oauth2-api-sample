# Guard API with OAuth 2.0 Access Token

require 'rack/oauth2'

module APIGuard
  extend ActiveSupport::Concern

  included do
    # OAuth2 Resource Server Authentication
    use Rack::OAuth2::Server::Resource::Bearer, 'The API' do |request|
      # The authenticator only fetches the raw token string

      # Must yield access token to store it in the env
      request.access_token
    end

    helpers HelperMethods
  end

  # Helper Methods for Grape Endpoint
  module HelperMethods
  end

  module ClassMethods
  end
end