class AddColumnsToTimeTables < ActiveRecord::Migration
  def change
    add_column :time_tables, :day, :string
    add_column :time_tables, :l1, :string
    add_column :time_tables, :l2, :string
    add_column :time_tables, :l3, :string
    add_column :time_tables, :l4, :string
    add_column :time_tables, :l5, :string
    add_column :time_tables, :l6, :string
    add_column :time_tables, :l7, :string
  end
end
