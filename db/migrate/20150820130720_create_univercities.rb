class CreateUnivercities < ActiveRecord::Migration
  def change
    create_table :univercities do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
