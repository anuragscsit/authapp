class AddDetailToProducts < ActiveRecord::Migration
  def change
    add_column :products, :detail, :text
  end
end
