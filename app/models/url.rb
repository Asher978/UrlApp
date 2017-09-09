class Url < ApplicationRecord
    belongs_to :category, optional: true
end
