class Api::V1::StrokesController < ApplicationController
  def index
    render json:Stroke.all
  end

  def create
    stroke = Stroke.create!(stroke_params)
    render json: stroke, status: :created
  end

  private

  def stroke_params
    params.require(:stroke).permit(:user_id, :country_code, :touched_at)
  end
end