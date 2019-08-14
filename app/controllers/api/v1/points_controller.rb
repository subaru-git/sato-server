module Api
  module V1
    class PointsController < ApplicationController
      before_action :authenticate_api_user!
      def members_only
        render json: {
          data: {
            message: "Welcome #{current_api_user.name}",
            user: current_api_user
          }
        }, status: 200
      end
    end
  end
end
