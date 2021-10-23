class CreateLogs < ActiveRecord::Migration[6.1]
  def change
    create_table :logs do |t|
      t.string :level
      t.string :text

      t.timestamps
    end
  end
end
