module DashboardHelper
	def pi_temp
		if @pi_temp.to_i > 60
			temp_class="bg-danger"
			font_color="white"
		elsif @pi_temp.to_i > 50 and @pi_temp.to_i <= 60
			temp_class="bg-warning"
			font_color="white"
		elsif @pi_temp.to_i < 50
			temp_class="bg-light"
			font_color="black"
		else
			temp_class="bg-secondary"
			font_color="white"
		end
			
			
		content_tag(
				:div,
				content_tag(
					:div,
					"Rasperry Pi running @ #{@pi_temp}",
					class: "card-body",
					style: "color: #{font_color}"
				),
				class: "card #{temp_class} text-white shadow"
			)
			      
	end
end
