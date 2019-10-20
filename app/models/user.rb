class User < ApplicationRecord
    validates :name, presence: true, length: {maximum: 15}
    validates :email, presence: true,format: {with: /\A[a-zA-Z0-9.!#$%&'*+\/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*\z/}
    validates :password, length: {in: 8..32}, format: {with: /\A[a-zA-Z0-9]+\z/}
    validates :password_confirmation, length: {in: 8..32}

    has_secure_password
    
end
