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

      def send_point
        point = Point.new(from_id: current_api_user.id, to_id: params[:to], point: params[:point])
        point.save
        render json: {
          data: {
            message: "send #{params[:point]} points to #{params[:to]}"
          }
        }, status: 200
      end

      def history
        history = []
        case params[:rule]
        when 'from' then
          history = User.find_by(name: params[:name]).from_points
        when 'to' then
          history = User.find_by(name: params[:name]).to_points
        when 'from-to' then
          history = Point.find_by(from_id: current_api_user.id, to_id: current_api_user.id)
        else
          history = Point.all()
        end
        render json: {
          data: {
            history: history
          }, status: 200
        }
      end
    end
  end
end
