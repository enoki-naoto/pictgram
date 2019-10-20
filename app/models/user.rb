class User < ApplicationRecord
    validates :name, presence: true, length: {maximum: 15}
    validates :email, presence: true,format: {with: /[.\s]*@[.\s]*.[.\s]*/}
    validates :pass, length: {in: 8..32}, format: {with: /[a-zA-Z]*/},format: {with: /[0-9]*/}
    validates :password_confirmation, length: {in: 8..32}, format: {with: /[a-zA-Z]*/},format: {with: /[0-9]*/}

    has_secure_password
    
end
