class User < ApplicationRecord
    has_one :cart
    has_one :store 
end
