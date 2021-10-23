class CreateSensors < ActiveRecord::Migration[6.1]
  def change
    create_table :sensors do |t|
      t.string :device
      t.string :temperature

      t.timestamps
    end
  end
end
