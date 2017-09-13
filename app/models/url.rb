class Url < ApplicationRecord
    validates :url, :description, presence: true, length: {minimum: 2}    
    belongs_to :category, optional: true
end
