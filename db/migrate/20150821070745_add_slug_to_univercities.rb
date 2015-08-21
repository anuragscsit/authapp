class AddSlugToUnivercities < ActiveRecord::Migration
  def change
    add_column :univercities, :slug, :string
  end
end
