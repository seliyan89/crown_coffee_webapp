class Product < ApplicationRecord
      has_many :order
      has_and_belongs_to_many :variations
end
