class Univercity < ActiveRecord::Base
	extend FriendlyId
	
	resourcify
	has_many :colleges

	friendly_id :name, use: :slugged

end
