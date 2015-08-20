class AddCityAndStateToColleges < ActiveRecord::Migration
  def change
    add_column :colleges, :city, :string
    add_column :colleges, :state, :string
  end
end
