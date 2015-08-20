class RemoveCollegeIdToUnivercities < ActiveRecord::Migration
  def change
    remove_column :univercities, :college_id, :integer
  end
end
