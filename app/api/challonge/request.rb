module Challonge
  # request to API challonge
  class Request
    # TOKEN = Rails.application.credentials.api[:AUTHORIZATION_KEY]
    BASE_URL = 'https://api.challonge.com/v2'

    def self.call(http_method, endpoint)
      result = RestClient::Request.execute(
        method: http_method,
        url: "#{BASE_URL}#{endpoint}",
        headers: { 'Content-Type' => 'application/vnd.api+json',
                   'Accept' => 'application/json',
                   'Authorization-Type' => 'v1',
                   'Authorization' => '8L5SHkjcQgIgAN1YkSspVNaTMsy1PolUKAjhyqLf' }
      )

      { code: result.code, status: 'Success', data: JSON.parse(result.body) }
    rescue RestClient::ExceptionWithResponse => e
      { code: e.http_code, status: e.message, data: Errors.map(e.http_code) }
    end
  end
end
