class Country < ApplicationRecord
	has_many :city #,foreign_key :'country_id' 
	has_one :user #,foreign_key :'country_id'

end
  