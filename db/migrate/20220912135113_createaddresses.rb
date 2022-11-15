class Createaddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :addresses do |t|
      t.float :latitude
      t.float :longitude
      t.string :complete_address
      t.integer :address_type
      t.string :floor
       t.boolean :default_address
    end
    add_reference :addresses, :user, index: true, foreign_key: true
  end
end
