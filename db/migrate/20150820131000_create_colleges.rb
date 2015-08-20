class CreateColleges < ActiveRecord::Migration
  def change
    create_table :colleges do |t|
      t.string :name
      t.references :univercity, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
