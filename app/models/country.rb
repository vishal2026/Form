class Country < ApplicationRecord
	has_many :cities
	has_one :user
end
   