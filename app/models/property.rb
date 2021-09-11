# == Schema Information
#
# Table name: properties
#
#  id         :integer          not null, primary key
#  key        :string
#  value      :string
#  desc       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Property < ApplicationRecord
	def self.get var
		Property.where(key: var).first.value
	end
end
