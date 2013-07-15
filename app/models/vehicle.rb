class Vehicle < ActiveRecord::Base
  attr_accessible :body, :colour, :description, :doors, :engine, :fuel, :make, :mileage, :model, :name, :price, :status, :transmission, :user_id, :year, :img1, :img2, :img3, :img4, :img5, :img6

  belongs_to :user
  mount_uploader :img1, ImageUploader
  mount_uploader :img2, ImageUploader
  mount_uploader :img3, ImageUploader
  mount_uploader :img4, ImageUploader
  mount_uploader :img5, ImageUploader
  mount_uploader :img6, ImageUploader

  validates :user_id, presence: true 

  default_scope order: 'vehicles.price DESC' 

end

