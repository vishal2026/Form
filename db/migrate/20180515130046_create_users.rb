class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name, :null => true
      t.string :email
      t.integer :country_id
      t.integer :city_id

      t.timestamps
    end
  end
end
 