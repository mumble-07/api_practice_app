# frozen_string_literal: true

module Challonge
  # using RAWG API
  class Client
    def self.tournaments
      Request.call('get', '/tournaments.json')
    end

    def self.create_tournaments
      Request.call('post', '/tournaments.json')
    end
  end
end
