class User < ApplicationRecord
    validates :name, presence: true, length: {maximum: 15}
    validates :email, presence: true,format: {with: /\A\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*\z/}
    validates :password, length: {in: 8..32}, format: {with: /\A(?=.*?[a-z])(?=.*?[A-Z])(?=.*?\d)[a-zA-Z\d]+\z/}
    validates :password_confirmation, length: {in: 8..32}

    has_secure_password
    
    has_many :topics
    
end
