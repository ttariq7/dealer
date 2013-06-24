class Vehicle < ActiveRecord::Base
  attr_accessible :body, :colour, :description, :doors, :engine, :fuel, :make, :mileage, :model, :name, :price, :status, :transmission, :user_id, :year
end
