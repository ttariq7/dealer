class CreateMicroposts < ActiveRecord::Migration
  def change
    create_table :microposts do |t|
      t.string :content
      t.string :email
      t.string :tel
      t.string :name

      t.timestamps
    end
  end
end
