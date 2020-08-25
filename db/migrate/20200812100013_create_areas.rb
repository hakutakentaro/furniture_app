class CreateAreas < ActiveRecord::Migration[5.2]
  def change
    create_table :areas do |t|
      t.integer :put_depth
      t.integer :put_width
      t.references :room, foreign_key: true
      t.boolean :done, null: false, default: false

      t.timestamps
    end
  end
end
