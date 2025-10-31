class Product < ApplicationRecord
    has_many :comments
    validates :name, :price, presence: true
end
