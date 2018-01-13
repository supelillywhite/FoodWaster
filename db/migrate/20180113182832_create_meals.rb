class CreateMeals < ActiveRecord::Migration[5.1]
  def change
    create_table :meals do |t|
      t.date :date
      t.string :title
      t.text :description
      t.integer :quantity
      t.string :category
      t.string :location_area
      t.text :thumb_image
      t.text :main_image
      t.string :status
      t.text :location_address
      t.integer :karma

      t.timestamps
    end
  end
end
