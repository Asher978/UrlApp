class Category < ApplicationRecord
    validates :name, :description, presence: true, length: {minimum: 2}
    has_many :urls
end
