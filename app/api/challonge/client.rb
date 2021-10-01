# frozen_string_literal: true

module Challonge
  # using RAWG API
  class Client
    def self.tournaments
      Request.call('get', '/tournaments.json')
    end
  end
end
