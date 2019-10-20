class User < ApplicationRecord
    validates :name, presence: true, length: {maximum: 15}
    validates :email, presence: true,format: {with: /^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/}
    validates :password, length: {in: 8..32}, format: {with: /^[a-zA-Z0-9]+$/}
    validates :password_confirmation, length: {in: 8..32}

    has_secure_password
    
end
