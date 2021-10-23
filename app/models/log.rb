# == Schema Information
#
# Table name: logs
#
#  id         :integer          not null, primary key
#  level      :string
#  text       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Log < ApplicationRecord
    def debug text
        Log.create!(level: "DEBUG", text: text)
    end
    def warn text
        Log.create!(level: "WARN", text: text)
    end
    def info text
        Log.create!(level: "INFO", text: text)
    end
    def error text
        Log.create!(level: "error", text: text)
    end
end
