class User < ApplicationRecord
    has_secure_password

    validates :username, uniqueness: true
    
    has_one :cart
    has_one :store 
end
