class AddProductIdToProductCategories < ActiveRecord::Migration
  def change
    add_column :product_categories, :product_id, :integer
  end
end
