class AddAd1AndAd2AndAb1AndAb2AndCountyAndPostcodeAndTel1AndTel2ToUsers < ActiveRecord::Migration
  def change
    add_column :users, :ad1, :string
    add_column :users, :ad2, :string
    add_column :users, :ab1, :text
    add_column :users, :ab2, :text
    add_column :users, :county, :string
    add_column :users, :postcode, :string
    add_column :users, :tel1, :string
    add_column :users, :tel2, :string
  end
end
