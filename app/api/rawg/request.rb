# frozen_string_literal: true

module Rawg
  # request to API rawg
  class Request
    TOKEN = Rails.application.credentials.api[:RAWG_API_TOKEN]
    BASE_URL = 'https://api.rawg.io/api'

    def self.call(http_method, endpoint)
      result = RestClient::Request.execute(
        method: http_method,
        url: "#{BASE_URL}#{endpoint}?key=#{TOKEN}",
        headers: { 'Content-Type' => 'application/json' }
      )

      { code: result.code, status: 'Success', data: JSON.parse(result.body) }
    rescue RestClient::ExceptionWithResponse => e
      { code: e.http_code, status: e.message, data: Errors.map(e.http_code) }
    end
  end
end
