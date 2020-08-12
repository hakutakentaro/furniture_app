class CreateAreas < ActiveRecord::Migration[5.2]
  def change
    create_table :areas do |t|
      t.integer :put_depth
      t.integer :put_width

      t.timestamps
    end
  end
end
