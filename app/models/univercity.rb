class Univercity < ActiveRecord::Base
	resourcify
	has_many :colleges
end
