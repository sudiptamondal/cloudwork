class CreateProperties < ActiveRecord::Migration[6.1]
  def change
    create_table :properties do |t|
      t.string :key
      t.string :value
      t.string :desc

      t.timestamps
    end
  end
end
