# == Schema Information
#
# Table name: bookmarks
#
#  id         :integer          not null, primary key
#  text       :string
#  url        :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Bookmark < ApplicationRecord
end
