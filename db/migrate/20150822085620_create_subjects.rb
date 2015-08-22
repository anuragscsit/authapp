class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
      t.references :course, index: true, foreign_key: true
      t.references :faculty, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
