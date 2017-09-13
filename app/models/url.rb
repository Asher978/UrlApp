class Url < ApplicationRecord
    validates :name, :description, presence: true, length: {minimum: 2}
    validates :url, :format => URI::regexp(%w(http https))
    belongs_to :category, optional: true
end
