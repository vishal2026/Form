class City < ApplicationRecord
	
	has_one :user, :foreign_key => :city_id 
	belongs_to :country, :foreign_key => :country_id

end
  