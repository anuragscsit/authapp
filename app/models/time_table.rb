class TimeTable < ActiveRecord::Base
  belongs_to :section
  belongs_to :course
  belongs_to :batch
end
