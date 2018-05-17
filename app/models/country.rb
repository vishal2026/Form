class Country < ApplicationRecord
	
	has_many :cities, :foreign_key => :city_id 
	has_one :user, :foreign_key => :country_id

end
   