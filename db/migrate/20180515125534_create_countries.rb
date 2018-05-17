class CreateCountries < ActiveRecord::Migration[5.2]
  def change
    create_table :countries do |t|
      t.string :country_name
      t.timestamps
  	end
 #  	create_table :users do |t|
 #      t.belongs_to :countries	
 #      t.integer :country_id
	# end
	  # create_table :cities do |t|
   #    t.belongs_to :countries
   #    t.integer :country_id
   #  end   
  end
end
 