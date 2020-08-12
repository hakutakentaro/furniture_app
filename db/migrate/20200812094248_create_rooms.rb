class CreateRooms < ActiveRecord::Migration[5.2]
  def change
    create_table :rooms do |t|
      t.string :room_name
      t.integer :room_depth
      t.integer :room_width

      t.timestamps
    end
  end
end
