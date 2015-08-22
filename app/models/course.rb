class Course < ActiveRecord::Base
  belongs_to :batch
  has_many :subjects
  has_many :time_table
end
