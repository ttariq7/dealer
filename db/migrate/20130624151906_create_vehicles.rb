class CreateVehicles < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|
      t.string :name
      t.integer :user_id
      t.string :mileage
      t.text :description
      t.string :year
      t.string :transmission
      t.string :doors
      t.string :fuel
      t.string :engine
      t.string :colour
      t.string :body
      t.string :model
      t.string :make
      t.string :price
      t.string :status

      t.timestamps
    end
    add_index :microposts, [:user_id, :created_at]
  end
end
