class AddColumnsinAddress < ActiveRecord::Migration[6.0]
  def change
    if ActiveRecord::Base.connection.table_exists?('addresses')
     add_column :addresses, :receiver_name, :string
     add_column :addresses, :receiver_phone, :string
     add_column :addresses, :receiver_pin_code, :string
     add_column :addresses, :receiver_city, :string
     add_column :addresses, :receiver_state, :string
    else
      create_table :addresses do |t|
        t.float :latitude
        t.float :longitude
        t.string :complete_address
        t.string :address_type
        t.string :floor
        t.boolean :default_address
        t.string :receiver_name
        t.string :receiver_phone
        t.string :receiver_pin_code
        t.string :receiver_city
        t.string :receiver_state
      end
      add_reference :addresses, :user, index: true, foreign_key: true
    end
  end
end
