class Batch < ActiveRecord::Base
	has_many :courses
	has_many :sections
	has_many :time_table
end
