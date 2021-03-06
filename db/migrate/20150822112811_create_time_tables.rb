class CreateTimeTables < ActiveRecord::Migration
  def change
    create_table :time_tables do |t|
      t.references :section, index: true, foreign_key: true
      t.references :course, index: true, foreign_key: true
      t.references :batch, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
