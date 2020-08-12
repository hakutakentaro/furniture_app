class CreateFurnitures < ActiveRecord::Migration[5.2]
  def change
    create_table :furnitures do |t|
      t.string :furniture_name
      t.binary :furniture_image
      t.integer :furniture_depth
      t.integer :furniture_width

      t.timestamps
    end
  end
end
