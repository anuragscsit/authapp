class AddCityAndStateAndCountryToUnivercities < ActiveRecord::Migration
  def change
    add_column :univercities, :city, :string
    add_column :univercities, :state, :string
    add_column :univercities, :country, :string
  end
end
