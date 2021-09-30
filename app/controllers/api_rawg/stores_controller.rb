# frozen_string_literal: true

module ApiRawg
  # rawg stores
  class StoresController < ApplicationController
    def index
      stores = Rawg::Client.stores

      render json: stores
    end
  end
end
