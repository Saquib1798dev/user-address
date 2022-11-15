class User < ApplicationRecord
  self.table_name = :users
  has_many :addresses
  # enum address_type: [:home, :work, :other]
end

