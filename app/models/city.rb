class City < ApplicationRecord
	
	has_one :user
	belongs_to :country

end
  