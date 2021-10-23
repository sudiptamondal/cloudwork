class SensorsController < InheritedResources::Base

  private

    def sensor_params
      params.require(:sensor).permit(:device, :temperature)
    end

end
