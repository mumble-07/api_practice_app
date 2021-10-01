module Challonge
  # request to API challonge
  class Request
    BASE_URL = 'https://api.challonge.com/v2'

    def self.call(http_method, endpoint)
      result = RestClient::Request.execute(
        method: http_method,
        url: "#{BASE_URL}#{endpoint}",
        headers: { 'Content-Type' => 'application/vnd.api+json',
                   'Accept' => 'application/json',
                   'Authorization-Type' => 'v1',
                   'Authorization' => Rails.application.credentials.challonge_api[:AUTHORIZATION_KEY] }
      )

      { code: result.code, status: 'Success', data: JSON.parse(result.body) }
      # rescue RestClient::ExceptionWithResponse => e
      # { code: e.http_code, status: e.message, data: Errors.map(e.http_code) }
    end
  end
end
