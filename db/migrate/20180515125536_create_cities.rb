class CreateCities < ActiveRecord::Migration[5.2]
  def change
    create_table :cities do |t|
      t.string :city_name
      t.integer :country_id

      t.timestamps
    end
    # create_table :users do |t|
    #   t.belongs_to :cities 
    #   t.integer :city_id
    # end
  end
end
 