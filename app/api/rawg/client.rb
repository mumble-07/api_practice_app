# frozen_string_literal: true

module Rawg
  # using RAWG API
  class Client
    def self.creator_roles
      Request.call('get', '/creator-roles')
    end

    def self.developers
      Request.call('get', '/developers')
    end

    def self.games
      Request.call('get', '/games')
    end

    def self.genres
      Request.call('get', '/genres')
    end

    def self.platforms
      Request.call('get', '/platforms')
    end

    def self.parents_platforms
      Request.call('get', '/platforms/lists/parents')
    end

    def self.publishers
      Request.call('get', '/publishers')
    end

    def self.stores
      Request.call('get', '/stores')
    end
  end
end
