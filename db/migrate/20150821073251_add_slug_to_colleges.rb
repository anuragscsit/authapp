class AddSlugToColleges < ActiveRecord::Migration
  def change
    add_column :colleges, :slug, :string
  end
end
