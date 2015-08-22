class Subject < ActiveRecord::Base
  belongs_to :course
  belongs_to :faculty
end
