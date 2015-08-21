class College < ActiveRecord::Base
	extend FriendlyId

	resourcify
  belongs_to :univercity

  friendly_id :name, use: :slugged


end
