class AddImg1AndImg2AndImg3AndImg4AndImg5AndImg6ToVehicles < ActiveRecord::Migration
  def change
    add_column :vehicles, :img1, :string
    add_column :vehicles, :img2, :string
    add_column :vehicles, :img3, :string
    add_column :vehicles, :img4, :string
    add_column :vehicles, :img5, :string
    add_column :vehicles, :img6, :string
  end
end
