class DashboardController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @pi_temp = Sensor.where(device: "pi").order(created_at: :desc).limit(1).first.temperature
  end
end
