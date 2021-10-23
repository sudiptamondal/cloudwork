class Api::V1::SensorsController < ApplicationController

    protect_from_forgery with: :null_session
    def index
        @sensors = Sensor.all
        render json: @sensors, status: 200
    end

    def create
        @sensor = Sensor.new(sensor_params)
        if @sensor.save
            render json: @sensor
        else
            render error: { error: "Unable to create User."}, status: 400
        end

    end

    private
        def sensor_params
            params.require(:sensor).permit(:device, :temperature)
        end

end