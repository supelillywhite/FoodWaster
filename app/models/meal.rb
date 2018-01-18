class Meal < ActiveRecord::Base
  belongs_to :user
  validates_presence_of :date, :description, :quantity, :category, :location_address
end
