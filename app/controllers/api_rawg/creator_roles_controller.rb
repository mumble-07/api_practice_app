# frozen_string_literal: true

module ApiRawg
  # rawg creator roles
  class CreatorRolesController < ApplicationController
    def index
      creator_roles = Rawg::Client.creator_roles
      creator_roles.each do |creator|
      
      end
      render json: creator_roles
      # render json: creator_roles # , only: [:name]
    end
  end
end
