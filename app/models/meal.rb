class Meal < ApplicationRecord
  validates_presence_of :date, :description, :quantity, :category, :location_area, :thumb_image, :main_image, :status, :location_address, :karma
end
