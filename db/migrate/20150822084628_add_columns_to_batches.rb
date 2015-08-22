class AddColumnsToBatches < ActiveRecord::Migration
  def change
    add_column :batches, :name, :string
    add_column :batches, :year, :string
  end
end
