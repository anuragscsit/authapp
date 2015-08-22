class Section < ActiveRecord::Base
  belongs_to :batch
  has_one :time_table
end
