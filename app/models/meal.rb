class Meal < ApplicationRecord
  validates_presence_of :date, :description, :quantity, :category, :location_area, :thumb_image, :main_image, :status, :location_address, :karma
end

t.date "date"
    t.string "title"
    t.text "description"
    t.integer "quantity"
    t.string "category"
    t.string "location_area"
    t.text "thumb_image"
    t.text "main_image"
    t.string "status"
    t.text "location_address"
    t.integer "karma"