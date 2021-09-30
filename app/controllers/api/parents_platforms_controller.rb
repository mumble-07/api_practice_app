module Api
  class ParentsPlatformsController < ApplicationController
    def index
      parents_platforms = Rawg::Client.parents_platforms

      render json: parents_platforms
    end  
  end
end