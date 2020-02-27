class Product < ApplicationRecord
    belongs_to :cart, optional: true
    belongs_to :store
end
