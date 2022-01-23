class CreateWatchLists < ActiveRecord::Migration[6.1]
  def change
    create_table :watch_lists do |t|
      t.string :title
      t.string :type
      t.boolean :have_it

      t.timestamps
    end
  end
end
